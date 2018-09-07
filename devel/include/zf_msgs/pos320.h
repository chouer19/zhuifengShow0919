// Generated by gencpp from file zf_msgs/pos320.msg
// DO NOT EDIT!


#ifndef ZF_MSGS_MESSAGE_POS320_H
#define ZF_MSGS_MESSAGE_POS320_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace zf_msgs
{
template <class ContainerAllocator>
struct pos320_
{
  typedef pos320_<ContainerAllocator> Type;

  pos320_()
    : header()
    , length(0)
    , mode(0)
    , time1(0)
    , time2(0)
    , num(0)
    , lat(0.0)
    , lon(0.0)
    , height(0.0)
    , v_n(0.0)
    , v_e(0.0)
    , v_earth(0.0)
    , roll(0.0)
    , pitch(0.0)
    , head(0.0)
    , a_n(0.0)
    , a_e(0.0)
    , a_earth(0.0)
    , v_roll(0.0)
    , v_pitch(0.0)
    , v_head(0.0)
    , status(0)
    , checksum(0)  {
    }
  pos320_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , length(0)
    , mode(0)
    , time1(0)
    , time2(0)
    , num(0)
    , lat(0.0)
    , lon(0.0)
    , height(0.0)
    , v_n(0.0)
    , v_e(0.0)
    , v_earth(0.0)
    , roll(0.0)
    , pitch(0.0)
    , head(0.0)
    , a_n(0.0)
    , a_e(0.0)
    , a_earth(0.0)
    , v_roll(0.0)
    , v_pitch(0.0)
    , v_head(0.0)
    , status(0)
    , checksum(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _length_type;
  _length_type length;

   typedef uint8_t _mode_type;
  _mode_type mode;

   typedef int16_t _time1_type;
  _time1_type time1;

   typedef int32_t _time2_type;
  _time2_type time2;

   typedef uint8_t _num_type;
  _num_type num;

   typedef double _lat_type;
  _lat_type lat;

   typedef double _lon_type;
  _lon_type lon;

   typedef double _height_type;
  _height_type height;

   typedef double _v_n_type;
  _v_n_type v_n;

   typedef double _v_e_type;
  _v_e_type v_e;

   typedef double _v_earth_type;
  _v_earth_type v_earth;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _head_type;
  _head_type head;

   typedef double _a_n_type;
  _a_n_type a_n;

   typedef double _a_e_type;
  _a_e_type a_e;

   typedef double _a_earth_type;
  _a_earth_type a_earth;

   typedef double _v_roll_type;
  _v_roll_type v_roll;

   typedef double _v_pitch_type;
  _v_pitch_type v_pitch;

   typedef double _v_head_type;
  _v_head_type v_head;

   typedef uint8_t _status_type;
  _status_type status;

   typedef uint8_t _checksum_type;
  _checksum_type checksum;





  typedef boost::shared_ptr< ::zf_msgs::pos320_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zf_msgs::pos320_<ContainerAllocator> const> ConstPtr;

}; // struct pos320_

typedef ::zf_msgs::pos320_<std::allocator<void> > pos320;

typedef boost::shared_ptr< ::zf_msgs::pos320 > pos320Ptr;
typedef boost::shared_ptr< ::zf_msgs::pos320 const> pos320ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zf_msgs::pos320_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zf_msgs::pos320_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace zf_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'zf_msgs': ['/home/xuechong/workspace/ros_ws/zhuifengShow0919/src/zf_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::zf_msgs::pos320_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zf_msgs::pos320_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zf_msgs::pos320_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zf_msgs::pos320_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zf_msgs::pos320_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zf_msgs::pos320_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zf_msgs::pos320_<ContainerAllocator> >
{
  static const char* value()
  {
    return "571ee0d22b8ee598e452ba804a66440e";
  }

  static const char* value(const ::zf_msgs::pos320_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x571ee0d22b8ee598ULL;
  static const uint64_t static_value2 = 0xe452ba804a66440eULL;
};

template<class ContainerAllocator>
struct DataType< ::zf_msgs::pos320_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zf_msgs/pos320";
  }

  static const char* value(const ::zf_msgs::pos320_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zf_msgs::pos320_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
uint8 length\n\
uint8 mode\n\
int16 time1\n\
int32 time2\n\
uint8 num\n\
float64 lat\n\
float64 lon\n\
float64 height\n\
float64 v_n\n\
float64 v_e\n\
float64 v_earth\n\
float64 roll\n\
float64 pitch\n\
float64 head\n\
float64 a_n\n\
float64 a_e\n\
float64 a_earth\n\
float64 v_roll\n\
float64 v_pitch\n\
float64 v_head\n\
uint8 status\n\
uint8 checksum\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::zf_msgs::pos320_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zf_msgs::pos320_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.length);
      stream.next(m.mode);
      stream.next(m.time1);
      stream.next(m.time2);
      stream.next(m.num);
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.height);
      stream.next(m.v_n);
      stream.next(m.v_e);
      stream.next(m.v_earth);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.head);
      stream.next(m.a_n);
      stream.next(m.a_e);
      stream.next(m.a_earth);
      stream.next(m.v_roll);
      stream.next(m.v_pitch);
      stream.next(m.v_head);
      stream.next(m.status);
      stream.next(m.checksum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pos320_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zf_msgs::pos320_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zf_msgs::pos320_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "length: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.length);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
    s << indent << "time1: ";
    Printer<int16_t>::stream(s, indent + "  ", v.time1);
    s << indent << "time2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.time2);
    s << indent << "num: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.num);
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    Printer<double>::stream(s, indent + "  ", v.lon);
    s << indent << "height: ";
    Printer<double>::stream(s, indent + "  ", v.height);
    s << indent << "v_n: ";
    Printer<double>::stream(s, indent + "  ", v.v_n);
    s << indent << "v_e: ";
    Printer<double>::stream(s, indent + "  ", v.v_e);
    s << indent << "v_earth: ";
    Printer<double>::stream(s, indent + "  ", v.v_earth);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "head: ";
    Printer<double>::stream(s, indent + "  ", v.head);
    s << indent << "a_n: ";
    Printer<double>::stream(s, indent + "  ", v.a_n);
    s << indent << "a_e: ";
    Printer<double>::stream(s, indent + "  ", v.a_e);
    s << indent << "a_earth: ";
    Printer<double>::stream(s, indent + "  ", v.a_earth);
    s << indent << "v_roll: ";
    Printer<double>::stream(s, indent + "  ", v.v_roll);
    s << indent << "v_pitch: ";
    Printer<double>::stream(s, indent + "  ", v.v_pitch);
    s << indent << "v_head: ";
    Printer<double>::stream(s, indent + "  ", v.v_head);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "checksum: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.checksum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZF_MSGS_MESSAGE_POS320_H