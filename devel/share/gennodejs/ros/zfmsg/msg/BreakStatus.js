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

class BreakStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ts = null;
      this.controlMode = null;
      this.pressure = null;
      this.speed = null;
      this.targetPressure = null;
      this.targetSpeed = null;
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
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('targetPressure')) {
        this.targetPressure = initObj.targetPressure
      }
      else {
        this.targetPressure = 0.0;
      }
      if (initObj.hasOwnProperty('targetSpeed')) {
        this.targetSpeed = initObj.targetSpeed
      }
      else {
        this.targetSpeed = 0.0;
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
    // Serializes a message object of type BreakStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ts]
    bufferOffset = _serializer.int64(obj.ts, buffer, bufferOffset);
    // Serialize message field [controlMode]
    bufferOffset = _serializer.uint8(obj.controlMode, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _serializer.float32(obj.pressure, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [targetPressure]
    bufferOffset = _serializer.float32(obj.targetPressure, buffer, bufferOffset);
    // Serialize message field [targetSpeed]
    bufferOffset = _serializer.float32(obj.targetSpeed, buffer, bufferOffset);
    // Serialize message field [pedalBreak]
    bufferOffset = _serializer.uint8(obj.pedalBreak, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint8(obj.errorCode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BreakStatus
    let len;
    let data = new BreakStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ts]
    data.ts = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [controlMode]
    data.controlMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetPressure]
    data.targetPressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetSpeed]
    data.targetSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pedalBreak]
    data.pedalBreak = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zfmsg/BreakStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f94464581d3b80147ade7f255eccdd3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header      header
    int64       ts
    uint8       controlMode
    float32     pressure
    float32     speed
    float32     targetPressure
    float32     targetSpeed
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
    const resolved = new BreakStatus(null);
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

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.targetPressure !== undefined) {
      resolved.targetPressure = msg.targetPressure;
    }
    else {
      resolved.targetPressure = 0.0
    }

    if (msg.targetSpeed !== undefined) {
      resolved.targetSpeed = msg.targetSpeed;
    }
    else {
      resolved.targetSpeed = 0.0
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

module.exports = BreakStatus;
