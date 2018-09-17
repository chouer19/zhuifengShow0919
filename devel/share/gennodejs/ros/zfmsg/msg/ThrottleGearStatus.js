// Auto-generated. Do not edit!

// (in-package zfmsg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ThrottleGearStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ts = null;
      this.controlMode = null;
      this.motorSpeed = null;
      this.motorCurrent = null;
      this.motorBreak = null;
      this.throttle = null;
      this.gear = null;
      this.gearLeverPosition = null;
      this.pedalBreak = null;
      this.errorCode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ts')) {
        this.ts = initObj.ts
      }
      else {
        this.ts = 0;
      }
      if (initObj.hasOwnProperty('controlMode')) {
        this.controlMode = initObj.controlMode
      }
      else {
        this.controlMode = 0;
      }
      if (initObj.hasOwnProperty('motorSpeed')) {
        this.motorSpeed = initObj.motorSpeed
      }
      else {
        this.motorSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('motorCurrent')) {
        this.motorCurrent = initObj.motorCurrent
      }
      else {
        this.motorCurrent = 0.0;
      }
      if (initObj.hasOwnProperty('motorBreak')) {
        this.motorBreak = initObj.motorBreak
      }
      else {
        this.motorBreak = 0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = '';
      }
      if (initObj.hasOwnProperty('gearLeverPosition')) {
        this.gearLeverPosition = initObj.gearLeverPosition
      }
      else {
        this.gearLeverPosition = '';
      }
      if (initObj.hasOwnProperty('pedalBreak')) {
        this.pedalBreak = initObj.pedalBreak
      }
      else {
        this.pedalBreak = 0;
      }
      if (initObj.hasOwnProperty('errorCode')) {
        this.errorCode = initObj.errorCode
      }
      else {
        this.errorCode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrottleGearStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ts]
    bufferOffset = _serializer.int64(obj.ts, buffer, bufferOffset);
    // Serialize message field [controlMode]
    bufferOffset = _serializer.uint8(obj.controlMode, buffer, bufferOffset);
    // Serialize message field [motorSpeed]
    bufferOffset = _serializer.float32(obj.motorSpeed, buffer, bufferOffset);
    // Serialize message field [motorCurrent]
    bufferOffset = _serializer.float32(obj.motorCurrent, buffer, bufferOffset);
    // Serialize message field [motorBreak]
    bufferOffset = _serializer.uint8(obj.motorBreak, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float32(obj.throttle, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.string(obj.gear, buffer, bufferOffset);
    // Serialize message field [gearLeverPosition]
    bufferOffset = _serializer.string(obj.gearLeverPosition, buffer, bufferOffset);
    // Serialize message field [pedalBreak]
    bufferOffset = _serializer.uint8(obj.pedalBreak, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint8(obj.errorCode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleGearStatus
    let len;
    let data = new ThrottleGearStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ts]
    data.ts = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [controlMode]
    data.controlMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motorSpeed]
    data.motorSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motorCurrent]
    data.motorCurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motorBreak]
    data.motorBreak = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gearLeverPosition]
    data.gearLeverPosition = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pedalBreak]
    data.pedalBreak = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.gear.length;
    length += object.gearLeverPosition.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zfmsg/ThrottleGearStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea7e7f7f909809e23589ebec1a82490c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header      header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrottleGearStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ts !== undefined) {
      resolved.ts = msg.ts;
    }
    else {
      resolved.ts = 0
    }

    if (msg.controlMode !== undefined) {
      resolved.controlMode = msg.controlMode;
    }
    else {
      resolved.controlMode = 0
    }

    if (msg.motorSpeed !== undefined) {
      resolved.motorSpeed = msg.motorSpeed;
    }
    else {
      resolved.motorSpeed = 0.0
    }

    if (msg.motorCurrent !== undefined) {
      resolved.motorCurrent = msg.motorCurrent;
    }
    else {
      resolved.motorCurrent = 0.0
    }

    if (msg.motorBreak !== undefined) {
      resolved.motorBreak = msg.motorBreak;
    }
    else {
      resolved.motorBreak = 0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = ''
    }

    if (msg.gearLeverPosition !== undefined) {
      resolved.gearLeverPosition = msg.gearLeverPosition;
    }
    else {
      resolved.gearLeverPosition = ''
    }

    if (msg.pedalBreak !== undefined) {
      resolved.pedalBreak = msg.pedalBreak;
    }
    else {
      resolved.pedalBreak = 0
    }

    if (msg.errorCode !== undefined) {
      resolved.errorCode = msg.errorCode;
    }
    else {
      resolved.errorCode = 0
    }

    return resolved;
    }
};

module.exports = ThrottleGearStatus;
