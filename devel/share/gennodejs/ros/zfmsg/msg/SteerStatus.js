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

class SteerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ts = null;
      this.angle = null;
      this.speed = null;
      this.controlMode = null;
      this.targetAngle = null;
      this.targetSpeed = null;
      this.torque = null;
      this.motorCurrent = null;
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
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('controlMode')) {
        this.controlMode = initObj.controlMode
      }
      else {
        this.controlMode = 0;
      }
      if (initObj.hasOwnProperty('targetAngle')) {
        this.targetAngle = initObj.targetAngle
      }
      else {
        this.targetAngle = 0.0;
      }
      if (initObj.hasOwnProperty('targetSpeed')) {
        this.targetSpeed = initObj.targetSpeed
      }
      else {
        this.targetSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = 0.0;
      }
      if (initObj.hasOwnProperty('motorCurrent')) {
        this.motorCurrent = initObj.motorCurrent
      }
      else {
        this.motorCurrent = 0.0;
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
    // Serializes a message object of type SteerStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ts]
    bufferOffset = _serializer.int64(obj.ts, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [controlMode]
    bufferOffset = _serializer.uint8(obj.controlMode, buffer, bufferOffset);
    // Serialize message field [targetAngle]
    bufferOffset = _serializer.float32(obj.targetAngle, buffer, bufferOffset);
    // Serialize message field [targetSpeed]
    bufferOffset = _serializer.float32(obj.targetSpeed, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = _serializer.float32(obj.torque, buffer, bufferOffset);
    // Serialize message field [motorCurrent]
    bufferOffset = _serializer.float32(obj.motorCurrent, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint8(obj.errorCode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteerStatus
    let len;
    let data = new SteerStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ts]
    data.ts = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [controlMode]
    data.controlMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [targetAngle]
    data.targetAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetSpeed]
    data.targetSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motorCurrent]
    data.motorCurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zfmsg/SteerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09559d07e1ca45c09200d89a55db2635';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header      header
    int64       ts
    float32     angle
    float32     speed
    uint8       controlMode
    float32     targetAngle
    float32     targetSpeed
    float32     torque
    float32     motorCurrent
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
    const resolved = new SteerStatus(null);
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

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.controlMode !== undefined) {
      resolved.controlMode = msg.controlMode;
    }
    else {
      resolved.controlMode = 0
    }

    if (msg.targetAngle !== undefined) {
      resolved.targetAngle = msg.targetAngle;
    }
    else {
      resolved.targetAngle = 0.0
    }

    if (msg.targetSpeed !== undefined) {
      resolved.targetSpeed = msg.targetSpeed;
    }
    else {
      resolved.targetSpeed = 0.0
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = 0.0
    }

    if (msg.motorCurrent !== undefined) {
      resolved.motorCurrent = msg.motorCurrent;
    }
    else {
      resolved.motorCurrent = 0.0
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

module.exports = SteerStatus;
