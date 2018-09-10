#include "ros/ros.h"
#include "std_msgs/String.h"

#include "zf_msgs/pos320.h"

#include <iostream>
#include <sstream>

#include <deque>
#include <boost/bind.hpp>
#include <boost/asio.hpp>
#include <boost/asio/serial_port.hpp>
#include <boost/thread.hpp>
#include <boost/endian/arithmetic.hpp>
#include <boost/asio.hpp>
#include <boost/asio/serial_port.hpp>
#include <boost/optional.hpp>


using namespace boost::endian;
///using namespace Eigen;

struct Pos320Struct {
  little_uint8_t length;
  little_uint8_t mode;
  little_int16_t time1;
  little_int32_t time2;
  little_uint8_t num;
};


int main(int argc, char **argv)
{
  ros::init(argc, argv, "simulator");

  ros::NodeHandle n;

  ros::Publisher pos320_pub = n.advertise<zf_msgs::pos320>("pos320_pose", 1000);

  /// relative to frequency of pos320
  ros::Rate loop_rate(30);

  zf_msgs::pos320 pos320_data;

  int count = 0;
  while (ros::ok())
  {
    pos320_data.lat   = 39.864323;
    pos320_data.lon   = 116.179732;
    pos320_data.v_n   = 0.8;
    pos320_data.v_e   = 0.3;
    pos320_data.v_earth= 0.01;
    pos320_pub.publish(pos320_data);
    ros::spinOnce();

    loop_rate.sleep();
  }

  return 0;
}
