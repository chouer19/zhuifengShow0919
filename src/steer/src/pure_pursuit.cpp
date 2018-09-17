#include "ros/ros.h"
#include "zf_msgs/pos320.h"
#include "zf_msgs/pose2dArray.h"
#include "std_msgs/String.h"
#include "std_msgs/Float32.h"
#include "std_msgs/Int32.h"
#include "geometry_msgs/TwistStamped.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/Pose.h"
#include <cmath>

/**
 * XUECHONG 2018.09.06, pure pursuit path following
 */

/// important parameters, need fine-tuning
const int LOOP_RATE_ = 20;
//wheel base length
const double WB = 2;
//min look ahead distance
const double Lfc = 5;
//wheel steer gain
const int K_STEER = 500;
//look ahead distance
inline double getPreDis(double vel, double lfc){
  double dis = log(1+vel) + vel*0.75 + 2;
  return (dis > lfc) ? dis : lfc;
}

bool is_waypoints_set = false;
bool is_pose_set = false;

zf_msgs::pose2dArray waypoints;
zf_msgs::pos320 pose;

void waypointsCallback(const zf_msgs::pose2dArray msg)
{
  ///
  ROS_INFO("I got waypoints data: ");
  waypoints = msg;
  is_waypoints_set = true;
}

void currentPoseCallback(const zf_msgs::pos320 msg)
{
  ///
  ROS_INFO("I got current pose data: ");
  pose = msg;
  is_pose_set = true;
}

int getTargetPoint(double dis)
{
  int target = 1;
  double L = 0;
  while(L > dis && target < waypoints.points.size())
  {
    L += ( sqrt( pow( waypoints.points[target].x - waypoints.points[target -1].x ,2) + 
                 pow( waypoints.points[target].y - waypoints.points[target -1].y, 2) ) );
    ++target;
  }
  return target;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "pure_pursuit");

  ros::NodeHandle n;

  ros::Subscriber subWaypoints = n.subscribe("gps_waypoints", 1000, waypointsCallback);
  ros::Subscriber subCurrentPose = n.subscribe("pos320_pose", 1000, currentPoseCallback);
  ros::Publisher pubWheelSteer = n.advertise<std_msgs::Int32>("pure_pursuit_steer",1000);

  int markPoint = 0;
  int targetPoint = 0;
  double forwardDis = 0;
  double alpha = 0;
  std_msgs::Int32 wheel_steer;

  geometry_msgs::TwistStamped wheelMsg;

  ROS_INFO_STREAM("pure pursuit start");
  ros::Rate loop_rate(LOOP_RATE_);
  while (ros::ok())
  {
    ros::spinOnce();
    /// check if subscribed data
    /// two selections
    ////if (!is_waypoints_set || !is_pose_set)
    ////{
    ////  ROS_WARN("Necessary topics are not subscribed yet ... ");
    ////  loop_rate.sleep();
    ////  continue;
    ////}
    is_pose_set = false;
    is_waypoints_set = false;

    if(waypoints.points.size() < 10){
        continue;
    }

    /// compute wheel steer
    /// get nearest point and dis
    markPoint = 0;
    targetPoint = 0;

    /// get forward dis
    double velocity = std::sqrt( std::pow(pose.v_e,2) + std::pow(pose.v_n,2) + std::pow(pose.v_earth,2));
    forwardDis = getPreDis(velocity, Lfc);

    /// get target point 
    targetPoint = getTargetPoint(forwardDis);

    /// forward ->y, right-> x
    /// two selections
    //alpha = atan( (waypoints[targetPoint].pose.position.y - waypoints[markPoint].pose.position.y) /(waypoints[targetPoint].pose.position.x - waypoints[markPoint].pose.position.x) );
    alpha = atan( (waypoints.points[targetPoint].y) /(waypoints.points[targetPoint].x) );
    alpha = atan(2.0 * WB * sin(alpha) / forwardDis);

    wheel_steer.data = int(alpha * K_STEER);
    pubWheelSteer.publish(wheel_steer);
    std::cout<< int(alpha * K_STEER) << "\n";

    loop_rate.sleep();
  }


  return 0;
}
