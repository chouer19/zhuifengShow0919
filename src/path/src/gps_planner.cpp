#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float32.h"
#include "std_msgs/Int32.h"
#include "nav_msgs/Path.h"
#include "geometry_msgs/Point.h"
#include "zf_msgs/pos320.h"
#include <cmath>
#include <Eigen/Dense>

/**
 * XUECHONG 2018.09.06, pure pursuit path following
 */

/// earth radius is [m]
const double EARTH_RADIUS = 6371008.8;
const double PI = std::acos(-1);


/// important parameters, need fine-tuning
const int LOOP_RATE_ = 20;
zf_msgs::pos320 cur_pose;

bool is_pose_set = false;

std::vector<geometry_msgs::Point> waypoints;
std::vector<geometry_msgs::Point> road;
geometry_msgs::Point pose;

void LoadMap(){

}

void SmoothMap(){

}


inline Eigen::Vector3d getXYZ(const double &lat, const double &lon){
  Eigen::Vector3d e(std::cos(lat/180.0 * PI) * std::cos(lon), std::cos(lat/180.0 * PI) * std::sin(lon), std::sin(lat/180.0 * PI));
  e[0] *= EARTH_RADIUS;
  e[1] *= EARTH_RADIUS;
  e[2] *= EARTH_RADIUS;
  return e;
}

inline Eigen::Vector3d getXYZe(const double &lat, const double &lon){
  Eigen::Vector3d e(std::cos(lat/180.0 * PI) * std::cos(lon), std::cos(lat/180.0 * PI) * std::sin(lon), std::sin(lat/180.0 * PI));
  return e;
}

//void currentPointCallback(const zf_msgs::pos320::ConstPtr& msg)
void currentPointCallback(const zf_msgs::pos320& msg)
{
  ///
  ROS_INFO("I got current pose data: ");
  //ROS_INFO(msg->pose);
  cur_pose = msg;
  is_pose_set = true;
}


int main(int argc, char **argv)
{
  /// load map



  /// init node
  ros::init(argc, argv, "listener");

  ros::NodeHandle n;


  /// subscribe current pos320 data and update is_pose_set
  ros::Subscriber subCurrentPoint = n.subscribe("current_pose", 1000, currentPointCallback);

  /// publish current path

  /// u relative to v
  ros::Publisher pubWheelSteer = n.advertise<std_msgs::Int32>("wheel_steer", 1000);



  ROS_INFO_STREAM("pure pursuit start");
  ros::Rate loop_rate(LOOP_RATE_);
  while (ros::ok())
  {
    ros::spinOnce();
    /// check if subscribed data
    /// two selections
    //if (!is_pose_set || !is_waypoints_set || !is_velocity_set)
    if (!is_pose_set)
    {
      ROS_WARN("Necessary topics are not subscribed yet ... ");
      loop_rate.sleep();
      continue;
    }
    is_pose_set = false;

    /// current point n vector is, n is normal vector
    /// computing current faxiangliang, that is current coordinate
    Eigen::Vector3d n_vector = getXYZ(cur_pose.lat, cur_pose.lon);
    /// unit vector of faxiangliang
    Eigen::Vector3d ne_vector = getXYZe(cur_pose.lat, cur_pose.lon);
    /// nn
    Eigen::Vector3d nn_vector(-1 * ne_vector[0],   -1 * ne_vector[1],    (std::pow(ne_vector[0] ,2) + std::pow(ne_vector[1] ,2)) / ne_vector[2] );
    /// 
    Eigen::AngleAxisd rotation(cur_pose.head/ -180.0 * PI , ne_vector);
    Eigen::Vector3d now_forward = rotation * nn_vector;
    now_forward = now_forward.normalized();
  
    rotation = Eigen::AngleAxisd( (90 + cur_pose.head)/ -180.0 * PI , ne_vector);
    Eigen::Vector3d now_right = rotation * nn_vector;
    now_right = now_right.normalized();
  
    for(geometry_msgs::Point &road_point:road){
      Eigen::Vector3d u_vector = getXYZ(road_point.x, road_point.y);
      Eigen::Vector3d u_v = u_vector - n_vector;
      double forward = u_v.dot(now_forward);
      double right = u_v.dot(now_right);
    }

    loop_rate.sleep();
  }


  return 0;
}
