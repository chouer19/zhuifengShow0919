#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float32.h"
#include "std_msgs/Int32.h"
#include "nav_msgs/Path.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/PoseArray.h"
#include "geometry_msgs/Pose2D.h"
#include "zf_msgs/pos320.h"
#include "zf_msgs/pose2dArray.h"
#include <cmath>
#include <Eigen/Dense>
#include <iostream>
#include <fstream>

/**
 * XUECHONG 2018.09.06, pure pursuit path following
 * 2018.09.10 version 1.0, completely
 */

/// earth radius is [m]
const double EARTH_RADIUS = 6371008.8;
const double PI = std::acos(-1);

/// important parameters, need fine-tuning
const int LOOP_RATE_ = 20;
zf_msgs::pos320 cur_pose;

bool is_pose_set = false;

/// convert lat,lon to xyz
inline Eigen::Vector3d getXYZ(const double &lat, const double &lon){
  Eigen::Vector3d e(std::cos(lat/180.0 * PI) * std::cos(lon/180 * PI), std::cos(lat/180.0 * PI) * std::sin(lon/180 * PI), std::sin(lat/180.0 * PI));
  e[0] *= EARTH_RADIUS;
  e[1] *= EARTH_RADIUS;
  e[2] *= EARTH_RADIUS;
  return e;
}

inline Eigen::Vector3d getXYZe(const double &lat, const double &lon){
  Eigen::Vector3d e(std::cos(lat/180.0 * PI) * std::cos(lon/180 * PI), std::cos(lat/180.0 * PI) * std::sin(lon/180 * PI), std::sin(lat/180.0 * PI));
  return e;
}

//void currentPointCallback(const zf_msgs::pos320::ConstPtr& msg)
void currentPointCallback(const zf_msgs::pos320& msg)
{
  ///
  //ROS_INFO("I got current pose data: ");
  //ROS_INFO(msg->pose);
  cur_pose = msg;
  //std::cout<< cur_pose.lat << "\t";
  //std::cout<< cur_pose.lon << "\n";
  is_pose_set = true;
}

void loadMap(const std::string &filename, std::vector<Eigen::Vector3d> &map) {
  std::ifstream mapfile(filename);
  double lat, lon;
  while (mapfile >> lat >>lon) {
    map.push_back(getXYZ(lat,lon));
    std::cout<< std::setprecision(10)<< lat << "  " << lon << std::endl;
  }
  std::cout<< map.size() << "\n";
}

int main(int argc, char **argv)
{
  /// load map
  std::vector<Eigen::Vector3d> map;
  loadMap("/home/zf/xuechong_ws/zhuifengShow0919/map/map.txt",map);
  ROS_INFO_STREAM("finished loading map from file");

  /// init node
  ros::init(argc, argv, "path");
  ros::NodeHandle n;
  /// subscribe current pos320 data and update is_pose_set
  ros::Subscriber subCurrentPoint = n.subscribe("pos320_pose", 1000, currentPointCallback);
  /// publish waypoints
  ros::Publisher pubWaypoints = n.advertise<zf_msgs::pose2dArray>("gps_waypoints", 1000);

  ROS_INFO_STREAM("pure pursuit start");
  //ros::Rate loop_rate(LOOP_RATE_);
  ros::Rate loop_rate(20);
  while (ros::ok())
  {
    ros::spinOnce();
    if (!is_pose_set)
    {
      //ROS_WARN("Necessary current pos320 topics are not subscribed yet ... ");
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
    Eigen::Vector3d nn_vector(-1 * ne_vector[0] * std::abs(ne_vector[2]),   -1 * ne_vector[1] * std::abs(ne_vector[2]),    std::abs(std::pow(ne_vector[0] ,2) + std::pow(ne_vector[1] ,2))  );
    /// 
    Eigen::AngleAxisd rotation(cur_pose.head/ -180.0 * PI , ne_vector);
    Eigen::Vector3d now_forward = rotation * nn_vector;
    now_forward = now_forward.normalized();
  
    rotation = Eigen::AngleAxisd( (90 + cur_pose.head)/ -180.0 * PI , ne_vector);
    Eigen::Vector3d now_right = rotation * nn_vector;
    now_right = now_right.normalized();

    double dis = 999;
    int index = 0;
    int mark = 0;
  
    for(Eigen::Vector3d &road_point:map){
      Eigen::Vector3d u_v = road_point - n_vector;
      ///std::cout<< road_point << "\n\n";
      ///std::cout<< n_vector << "\n\n";
      ///std::cout<< u_v << "\n\n";
      double forward = u_v.dot(now_forward);
      double right = u_v.dot(now_right);
      double temp = std::sqrt( std::pow(forward,2) + std::pow(right,2) );
      //if(temp< 20){std::cout<<temp << std::endl;}
      if(temp < dis){
        dis = temp;
        mark = index;
      }
      ++index;
    }
    std::cout<<"nearest index:"<< index << "\n";
    std::cout<<"nearest dis:" << dis << "\n";

    zf_msgs::pose2dArray waypoints;
    index = 0;
    for(int i=mark;i < map.size(); i++){
      Eigen::Vector3d u_v = map[i] - n_vector;
      double forward = u_v.dot(now_forward);
      double right = u_v.dot(now_right);
      double bias = std::sqrt( std::pow(right,2) + std::pow(forward,2) );
      /// distance between points from map must be longer than 0.4 meters
      if(bias - dis < 0.4 )
      {
          continue;
      }
      dis = bias;
      geometry_msgs::Pose2D pp;
      pp.x = right;
      pp.y = forward;
      pp.theta = 0;
      waypoints.points.push_back(pp);
      ++index;
      if(index > 50){break;}
    }
    pubWaypoints.publish(waypoints);
    std::cout<<"planning ..." <<"\n";
    loop_rate.sleep();
  }

  return 0;
}
