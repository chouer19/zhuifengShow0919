// Generated by gencpp from file zfmsg/MotionCmd.msg
// DO NOT EDIT!


#ifndef ZFMSG_MESSAGE_MOTIONCMD_H
#define ZFMSG_MESSAGE_MOTIONCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace zfmsg
{
template <class ContainerAllocator>
struct MotionCmd_
{
  typedef MotionCmd_<ContainerAllocator> Type;

  MotionCmd_()
    : header()
    , ts(0)
    , controlMode(0)
    , steer(0.0)
    , breakPressure(0.0)
    , throttle(0.0)
    , gear(0)  {
    }
  MotionCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ts(0)
    , controlMode(0)
    , steer(0.0)
    , breakPressure(0.0)
    , throttle(0.0)
    , gear(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int64_t _ts_type;
  _ts_type ts;

   typedef uint8_t _controlMode_type;
  _controlMode_type controlMode;

   typedef float _steer_type;
  _steer_type steer;

   typedef float _breakPressure_type;
  _breakPressure_type breakPressure;

   typedef float _throttle_type;
  _throttle_type throttle;

   typedef uint8_t _gear_type;
  _gear_type gear;





  typedef boost::shared_ptr< ::zfmsg::MotionCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zfmsg::MotionCmd_<ContainerAllocator> const> ConstPtr;

}; // struct MotionCmd_

typedef ::zfmsg::MotionCmd_<std::allocator<void> > MotionCmd;

typedef boost::shared_ptr< ::zfmsg::MotionCmd > MotionCmdPtr;
typedef boost::shared_ptr< ::zfmsg::MotionCmd const> MotionCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zfmsg::MotionCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zfmsg::MotionCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace zfmsg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'zfmsg': ['/home/zf/xuechong_ws/zhuifengShow0919/src/zfmsg/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::zfmsg::MotionCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zfmsg::MotionCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zfmsg::MotionCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zfmsg::MotionCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zfmsg::MotionCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zfmsg::MotionCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zfmsg::MotionCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a696377e3807ea5be204c7f26e6bdfc6";
  }

  static const char* value(const ::zfmsg::MotionCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa696377e3807ea5bULL;
  static const uint64_t static_value2 = 0xe204c7f26e6bdfc6ULL;
};

template<class ContainerAllocator>
struct DataType< ::zfmsg::MotionCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zfmsg/MotionCmd";
  }

  static const char* value(const ::zfmsg::MotionCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zfmsg::MotionCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header 	    header\n\
int64       ts\n\
uint8       controlMode\n\
float32     steer\n\
float32     breakPressure\n\
float32     throttle\n\
uint8    gear\n\
\n\
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

  static const char* value(const ::zfmsg::MotionCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zfmsg::MotionCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ts);
      stream.next(m.controlMode);
      stream.next(m.steer);
      stream.next(m.breakPressure);
      stream.next(m.throttle);
      stream.next(m.gear);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotionCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zfmsg::MotionCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zfmsg::MotionCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ts: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ts);
    s << indent << "controlMode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.controlMode);
    s << indent << "steer: ";
    Printer<float>::stream(s, indent + "  ", v.steer);
    s << indent << "breakPressure: ";
    Printer<float>::stream(s, indent + "  ", v.breakPressure);
    s << indent << "throttle: ";
    Printer<float>::stream(s, indent + "  ", v.throttle);
    s << indent << "gear: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gear);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZFMSG_MESSAGE_MOTIONCMD_H
