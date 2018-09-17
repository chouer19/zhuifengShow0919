# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from zfmsg/CanInfoAW.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class CanInfoAW(genpy.Message):
  _md5sum = "605f4356821f92a8fec1a756259316df"
  _type = "zfmsg/CanInfoAW"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
string tm
int32 devmode
int32 drvcontmode
int32 drvoverridemode
int32 drvservo
int32 drivepedal
int32 targetpedalstr
int32 inputpedalstr
float64 targetveloc
float64 speed
int32 driveshift
int32 targetshift
int32 inputshift
int32 strmode
int32 strcontmode
int32 stroverridemode
int32 strservo
int32 targettorque
int32 torque
float64 angle
float64 targetangle
int32 bbrakepress
int32 brakepedal
int32 brtargetpedalstr
int32 brinputpedalstr
float64 battery
int32 voltage
float64 anp
int32 battmaxtemparature
int32 battmintemparature
float64 maxchgcurrent
float64 maxdischgcurrent
float64 sideacc
float64 accellfromp
float64 anglefromp
float64 brakepedalfromp
float64 speedfr
float64 speedfl
float64 speedrr
float64 speedrl
float64 velocfromp2
int32 drvmode
int32 devpedalstrfromp
int32 rpm
float64 velocflfromp
int32 ev_mode
int32 temp
int32 shiftfrmprius
int32 light
int32 gaslevel
int32 door
int32 cluise

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
  __slots__ = ['header','tm','devmode','drvcontmode','drvoverridemode','drvservo','drivepedal','targetpedalstr','inputpedalstr','targetveloc','speed','driveshift','targetshift','inputshift','strmode','strcontmode','stroverridemode','strservo','targettorque','torque','angle','targetangle','bbrakepress','brakepedal','brtargetpedalstr','brinputpedalstr','battery','voltage','anp','battmaxtemparature','battmintemparature','maxchgcurrent','maxdischgcurrent','sideacc','accellfromp','anglefromp','brakepedalfromp','speedfr','speedfl','speedrr','speedrl','velocfromp2','drvmode','devpedalstrfromp','rpm','velocflfromp','ev_mode','temp','shiftfrmprius','light','gaslevel','door','cluise']
  _slot_types = ['std_msgs/Header','string','int32','int32','int32','int32','int32','int32','int32','float64','float64','int32','int32','int32','int32','int32','int32','int32','int32','int32','float64','float64','int32','int32','int32','int32','float64','int32','float64','int32','int32','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','int32','int32','int32','float64','int32','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,tm,devmode,drvcontmode,drvoverridemode,drvservo,drivepedal,targetpedalstr,inputpedalstr,targetveloc,speed,driveshift,targetshift,inputshift,strmode,strcontmode,stroverridemode,strservo,targettorque,torque,angle,targetangle,bbrakepress,brakepedal,brtargetpedalstr,brinputpedalstr,battery,voltage,anp,battmaxtemparature,battmintemparature,maxchgcurrent,maxdischgcurrent,sideacc,accellfromp,anglefromp,brakepedalfromp,speedfr,speedfl,speedrr,speedrl,velocfromp2,drvmode,devpedalstrfromp,rpm,velocflfromp,ev_mode,temp,shiftfrmprius,light,gaslevel,door,cluise

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CanInfoAW, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tm is None:
        self.tm = ''
      if self.devmode is None:
        self.devmode = 0
      if self.drvcontmode is None:
        self.drvcontmode = 0
      if self.drvoverridemode is None:
        self.drvoverridemode = 0
      if self.drvservo is None:
        self.drvservo = 0
      if self.drivepedal is None:
        self.drivepedal = 0
      if self.targetpedalstr is None:
        self.targetpedalstr = 0
      if self.inputpedalstr is None:
        self.inputpedalstr = 0
      if self.targetveloc is None:
        self.targetveloc = 0.
      if self.speed is None:
        self.speed = 0.
      if self.driveshift is None:
        self.driveshift = 0
      if self.targetshift is None:
        self.targetshift = 0
      if self.inputshift is None:
        self.inputshift = 0
      if self.strmode is None:
        self.strmode = 0
      if self.strcontmode is None:
        self.strcontmode = 0
      if self.stroverridemode is None:
        self.stroverridemode = 0
      if self.strservo is None:
        self.strservo = 0
      if self.targettorque is None:
        self.targettorque = 0
      if self.torque is None:
        self.torque = 0
      if self.angle is None:
        self.angle = 0.
      if self.targetangle is None:
        self.targetangle = 0.
      if self.bbrakepress is None:
        self.bbrakepress = 0
      if self.brakepedal is None:
        self.brakepedal = 0
      if self.brtargetpedalstr is None:
        self.brtargetpedalstr = 0
      if self.brinputpedalstr is None:
        self.brinputpedalstr = 0
      if self.battery is None:
        self.battery = 0.
      if self.voltage is None:
        self.voltage = 0
      if self.anp is None:
        self.anp = 0.
      if self.battmaxtemparature is None:
        self.battmaxtemparature = 0
      if self.battmintemparature is None:
        self.battmintemparature = 0
      if self.maxchgcurrent is None:
        self.maxchgcurrent = 0.
      if self.maxdischgcurrent is None:
        self.maxdischgcurrent = 0.
      if self.sideacc is None:
        self.sideacc = 0.
      if self.accellfromp is None:
        self.accellfromp = 0.
      if self.anglefromp is None:
        self.anglefromp = 0.
      if self.brakepedalfromp is None:
        self.brakepedalfromp = 0.
      if self.speedfr is None:
        self.speedfr = 0.
      if self.speedfl is None:
        self.speedfl = 0.
      if self.speedrr is None:
        self.speedrr = 0.
      if self.speedrl is None:
        self.speedrl = 0.
      if self.velocfromp2 is None:
        self.velocfromp2 = 0.
      if self.drvmode is None:
        self.drvmode = 0
      if self.devpedalstrfromp is None:
        self.devpedalstrfromp = 0
      if self.rpm is None:
        self.rpm = 0
      if self.velocflfromp is None:
        self.velocflfromp = 0.
      if self.ev_mode is None:
        self.ev_mode = 0
      if self.temp is None:
        self.temp = 0
      if self.shiftfrmprius is None:
        self.shiftfrmprius = 0
      if self.light is None:
        self.light = 0
      if self.gaslevel is None:
        self.gaslevel = 0
      if self.door is None:
        self.door = 0
      if self.cluise is None:
        self.cluise = 0
    else:
      self.header = std_msgs.msg.Header()
      self.tm = ''
      self.devmode = 0
      self.drvcontmode = 0
      self.drvoverridemode = 0
      self.drvservo = 0
      self.drivepedal = 0
      self.targetpedalstr = 0
      self.inputpedalstr = 0
      self.targetveloc = 0.
      self.speed = 0.
      self.driveshift = 0
      self.targetshift = 0
      self.inputshift = 0
      self.strmode = 0
      self.strcontmode = 0
      self.stroverridemode = 0
      self.strservo = 0
      self.targettorque = 0
      self.torque = 0
      self.angle = 0.
      self.targetangle = 0.
      self.bbrakepress = 0
      self.brakepedal = 0
      self.brtargetpedalstr = 0
      self.brinputpedalstr = 0
      self.battery = 0.
      self.voltage = 0
      self.anp = 0.
      self.battmaxtemparature = 0
      self.battmintemparature = 0
      self.maxchgcurrent = 0.
      self.maxdischgcurrent = 0.
      self.sideacc = 0.
      self.accellfromp = 0.
      self.anglefromp = 0.
      self.brakepedalfromp = 0.
      self.speedfr = 0.
      self.speedfl = 0.
      self.speedrr = 0.
      self.speedrl = 0.
      self.velocfromp2 = 0.
      self.drvmode = 0
      self.devpedalstrfromp = 0
      self.rpm = 0
      self.velocflfromp = 0.
      self.ev_mode = 0
      self.temp = 0
      self.shiftfrmprius = 0
      self.light = 0
      self.gaslevel = 0
      self.door = 0
      self.cluise = 0

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
      _x = self.tm
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7i2d9i2d4idid2i11d3id7i().pack(_x.devmode, _x.drvcontmode, _x.drvoverridemode, _x.drvservo, _x.drivepedal, _x.targetpedalstr, _x.inputpedalstr, _x.targetveloc, _x.speed, _x.driveshift, _x.targetshift, _x.inputshift, _x.strmode, _x.strcontmode, _x.stroverridemode, _x.strservo, _x.targettorque, _x.torque, _x.angle, _x.targetangle, _x.bbrakepress, _x.brakepedal, _x.brtargetpedalstr, _x.brinputpedalstr, _x.battery, _x.voltage, _x.anp, _x.battmaxtemparature, _x.battmintemparature, _x.maxchgcurrent, _x.maxdischgcurrent, _x.sideacc, _x.accellfromp, _x.anglefromp, _x.brakepedalfromp, _x.speedfr, _x.speedfl, _x.speedrr, _x.speedrl, _x.velocfromp2, _x.drvmode, _x.devpedalstrfromp, _x.rpm, _x.velocflfromp, _x.ev_mode, _x.temp, _x.shiftfrmprius, _x.light, _x.gaslevel, _x.door, _x.cluise))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tm = str[start:end].decode('utf-8')
      else:
        self.tm = str[start:end]
      _x = self
      start = end
      end += 276
      (_x.devmode, _x.drvcontmode, _x.drvoverridemode, _x.drvservo, _x.drivepedal, _x.targetpedalstr, _x.inputpedalstr, _x.targetveloc, _x.speed, _x.driveshift, _x.targetshift, _x.inputshift, _x.strmode, _x.strcontmode, _x.stroverridemode, _x.strservo, _x.targettorque, _x.torque, _x.angle, _x.targetangle, _x.bbrakepress, _x.brakepedal, _x.brtargetpedalstr, _x.brinputpedalstr, _x.battery, _x.voltage, _x.anp, _x.battmaxtemparature, _x.battmintemparature, _x.maxchgcurrent, _x.maxdischgcurrent, _x.sideacc, _x.accellfromp, _x.anglefromp, _x.brakepedalfromp, _x.speedfr, _x.speedfl, _x.speedrr, _x.speedrl, _x.velocfromp2, _x.drvmode, _x.devpedalstrfromp, _x.rpm, _x.velocflfromp, _x.ev_mode, _x.temp, _x.shiftfrmprius, _x.light, _x.gaslevel, _x.door, _x.cluise,) = _get_struct_7i2d9i2d4idid2i11d3id7i().unpack(str[start:end])
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
      _x = self.tm
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7i2d9i2d4idid2i11d3id7i().pack(_x.devmode, _x.drvcontmode, _x.drvoverridemode, _x.drvservo, _x.drivepedal, _x.targetpedalstr, _x.inputpedalstr, _x.targetveloc, _x.speed, _x.driveshift, _x.targetshift, _x.inputshift, _x.strmode, _x.strcontmode, _x.stroverridemode, _x.strservo, _x.targettorque, _x.torque, _x.angle, _x.targetangle, _x.bbrakepress, _x.brakepedal, _x.brtargetpedalstr, _x.brinputpedalstr, _x.battery, _x.voltage, _x.anp, _x.battmaxtemparature, _x.battmintemparature, _x.maxchgcurrent, _x.maxdischgcurrent, _x.sideacc, _x.accellfromp, _x.anglefromp, _x.brakepedalfromp, _x.speedfr, _x.speedfl, _x.speedrr, _x.speedrl, _x.velocfromp2, _x.drvmode, _x.devpedalstrfromp, _x.rpm, _x.velocflfromp, _x.ev_mode, _x.temp, _x.shiftfrmprius, _x.light, _x.gaslevel, _x.door, _x.cluise))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tm = str[start:end].decode('utf-8')
      else:
        self.tm = str[start:end]
      _x = self
      start = end
      end += 276
      (_x.devmode, _x.drvcontmode, _x.drvoverridemode, _x.drvservo, _x.drivepedal, _x.targetpedalstr, _x.inputpedalstr, _x.targetveloc, _x.speed, _x.driveshift, _x.targetshift, _x.inputshift, _x.strmode, _x.strcontmode, _x.stroverridemode, _x.strservo, _x.targettorque, _x.torque, _x.angle, _x.targetangle, _x.bbrakepress, _x.brakepedal, _x.brtargetpedalstr, _x.brinputpedalstr, _x.battery, _x.voltage, _x.anp, _x.battmaxtemparature, _x.battmintemparature, _x.maxchgcurrent, _x.maxdischgcurrent, _x.sideacc, _x.accellfromp, _x.anglefromp, _x.brakepedalfromp, _x.speedfr, _x.speedfl, _x.speedrr, _x.speedrl, _x.velocfromp2, _x.drvmode, _x.devpedalstrfromp, _x.rpm, _x.velocflfromp, _x.ev_mode, _x.temp, _x.shiftfrmprius, _x.light, _x.gaslevel, _x.door, _x.cluise,) = _get_struct_7i2d9i2d4idid2i11d3id7i().unpack(str[start:end])
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
_struct_7i2d9i2d4idid2i11d3id7i = None
def _get_struct_7i2d9i2d4idid2i11d3id7i():
    global _struct_7i2d9i2d4idid2i11d3id7i
    if _struct_7i2d9i2d4idid2i11d3id7i is None:
        _struct_7i2d9i2d4idid2i11d3id7i = struct.Struct("<7i2d9i2d4idid2i11d3id7i")
    return _struct_7i2d9i2d4idid2i11d3id7i
