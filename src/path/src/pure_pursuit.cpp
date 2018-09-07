#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float32.h"
#include "std_msgs/Int32.h"
#include "nav_msgs/Path.h"
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
bool is_velocity_set = false;

std::vector<geometry_msgs::PoseStamped> waypoints;
geometry_msgs::Pose pose;
double velocity;


void waypointsCallback(const nav_msgs::Path::ConstPtr& msg)
{
  ///
  ROS_INFO("I got waypoints data: ");
  //ROS_INFO(msg->poses);

  waypoints.assign(msg->poses.begin(), msg->poses.end());
  is_waypoints_set = true;
}

void currentPoseCallback(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
  ///
  ROS_INFO("I got current pose data: ");
  //ROS_INFO(msg->pose);

  pose = msg->pose;
  is_pose_set = true;
}

void currentVelocityCallback(const geometry_msgs::TwistStamped::ConstPtr& msg)
{
  ///
  ROS_INFO("I got current velocity data: [%f]", msg->twist.linear.z);

  velocity = msg->twist.linear.x;
  is_velocity_set = false;
}

int getNearestPoint()
{
  int mark = -1;
  double minDis = 9999999;
  int i = 0;
  double curDis = 0;
  for(std::vector<geometry_msgs::PoseStamped>::iterator it = waypoints.begin(); it != waypoints.end(); ++it,i++)
  {
    curDis = sqrt( pow( pose.position.x - it->pose.position.x,2) + pow( pose.position.y - it->pose.position.y,2) + pow( pose.position.z - it->pose.position.z,2));
    if(curDis < minDis){
      minDis = curDis;
      mark = i;
    }
  }
  return mark;
}

int getTargetPoint(const int mark, double dis)
{
  int target = mark + 1;
  double L = 0;
  while(L > dis && target < waypoints.size())
  {
    L += ( sqrt( pow( waypoints[target].pose.position.x - waypoints[target -1].pose.position.x ,2) + 
         pow(  waypoints[target].pose.position.y - waypoints[target -1].pose.position.y,2) + pow(  waypoints[target].pose.position.z - waypoints[target -1].pose.position.z,2) ) );
    ++target;
  }
  return target;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");

  ros::NodeHandle n;

  ros::Subscriber subWaypoints = n.subscribe("waypoints", 1000, waypointsCallback);
  //ros::Publisher pubWheelSteer = n.advertise<std_msgs::Int32>("wheel_steer", 1000);
  //ros::Subscriber subCurrentPose = n.subscribe("current_pose", 1000, currentPoseCallback);
  ros::Subscriber subCurrentVelocity = n.subscribe("current_velocity", 1000, currentVelocityCallback);

  ros::Publisher pubWheelSteer = n.advertise<std_msgs::Int32>("wheel_steer", 1000);

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
    //if (!is_pose_set || !is_waypoints_set || !is_velocity_set)
    if (!is_waypoints_set || !is_velocity_set)
    {
      ROS_WARN("Necessary topics are not subscribed yet ... ");
      loop_rate.sleep();
      continue;
    }
    is_pose_set = false;
    is_velocity_set = false;
    is_waypoints_set = false;

    /// compute wheel steer
    /// get nearest point and dis
    if( (markPoint = getNearestPoint()) && markPoint == -1 )
    {
      ROS_WARN("No point in waypoints ....... ");
      loop_rate.sleep();
      continue;
    }

    /// get forward dis
    forwardDis = getPreDis(velocity, Lfc);

    /// get target point 
    targetPoint = getTargetPoint(markPoint, forwardDis);

    /// forward ->y, right-> x
    /// two selections
    //alpha = atan( (waypoints[targetPoint].pose.position.y - waypoints[markPoint].pose.position.y) /(waypoints[targetPoint].pose.position.x - waypoints[markPoint].pose.position.x) );
    alpha = atan( (waypoints[targetPoint].pose.position.x - waypoints[markPoint].pose.position.x) /(waypoints[targetPoint].pose.position.y - waypoints[markPoint].pose.position.y) );
    alpha = atan(2.0 * WB * sin(alpha) / forwardDis);

    wheel_steer.data = int(alpha * K_STEER);
    pubWheelSteer.publish(wheel_steer);

    loop_rate.sleep();
  }


  return 0;
}
