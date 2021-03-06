# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from zfmsg/ThrottleGearStatus.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class ThrottleGearStatus(genpy.Message):
  _md5sum = "ea7e7f7f909809e23589ebec1a82490c"
  _type = "zfmsg/ThrottleGearStatus"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header      header
int64       ts
uint8       controlMode
float32     motorSpeed
float32     motorCurrent
uint8       motorBreak
float32     throttle
string      gear
string      gearLeverPosition
uint8       pedalBreak
uint8       errorCode

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
  __slots__ = ['header','ts','controlMode','motorSpeed','motorCurrent','motorBreak','throttle','gear','gearLeverPosition','pedalBreak','errorCode']
  _slot_types = ['std_msgs/Header','int64','uint8','float32','float32','uint8','float32','string','string','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ts,controlMode,motorSpeed,motorCurrent,motorBreak,throttle,gear,gearLeverPosition,pedalBreak,errorCode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ThrottleGearStatus, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ts is None:
        self.ts = 0
      if self.controlMode is None:
        self.controlMode = 0
      if self.motorSpeed is None:
        self.motorSpeed = 0.
      if self.motorCurrent is None:
        self.motorCurrent = 0.
      if self.motorBreak is None:
        self.motorBreak = 0
      if self.throttle is None:
        self.throttle = 0.
      if self.gear is None:
        self.gear = ''
      if self.gearLeverPosition is None:
        self.gearLeverPosition = ''
      if self.pedalBreak is None:
        self.pedalBreak = 0
      if self.errorCode is None:
        self.errorCode = 0
    else:
      self.header = std_msgs.msg.Header()
      self.ts = 0
      self.controlMode = 0
      self.motorSpeed = 0.
      self.motorCurrent = 0.
      self.motorBreak = 0
      self.throttle = 0.
      self.gear = ''
      self.gearLeverPosition = ''
      self.pedalBreak = 0
      self.errorCode = 0

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
      buff.write(_get_struct_qB2fBf().pack(_x.ts, _x.controlMode, _x.motorSpeed, _x.motorCurrent, _x.motorBreak, _x.throttle))
      _x = self.gear
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
      buff.write(_get_struct_2B().pack(_x.pedalBreak, _x.errorCode))
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
      end += 22
      (_x.ts, _x.controlMode, _x.motorSpeed, _x.motorCurrent, _x.motorBreak, _x.throttle,) = _get_struct_qB2fBf().unpack(str[start:end])
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
      (_x.pedalBreak, _x.errorCode,) = _get_struct_2B().unpack(str[start:end])
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
      buff.write(_get_struct_qB2fBf().pack(_x.ts, _x.controlMode, _x.motorSpeed, _x.motorCurrent, _x.motorBreak, _x.throttle))
      _x = self.gear
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
      buff.write(_get_struct_2B().pack(_x.pedalBreak, _x.errorCode))
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
      end += 22
      (_x.ts, _x.controlMode, _x.motorSpeed, _x.motorCurrent, _x.motorBreak, _x.throttle,) = _get_struct_qB2fBf().unpack(str[start:end])
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
      (_x.pedalBreak, _x.errorCode,) = _get_struct_2B().unpack(str[start:end])
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
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_qB2fBf = None
def _get_struct_qB2fBf():
    global _struct_qB2fBf
    if _struct_qB2fBf is None:
        _struct_qB2fBf = struct.Struct("<qB2fBf")
    return _struct_qB2fBf
