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
  std::cout.precision(11);
  ros::init(argc, argv, "driver");

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
  boost::system::error_code ec;
  pos320_sp.open("/dev/ttyUSB0", ec );
  if( !pos320_sp.is_open()){
    std::cout<< "port not opened" << std::endl;
  }
  std::cout<< "port opened" << std::endl;

  zf_msgs::pos320 pos320_data;

  bool is_initialized = false;

  int count = 0;
  while (ros::ok())
  {
    /// read pos32 data from serial port
    unsigned char c = 0;
    boost::asio::read(pos320_sp, boost::asio::buffer(&c, 1));
    if (0xaa != c && !is_initialized) {
       /// initializing
       if(c != 83){
         std::cout<<"Initializing, " << (int)c/ 2 <<"\% completed ......" << std::endl;
       }
       if(c == 200){is_initialized = true;}
       continue;
    }
    boost::asio::read(pos320_sp, boost::asio::buffer(&c, 1));
    if (0x55 != c) {
       continue;
    }
    Pos320Struct p;
    boost::asio::read(pos320_sp, boost::asio::buffer(&p, sizeof(p)));
    double lat;
    boost::asio::read(pos320_sp, boost::asio::buffer(&lat, sizeof(lat)));
    double lon;
    boost::asio::read(pos320_sp, boost::asio::buffer(&lon, sizeof(lon)));
    float height;
    boost::asio::read(pos320_sp, boost::asio::buffer(&height, sizeof(height)));
    float v_n;
    boost::asio::read(pos320_sp, boost::asio::buffer(&v_n, sizeof(v_n)));
    float v_e;
    boost::asio::read(pos320_sp, boost::asio::buffer(&v_e, sizeof(v_e)));
    float v_earth;
    boost::asio::read(pos320_sp, boost::asio::buffer(&v_earth, sizeof(v_earth)));
    float roll;
    boost::asio::read(pos320_sp, boost::asio::buffer(&roll, sizeof(roll)));
    float pitch ;
    boost::asio::read(pos320_sp, boost::asio::buffer(&pitch, sizeof(pitch)));
    float head  ;
    boost::asio::read(pos320_sp, boost::asio::buffer(&head, sizeof(head)));
    short a_n   ;
    boost::asio::read(pos320_sp, boost::asio::buffer(&a_n, sizeof(a_n)));
    short a_e   ;
    boost::asio::read(pos320_sp, boost::asio::buffer(&a_e, sizeof(a_e)));
    short a_earth;
    boost::asio::read(pos320_sp, boost::asio::buffer(&a_earth, sizeof(a_earth)));
    short v_roll;
    boost::asio::read(pos320_sp, boost::asio::buffer(&v_roll, sizeof(v_roll)));
    short v_pitch;
    boost::asio::read(pos320_sp, boost::asio::buffer(&v_pitch, sizeof(v_pitch)));
    short v_head;
    boost::asio::read(pos320_sp, boost::asio::buffer(&v_head, sizeof(v_head)));
    char status;
    boost::asio::read(pos320_sp, boost::asio::buffer(&status, sizeof(status)));
    int status1 = (status & 0xC0) >> 6;
    int status2 = status & 0x3f;
    boost::asio::read(pos320_sp, boost::asio::buffer(&c, 1));
    pos320_data.checksum = c;

    pos320_data.length= int(p.length);
    pos320_data.mode  = p.mode;
    pos320_data.time1 = p.time1;
    pos320_data.time2 = p.time2;
    pos320_data.num   = p.num;
    pos320_data.lat   = lat;
    pos320_data.lon   = lon;
    pos320_data.height= height;
    pos320_data.v_n   = v_n;
    pos320_data.v_e   = v_e;
    pos320_data.v_earth= v_earth;
    pos320_data.roll  = roll;
    pos320_data.pitch = pitch/100;
    pos320_data.head  = head;
    pos320_data.a_n   = a_n;
    pos320_data.a_e   = a_e;
    pos320_data.a_earth= a_earth;
    pos320_data.v_roll= v_roll;
    pos320_data.v_pitch= v_pitch;
    pos320_data.v_head= v_head;
    pos320_data.status1= status1;
    pos320_data.status2= status2;
    pos320_pub.publish(pos320_data);
    ros::spinOnce();
    std::cout<< lat<< "\t"<< lon << "\n";

    loop_rate.sleep();
  }

  return 0;
}
