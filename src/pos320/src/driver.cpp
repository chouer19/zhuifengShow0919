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
  little_int32_t lat;
  little_int32_t lon;
  little_int32_t height;
  little_int32_t v_n;
  little_int32_t v_e;
  little_int32_t v_earth;
  little_int32_t roll;
  little_int32_t pitch;
  little_uint32_t head;
  little_int16_t a_n;
  little_int16_t a_e;
  little_int16_t a_earth;
  little_int16_t v_roll;
  little_int16_t v_pitch;
  little_int16_t v_head;
  little_uint8_t status;
};


int main(int argc, char **argv)
{
  ros::init(argc, argv, "read_pos320");

  ros::NodeHandle n;

  ros::Publisher pos320_pub = n.advertise<zf_msgs::pos320>("pos320_pose", 1000);

  /// relative to frequency of pos320
  ros::Rate loop_rate(30);

  /// defination of serial port for pos320
  /// set options for pos320_sp
  boost::asio::io_service io;
  boost::asio::serial_port pos320_sp(io,"/dev/ttyUSB0");

  pos320_sp.set_option(boost::asio::serial_port_base::baud_rate(115200));
  pos320_sp.set_option(boost::asio::serial_port_base::character_size(8));
  pos320_sp.set_option(boost::asio::serial_port_base::stop_bits(boost::asio::serial_port_base::stop_bits::one));
  pos320_sp.set_option(boost::asio::serial_port_base::parity(boost::asio::serial_port_base::parity::none));
  pos320_sp.set_option(boost::asio::serial_port_base::flow_control(boost::asio::serial_port_base::flow_control::none));

  zf_msgs::pos320 pos320_data;

  int count = 0;
  while (ros::ok())
  {
    /// read pos32 data from serial port
    unsigned char c = 0;
    boost::asio::read(pos320_sp, boost::asio::buffer(&c, 1));
    if (0xaa != c) {
       continue;
    }
    boost::asio::read(pos320_sp, boost::asio::buffer(&c, 1));
    if (0x55 != c) {
       continue;
    }
    Pos320Struct p;
    boost::asio::read(pos320_sp, boost::asio::buffer(&p, sizeof(p)));

    pos320_data.length= p.length;
    pos320_data.mode  = p.mode;
    pos320_data.time1 = p.time1;
    pos320_data.time2 = p.time2;
    pos320_data.num   = p.num;
    pos320_data.lat   = p.lat;
    pos320_data.lon   = p.lon;
    pos320_data.height= p.height;
    pos320_data.v_n   = p.v_n;
    pos320_data.v_e   = p.v_e;
    pos320_data.v_earth= p.v_earth;
    pos320_data.roll  = p.roll;
    pos320_data.pitch = p.pitch;
    pos320_data.head  = p.head;
    pos320_data.a_n   = p.a_n;
    pos320_data.a_e   = p.a_e;
    pos320_data.a_earth= p.a_earth;
    pos320_data.v_roll= p.v_roll;
    pos320_data.v_pitch= p.v_pitch;
    pos320_data.v_head= p.v_head;
    pos320_data.status= p.status;
    boost::asio::read(pos320_sp, boost::asio::buffer(&c, 1));
    pos320_data.checksum = c;

    pos320_pub.publish(pos320_data);
    ros::spinOnce();

    loop_rate.sleep();
  }


  return 0;
}
