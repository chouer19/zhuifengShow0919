# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from zfmsg/CanInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class CanInfo(genpy.Message):
  _md5sum = "9e711434ed4a101e8ef41cf060e99e89"
  _type = "zfmsg/CanInfo"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header      header
int64       ts
uint8       controlMode
float32     brakePressure
float32     brakeSpeed
float32     targetBrakePressure
float32     targetBrakeSpeed
float32      targetBrakePosition
float32       brakePosition
bool 	    breakPedalOn
float32     breakMotorCurrent
uint8       breakErrorCode

float32     steerAngle
float32     steerSpeed
float32     targetSteerAngle
float32     targetSteerSpeed
float32     steerMotorTemperature
float32     steerMotorCurrent
float32	    steerTorque
float32     resultSetMiddleZero
uint8       steerErrorCode



float32     mainMotorSpeed
float32     mainMotorCurrent
uint8       motorBreakOn
float32     throtle
string      gear
float32     targetThrotle
string      targetGear
string      gearLeverPosition
bool       mainMotorBreakOn
uint8      throttleErrorCode

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['header','ts','controlMode','brakePressure','brakeSpeed','targetBrakePressure','targetBrakeSpeed','targetBrakePosition','brakePosition','breakPedalOn','breakMotorCurrent','breakErrorCode','steerAngle','steerSpeed','targetSteerAngle','targetSteerSpeed','steerMotorTemperature','steerMotorCurrent','steerTorque','resultSetMiddleZero','steerErrorCode','mainMotorSpeed','mainMotorCurrent','motorBreakOn','throtle','gear','targetThrotle','targetGear','gearLeverPosition','mainMotorBreakOn','throttleErrorCode']
  _slot_types = ['std_msgs/Header','int64','uint8','float32','float32','float32','float32','float32','float32','bool','float32','uint8','float32','float32','float32','float32','float32','float32','float32','float32','uint8','float32','float32','uint8','float32','string','float32','string','string','bool','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ts,controlMode,brakePressure,brakeSpeed,targetBrakePressure,targetBrakeSpeed,targetBrakePosition,brakePosition,breakPedalOn,breakMotorCurrent,breakErrorCode,steerAngle,steerSpeed,targetSteerAngle,targetSteerSpeed,steerMotorTemperature,steerMotorCurrent,steerTorque,resultSetMiddleZero,steerErrorCode,mainMotorSpeed,mainMotorCurrent,motorBreakOn,throtle,gear,targetThrotle,targetGear,gearLeverPosition,mainMotorBreakOn,throttleErrorCode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CanInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ts is None:
        self.ts = 0
      if self.controlMode is None:
        self.controlMode = 0
      if self.brakePressure is None:
        self.brakePressure = 0.
      if self.brakeSpeed is None:
        self.brakeSpeed = 0.
      if self.targetBrakePressure is None:
        self.targetBrakePressure = 0.
      if self.targetBrakeSpeed is None:
        self.targetBrakeSpeed = 0.
      if self.targetBrakePosition is None:
        self.targetBrakePosition = 0.
      if self.brakePosition is None:
        self.brakePosition = 0.
      if self.breakPedalOn is None:
        self.breakPedalOn = False
      if self.breakMotorCurrent is None:
        self.breakMotorCurrent = 0.
      if self.breakErrorCode is None:
        self.breakErrorCode = 0
      if self.steerAngle is None:
        self.steerAngle = 0.
      if self.steerSpeed is None:
        self.steerSpeed = 0.
      if self.targetSteerAngle is None:
        self.targetSteerAngle = 0.
      if self.targetSteerSpeed is None:
        self.targetSteerSpeed = 0.
      if self.steerMotorTemperature is None:
        self.steerMotorTemperature = 0.
      if self.steerMotorCurrent is None:
        self.steerMotorCurrent = 0.
      if self.steerTorque is None:
        self.steerTorque = 0.
      if self.resultSetMiddleZero is None:
        self.resultSetMiddleZero = 0.
      if self.steerErrorCode is None:
        self.steerErrorCode = 0
      if self.mainMotorSpeed is None:
        self.mainMotorSpeed = 0.
      if self.mainMotorCurrent is None:
        self.mainMotorCurrent = 0.
      if self.motorBreakOn is None:
        self.motorBreakOn = 0
      if self.throtle is None:
        self.throtle = 0.
      if self.gear is None:
        self.gear = ''
      if self.targetThrotle is None:
        self.targetThrotle = 0.
      if self.targetGear is None:
        self.targetGear = ''
      if self.gearLeverPosition is None:
        self.gearLeverPosition = ''
      if self.mainMotorBreakOn is None:
        self.mainMotorBreakOn = False
      if self.throttleErrorCode is None:
        self.throttleErrorCode = 0
    else:
      self.header = std_msgs.msg.Header()
      self.ts = 0
      self.controlMode = 0
      self.brakePressure = 0.
      self.brakeSpeed = 0.
      self.targetBrakePressure = 0.
      self.targetBrakeSpeed = 0.
      self.targetBrakePosition = 0.
      self.brakePosition = 0.
      self.breakPedalOn = False
      self.breakMotorCurrent = 0.
      self.breakErrorCode = 0
      self.steerAngle = 0.
      self.steerSpeed = 0.
      self.targetSteerAngle = 0.
      self.targetSteerSpeed = 0.
      self.steerMotorTemperature = 0.
      self.steerMotorCurrent = 0.
      self.steerTorque = 0.
      self.resultSetMiddleZero = 0.
      self.steerErrorCode = 0
      self.mainMotorSpeed = 0.
      self.mainMotorCurrent = 0.
      self.motorBreakOn = 0
      self.throtle = 0.
      self.gear = ''
      self.targetThrotle = 0.
      self.targetGear = ''
      self.gearLeverPosition = ''
      self.mainMotorBreakOn = False
      self.throttleErrorCode = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_qB6fBfB8fB2fBf().pack(_x.ts, _x.controlMode, _x.brakePressure, _x.brakeSpeed, _x.targetBrakePressure, _x.targetBrakeSpeed, _x.targetBrakePosition, _x.brakePosition, _x.breakPedalOn, _x.breakMotorCurrent, _x.breakErrorCode, _x.steerAngle, _x.steerSpeed, _x.targetSteerAngle, _x.targetSteerSpeed, _x.steerMotorTemperature, _x.steerMotorCurrent, _x.steerTorque, _x.resultSetMiddleZero, _x.steerErrorCode, _x.mainMotorSpeed, _x.mainMotorCurrent, _x.motorBreakOn, _x.throtle))
      _x = self.gear
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_f().pack(self.targetThrotle))
      _x = self.targetGear
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.gearLeverPosition
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.mainMotorBreakOn, _x.throttleErrorCode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 85
      (_x.ts, _x.controlMode, _x.brakePressure, _x.brakeSpeed, _x.targetBrakePressure, _x.targetBrakeSpeed, _x.targetBrakePosition, _x.brakePosition, _x.breakPedalOn, _x.breakMotorCurrent, _x.breakErrorCode, _x.steerAngle, _x.steerSpeed, _x.targetSteerAngle, _x.targetSteerSpeed, _x.steerMotorTemperature, _x.steerMotorCurrent, _x.steerTorque, _x.resultSetMiddleZero, _x.steerErrorCode, _x.mainMotorSpeed, _x.mainMotorCurrent, _x.motorBreakOn, _x.throtle,) = _get_struct_qB6fBfB8fB2fBf().unpack(str[start:end])
      self.breakPedalOn = bool(self.breakPedalOn)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gear = str[start:end].decode('utf-8')
      else:
        self.gear = str[start:end]
      start = end
      end += 4
      (self.targetThrotle,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.targetGear = str[start:end].decode('utf-8')
      else:
        self.targetGear = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gearLeverPosition = str[start:end].decode('utf-8')
      else:
        self.gearLeverPosition = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.mainMotorBreakOn, _x.throttleErrorCode,) = _get_struct_2B().unpack(str[start:end])
      self.mainMotorBreakOn = bool(self.mainMotorBreakOn)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_qB6fBfB8fB2fBf().pack(_x.ts, _x.controlMode, _x.brakePressure, _x.brakeSpeed, _x.targetBrakePressure, _x.targetBrakeSpeed, _x.targetBrakePosition, _x.brakePosition, _x.breakPedalOn, _x.breakMotorCurrent, _x.breakErrorCode, _x.steerAngle, _x.steerSpeed, _x.targetSteerAngle, _x.targetSteerSpeed, _x.steerMotorTemperature, _x.steerMotorCurrent, _x.steerTorque, _x.resultSetMiddleZero, _x.steerErrorCode, _x.mainMotorSpeed, _x.mainMotorCurrent, _x.motorBreakOn, _x.throtle))
      _x = self.gear
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_f().pack(self.targetThrotle))
      _x = self.targetGear
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.gearLeverPosition
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.mainMotorBreakOn, _x.throttleErrorCode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 85
      (_x.ts, _x.controlMode, _x.brakePressure, _x.brakeSpeed, _x.targetBrakePressure, _x.targetBrakeSpeed, _x.targetBrakePosition, _x.brakePosition, _x.breakPedalOn, _x.breakMotorCurrent, _x.breakErrorCode, _x.steerAngle, _x.steerSpeed, _x.targetSteerAngle, _x.targetSteerSpeed, _x.steerMotorTemperature, _x.steerMotorCurrent, _x.steerTorque, _x.resultSetMiddleZero, _x.steerErrorCode, _x.mainMotorSpeed, _x.mainMotorCurrent, _x.motorBreakOn, _x.throtle,) = _get_struct_qB6fBfB8fB2fBf().unpack(str[start:end])
      self.breakPedalOn = bool(self.breakPedalOn)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gear = str[start:end].decode('utf-8')
      else:
        self.gear = str[start:end]
      start = end
      end += 4
      (self.targetThrotle,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.targetGear = str[start:end].decode('utf-8')
      else:
        self.targetGear = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gearLeverPosition = str[start:end].decode('utf-8')
      else:
        self.gearLeverPosition = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.mainMotorBreakOn, _x.throttleErrorCode,) = _get_struct_2B().unpack(str[start:end])
      self.mainMotorBreakOn = bool(self.mainMotorBreakOn)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_qB6fBfB8fB2fBf = None
def _get_struct_qB6fBfB8fB2fBf():
    global _struct_qB6fBfB8fB2fBf
    if _struct_qB6fBfB8fB2fBf is None:
        _struct_qB6fBfB8fB2fBf = struct.Struct("<qB6fBfB8fB2fBf")
    return _struct_qB6fBfB8fB2fBf
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
