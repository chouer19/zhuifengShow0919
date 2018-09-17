// Generated by gencpp from file zfmsg/CanInfo.msg
// DO NOT EDIT!


#ifndef ZFMSG_MESSAGE_CANINFO_H
#define ZFMSG_MESSAGE_CANINFO_H


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
struct CanInfo_
{
  typedef CanInfo_<ContainerAllocator> Type;

  CanInfo_()
    : header()
    , ts(0)
    , controlMode(0)
    , brakePressure(0.0)
    , brakeSpeed(0.0)
    , targetBrakePressure(0.0)
    , targetBrakeSpeed(0.0)
    , targetBrakePosition(0.0)
    , brakePosition(0.0)
    , breakPedalOn(false)
    , breakMotorCurrent(0.0)
    , breakErrorCode(0)
    , steerAngle(0.0)
    , steerSpeed(0.0)
    , targetSteerAngle(0.0)
    , targetSteerSpeed(0.0)
    , steerMotorTemperature(0.0)
    , steerMotorCurrent(0.0)
    , steerTorque(0.0)
    , resultSetMiddleZero(0.0)
    , steerErrorCode(0)
    , mainMotorSpeed(0.0)
    , mainMotorCurrent(0.0)
    , motorBreakOn(0)
    , throtle(0.0)
    , gear()
    , targetThrotle(0.0)
    , targetGear()
    , gearLeverPosition()
    , mainMotorBreakOn(false)
    , throttleErrorCode(0)  {
    }
  CanInfo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ts(0)
    , controlMode(0)
    , brakePressure(0.0)
    , brakeSpeed(0.0)
    , targetBrakePressure(0.0)
    , targetBrakeSpeed(0.0)
    , targetBrakePosition(0.0)
    , brakePosition(0.0)
    , breakPedalOn(false)
    , breakMotorCurrent(0.0)
    , breakErrorCode(0)
    , steerAngle(0.0)
    , steerSpeed(0.0)
    , targetSteerAngle(0.0)
    , targetSteerSpeed(0.0)
    , steerMotorTemperature(0.0)
    , steerMotorCurrent(0.0)
    , steerTorque(0.0)
    , resultSetMiddleZero(0.0)
    , steerErrorCode(0)
    , mainMotorSpeed(0.0)
    , mainMotorCurrent(0.0)
    , motorBreakOn(0)
    , throtle(0.0)
    , gear(_alloc)
    , targetThrotle(0.0)
    , targetGear(_alloc)
    , gearLeverPosition(_alloc)
    , mainMotorBreakOn(false)
    , throttleErrorCode(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int64_t _ts_type;
  _ts_type ts;

   typedef uint8_t _controlMode_type;
  _controlMode_type controlMode;

   typedef float _brakePressure_type;
  _brakePressure_type brakePressure;

   typedef float _brakeSpeed_type;
  _brakeSpeed_type brakeSpeed;

   typedef float _targetBrakePressure_type;
  _targetBrakePressure_type targetBrakePressure;

   typedef float _targetBrakeSpeed_type;
  _targetBrakeSpeed_type targetBrakeSpeed;

   typedef float _targetBrakePosition_type;
  _targetBrakePosition_type targetBrakePosition;

   typedef float _brakePosition_type;
  _brakePosition_type brakePosition;

   typedef uint8_t _breakPedalOn_type;
  _breakPedalOn_type breakPedalOn;

   typedef float _breakMotorCurrent_type;
  _breakMotorCurrent_type breakMotorCurrent;

   typedef uint8_t _breakErrorCode_type;
  _breakErrorCode_type breakErrorCode;

   typedef float _steerAngle_type;
  _steerAngle_type steerAngle;

   typedef float _steerSpeed_type;
  _steerSpeed_type steerSpeed;

   typedef float _targetSteerAngle_type;
  _targetSteerAngle_type targetSteerAngle;

   typedef float _targetSteerSpeed_type;
  _targetSteerSpeed_type targetSteerSpeed;

   typedef float _steerMotorTemperature_type;
  _steerMotorTemperature_type steerMotorTemperature;

   typedef float _steerMotorCurrent_type;
  _steerMotorCurrent_type steerMotorCurrent;

   typedef float _steerTorque_type;
  _steerTorque_type steerTorque;

   typedef float _resultSetMiddleZero_type;
  _resultSetMiddleZero_type resultSetMiddleZero;

   typedef uint8_t _steerErrorCode_type;
  _steerErrorCode_type steerErrorCode;

   typedef float _mainMotorSpeed_type;
  _mainMotorSpeed_type mainMotorSpeed;

   typedef float _mainMotorCurrent_type;
  _mainMotorCurrent_type mainMotorCurrent;

   typedef uint8_t _motorBreakOn_type;
  _motorBreakOn_type motorBreakOn;

   typedef float _throtle_type;
  _throtle_type throtle;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gear_type;
  _gear_type gear;

   typedef float _targetThrotle_type;
  _targetThrotle_type targetThrotle;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _targetGear_type;
  _targetGear_type targetGear;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gearLeverPosition_type;
  _gearLeverPosition_type gearLeverPosition;

   typedef uint8_t _mainMotorBreakOn_type;
  _mainMotorBreakOn_type mainMotorBreakOn;

   typedef uint8_t _throttleErrorCode_type;
  _throttleErrorCode_type throttleErrorCode;





  typedef boost::shared_ptr< ::zfmsg::CanInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zfmsg::CanInfo_<ContainerAllocator> const> ConstPtr;

}; // struct CanInfo_

typedef ::zfmsg::CanInfo_<std::allocator<void> > CanInfo;

typedef boost::shared_ptr< ::zfmsg::CanInfo > CanInfoPtr;
typedef boost::shared_ptr< ::zfmsg::CanInfo const> CanInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zfmsg::CanInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zfmsg::CanInfo_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::zfmsg::CanInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zfmsg::CanInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zfmsg::CanInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zfmsg::CanInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zfmsg::CanInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zfmsg::CanInfo_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zfmsg::CanInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9e711434ed4a101e8ef41cf060e99e89";
  }

  static const char* value(const ::zfmsg::CanInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9e711434ed4a101eULL;
  static const uint64_t static_value2 = 0x8ef41cf060e99e89ULL;
};

template<class ContainerAllocator>
struct DataType< ::zfmsg::CanInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zfmsg/CanInfo";
  }

  static const char* value(const ::zfmsg::CanInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zfmsg::CanInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header      header\n\
int64       ts\n\
uint8       controlMode\n\
float32     brakePressure\n\
float32     brakeSpeed\n\
float32     targetBrakePressure\n\
float32     targetBrakeSpeed\n\
float32      targetBrakePosition\n\
float32       brakePosition\n\
bool 	    breakPedalOn\n\
float32     breakMotorCurrent\n\
uint8       breakErrorCode\n\
\n\
float32     steerAngle\n\
float32     steerSpeed\n\
float32     targetSteerAngle\n\
float32     targetSteerSpeed\n\
float32     steerMotorTemperature\n\
float32     steerMotorCurrent\n\
float32	    steerTorque\n\
float32     resultSetMiddleZero\n\
uint8       steerErrorCode\n\
\n\
\n\
\n\
float32     mainMotorSpeed\n\
float32     mainMotorCurrent\n\
uint8       motorBreakOn\n\
float32     throtle\n\
string      gear\n\
float32     targetThrotle\n\
string      targetGear\n\
string      gearLeverPosition\n\
bool       mainMotorBreakOn\n\
uint8      throttleErrorCode\n\
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

  static const char* value(const ::zfmsg::CanInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zfmsg::CanInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ts);
      stream.next(m.controlMode);
      stream.next(m.brakePressure);
      stream.next(m.brakeSpeed);
      stream.next(m.targetBrakePressure);
      stream.next(m.targetBrakeSpeed);
      stream.next(m.targetBrakePosition);
      stream.next(m.brakePosition);
      stream.next(m.breakPedalOn);
      stream.next(m.breakMotorCurrent);
      stream.next(m.breakErrorCode);
      stream.next(m.steerAngle);
      stream.next(m.steerSpeed);
      stream.next(m.targetSteerAngle);
      stream.next(m.targetSteerSpeed);
      stream.next(m.steerMotorTemperature);
      stream.next(m.steerMotorCurrent);
      stream.next(m.steerTorque);
      stream.next(m.resultSetMiddleZero);
      stream.next(m.steerErrorCode);
      stream.next(m.mainMotorSpeed);
      stream.next(m.mainMotorCurrent);
      stream.next(m.motorBreakOn);
      stream.next(m.throtle);
      stream.next(m.gear);
      stream.next(m.targetThrotle);
      stream.next(m.targetGear);
      stream.next(m.gearLeverPosition);
      stream.next(m.mainMotorBreakOn);
      stream.next(m.throttleErrorCode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CanInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zfmsg::CanInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zfmsg::CanInfo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ts: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ts);
    s << indent << "controlMode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.controlMode);
    s << indent << "brakePressure: ";
    Printer<float>::stream(s, indent + "  ", v.brakePressure);
    s << indent << "brakeSpeed: ";
    Printer<float>::stream(s, indent + "  ", v.brakeSpeed);
    s << indent << "targetBrakePressure: ";
    Printer<float>::stream(s, indent + "  ", v.targetBrakePressure);
    s << indent << "targetBrakeSpeed: ";
    Printer<float>::stream(s, indent + "  ", v.targetBrakeSpeed);
    s << indent << "targetBrakePosition: ";
    Printer<float>::stream(s, indent + "  ", v.targetBrakePosition);
    s << indent << "brakePosition: ";
    Printer<float>::stream(s, indent + "  ", v.brakePosition);
    s << indent << "breakPedalOn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.breakPedalOn);
    s << indent << "breakMotorCurrent: ";
    Printer<float>::stream(s, indent + "  ", v.breakMotorCurrent);
    s << indent << "breakErrorCode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.breakErrorCode);
    s << indent << "steerAngle: ";
    Printer<float>::stream(s, indent + "  ", v.steerAngle);
    s << indent << "steerSpeed: ";
    Printer<float>::stream(s, indent + "  ", v.steerSpeed);
    s << indent << "targetSteerAngle: ";
    Printer<float>::stream(s, indent + "  ", v.targetSteerAngle);
    s << indent << "targetSteerSpeed: ";
    Printer<float>::stream(s, indent + "  ", v.targetSteerSpeed);
    s << indent << "steerMotorTemperature: ";
    Printer<float>::stream(s, indent + "  ", v.steerMotorTemperature);
    s << indent << "steerMotorCurrent: ";
    Printer<float>::stream(s, indent + "  ", v.steerMotorCurrent);
    s << indent << "steerTorque: ";
    Printer<float>::stream(s, indent + "  ", v.steerTorque);
    s << indent << "resultSetMiddleZero: ";
    Printer<float>::stream(s, indent + "  ", v.resultSetMiddleZero);
    s << indent << "steerErrorCode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.steerErrorCode);
    s << indent << "mainMotorSpeed: ";
    Printer<float>::stream(s, indent + "  ", v.mainMotorSpeed);
    s << indent << "mainMotorCurrent: ";
    Printer<float>::stream(s, indent + "  ", v.mainMotorCurrent);
    s << indent << "motorBreakOn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motorBreakOn);
    s << indent << "throtle: ";
    Printer<float>::stream(s, indent + "  ", v.throtle);
    s << indent << "gear: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gear);
    s << indent << "targetThrotle: ";
    Printer<float>::stream(s, indent + "  ", v.targetThrotle);
    s << indent << "targetGear: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.targetGear);
    s << indent << "gearLeverPosition: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gearLeverPosition);
    s << indent << "mainMotorBreakOn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mainMotorBreakOn);
    s << indent << "throttleErrorCode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.throttleErrorCode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZFMSG_MESSAGE_CANINFO_H