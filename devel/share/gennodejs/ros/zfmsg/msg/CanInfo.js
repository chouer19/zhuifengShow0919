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

class CanInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ts = null;
      this.controlMode = null;
      this.brakePressure = null;
      this.brakeSpeed = null;
      this.targetBrakePressure = null;
      this.targetBrakeSpeed = null;
      this.targetBrakePosition = null;
      this.brakePosition = null;
      this.breakPedalOn = null;
      this.breakMotorCurrent = null;
      this.breakErrorCode = null;
      this.steerAngle = null;
      this.steerSpeed = null;
      this.targetSteerAngle = null;
      this.targetSteerSpeed = null;
      this.steerMotorTemperature = null;
      this.steerMotorCurrent = null;
      this.steerTorque = null;
      this.resultSetMiddleZero = null;
      this.steerErrorCode = null;
      this.mainMotorSpeed = null;
      this.mainMotorCurrent = null;
      this.motorBreakOn = null;
      this.throtle = null;
      this.gear = null;
      this.targetThrotle = null;
      this.targetGear = null;
      this.gearLeverPosition = null;
      this.mainMotorBreakOn = null;
      this.throttleErrorCode = null;
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
      if (initObj.hasOwnProperty('brakePressure')) {
        this.brakePressure = initObj.brakePressure
      }
      else {
        this.brakePressure = 0.0;
      }
      if (initObj.hasOwnProperty('brakeSpeed')) {
        this.brakeSpeed = initObj.brakeSpeed
      }
      else {
        this.brakeSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('targetBrakePressure')) {
        this.targetBrakePressure = initObj.targetBrakePressure
      }
      else {
        this.targetBrakePressure = 0.0;
      }
      if (initObj.hasOwnProperty('targetBrakeSpeed')) {
        this.targetBrakeSpeed = initObj.targetBrakeSpeed
      }
      else {
        this.targetBrakeSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('targetBrakePosition')) {
        this.targetBrakePosition = initObj.targetBrakePosition
      }
      else {
        this.targetBrakePosition = 0.0;
      }
      if (initObj.hasOwnProperty('brakePosition')) {
        this.brakePosition = initObj.brakePosition
      }
      else {
        this.brakePosition = 0.0;
      }
      if (initObj.hasOwnProperty('breakPedalOn')) {
        this.breakPedalOn = initObj.breakPedalOn
      }
      else {
        this.breakPedalOn = false;
      }
      if (initObj.hasOwnProperty('breakMotorCurrent')) {
        this.breakMotorCurrent = initObj.breakMotorCurrent
      }
      else {
        this.breakMotorCurrent = 0.0;
      }
      if (initObj.hasOwnProperty('breakErrorCode')) {
        this.breakErrorCode = initObj.breakErrorCode
      }
      else {
        this.breakErrorCode = 0;
      }
      if (initObj.hasOwnProperty('steerAngle')) {
        this.steerAngle = initObj.steerAngle
      }
      else {
        this.steerAngle = 0.0;
      }
      if (initObj.hasOwnProperty('steerSpeed')) {
        this.steerSpeed = initObj.steerSpeed
      }
      else {
        this.steerSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('targetSteerAngle')) {
        this.targetSteerAngle = initObj.targetSteerAngle
      }
      else {
        this.targetSteerAngle = 0.0;
      }
      if (initObj.hasOwnProperty('targetSteerSpeed')) {
        this.targetSteerSpeed = initObj.targetSteerSpeed
      }
      else {
        this.targetSteerSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('steerMotorTemperature')) {
        this.steerMotorTemperature = initObj.steerMotorTemperature
      }
      else {
        this.steerMotorTemperature = 0.0;
      }
      if (initObj.hasOwnProperty('steerMotorCurrent')) {
        this.steerMotorCurrent = initObj.steerMotorCurrent
      }
      else {
        this.steerMotorCurrent = 0.0;
      }
      if (initObj.hasOwnProperty('steerTorque')) {
        this.steerTorque = initObj.steerTorque
      }
      else {
        this.steerTorque = 0.0;
      }
      if (initObj.hasOwnProperty('resultSetMiddleZero')) {
        this.resultSetMiddleZero = initObj.resultSetMiddleZero
      }
      else {
        this.resultSetMiddleZero = 0.0;
      }
      if (initObj.hasOwnProperty('steerErrorCode')) {
        this.steerErrorCode = initObj.steerErrorCode
      }
      else {
        this.steerErrorCode = 0;
      }
      if (initObj.hasOwnProperty('mainMotorSpeed')) {
        this.mainMotorSpeed = initObj.mainMotorSpeed
      }
      else {
        this.mainMotorSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('mainMotorCurrent')) {
        this.mainMotorCurrent = initObj.mainMotorCurrent
      }
      else {
        this.mainMotorCurrent = 0.0;
      }
      if (initObj.hasOwnProperty('motorBreakOn')) {
        this.motorBreakOn = initObj.motorBreakOn
      }
      else {
        this.motorBreakOn = 0;
      }
      if (initObj.hasOwnProperty('throtle')) {
        this.throtle = initObj.throtle
      }
      else {
        this.throtle = 0.0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = '';
      }
      if (initObj.hasOwnProperty('targetThrotle')) {
        this.targetThrotle = initObj.targetThrotle
      }
      else {
        this.targetThrotle = 0.0;
      }
      if (initObj.hasOwnProperty('targetGear')) {
        this.targetGear = initObj.targetGear
      }
      else {
        this.targetGear = '';
      }
      if (initObj.hasOwnProperty('gearLeverPosition')) {
        this.gearLeverPosition = initObj.gearLeverPosition
      }
      else {
        this.gearLeverPosition = '';
      }
      if (initObj.hasOwnProperty('mainMotorBreakOn')) {
        this.mainMotorBreakOn = initObj.mainMotorBreakOn
      }
      else {
        this.mainMotorBreakOn = false;
      }
      if (initObj.hasOwnProperty('throttleErrorCode')) {
        this.throttleErrorCode = initObj.throttleErrorCode
      }
      else {
        this.throttleErrorCode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CanInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ts]
    bufferOffset = _serializer.int64(obj.ts, buffer, bufferOffset);
    // Serialize message field [controlMode]
    bufferOffset = _serializer.uint8(obj.controlMode, buffer, bufferOffset);
    // Serialize message field [brakePressure]
    bufferOffset = _serializer.float32(obj.brakePressure, buffer, bufferOffset);
    // Serialize message field [brakeSpeed]
    bufferOffset = _serializer.float32(obj.brakeSpeed, buffer, bufferOffset);
    // Serialize message field [targetBrakePressure]
    bufferOffset = _serializer.float32(obj.targetBrakePressure, buffer, bufferOffset);
    // Serialize message field [targetBrakeSpeed]
    bufferOffset = _serializer.float32(obj.targetBrakeSpeed, buffer, bufferOffset);
    // Serialize message field [targetBrakePosition]
    bufferOffset = _serializer.float32(obj.targetBrakePosition, buffer, bufferOffset);
    // Serialize message field [brakePosition]
    bufferOffset = _serializer.float32(obj.brakePosition, buffer, bufferOffset);
    // Serialize message field [breakPedalOn]
    bufferOffset = _serializer.bool(obj.breakPedalOn, buffer, bufferOffset);
    // Serialize message field [breakMotorCurrent]
    bufferOffset = _serializer.float32(obj.breakMotorCurrent, buffer, bufferOffset);
    // Serialize message field [breakErrorCode]
    bufferOffset = _serializer.uint8(obj.breakErrorCode, buffer, bufferOffset);
    // Serialize message field [steerAngle]
    bufferOffset = _serializer.float32(obj.steerAngle, buffer, bufferOffset);
    // Serialize message field [steerSpeed]
    bufferOffset = _serializer.float32(obj.steerSpeed, buffer, bufferOffset);
    // Serialize message field [targetSteerAngle]
    bufferOffset = _serializer.float32(obj.targetSteerAngle, buffer, bufferOffset);
    // Serialize message field [targetSteerSpeed]
    bufferOffset = _serializer.float32(obj.targetSteerSpeed, buffer, bufferOffset);
    // Serialize message field [steerMotorTemperature]
    bufferOffset = _serializer.float32(obj.steerMotorTemperature, buffer, bufferOffset);
    // Serialize message field [steerMotorCurrent]
    bufferOffset = _serializer.float32(obj.steerMotorCurrent, buffer, bufferOffset);
    // Serialize message field [steerTorque]
    bufferOffset = _serializer.float32(obj.steerTorque, buffer, bufferOffset);
    // Serialize message field [resultSetMiddleZero]
    bufferOffset = _serializer.float32(obj.resultSetMiddleZero, buffer, bufferOffset);
    // Serialize message field [steerErrorCode]
    bufferOffset = _serializer.uint8(obj.steerErrorCode, buffer, bufferOffset);
    // Serialize message field [mainMotorSpeed]
    bufferOffset = _serializer.float32(obj.mainMotorSpeed, buffer, bufferOffset);
    // Serialize message field [mainMotorCurrent]
    bufferOffset = _serializer.float32(obj.mainMotorCurrent, buffer, bufferOffset);
    // Serialize message field [motorBreakOn]
    bufferOffset = _serializer.uint8(obj.motorBreakOn, buffer, bufferOffset);
    // Serialize message field [throtle]
    bufferOffset = _serializer.float32(obj.throtle, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.string(obj.gear, buffer, bufferOffset);
    // Serialize message field [targetThrotle]
    bufferOffset = _serializer.float32(obj.targetThrotle, buffer, bufferOffset);
    // Serialize message field [targetGear]
    bufferOffset = _serializer.string(obj.targetGear, buffer, bufferOffset);
    // Serialize message field [gearLeverPosition]
    bufferOffset = _serializer.string(obj.gearLeverPosition, buffer, bufferOffset);
    // Serialize message field [mainMotorBreakOn]
    bufferOffset = _serializer.bool(obj.mainMotorBreakOn, buffer, bufferOffset);
    // Serialize message field [throttleErrorCode]
    bufferOffset = _serializer.uint8(obj.throttleErrorCode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CanInfo
    let len;
    let data = new CanInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ts]
    data.ts = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [controlMode]
    data.controlMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brakePressure]
    data.brakePressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brakeSpeed]
    data.brakeSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetBrakePressure]
    data.targetBrakePressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetBrakeSpeed]
    data.targetBrakeSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetBrakePosition]
    data.targetBrakePosition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brakePosition]
    data.brakePosition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [breakPedalOn]
    data.breakPedalOn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [breakMotorCurrent]
    data.breakMotorCurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [breakErrorCode]
    data.breakErrorCode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steerAngle]
    data.steerAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerSpeed]
    data.steerSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetSteerAngle]
    data.targetSteerAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetSteerSpeed]
    data.targetSteerSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerMotorTemperature]
    data.steerMotorTemperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerMotorCurrent]
    data.steerMotorCurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerTorque]
    data.steerTorque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [resultSetMiddleZero]
    data.resultSetMiddleZero = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerErrorCode]
    data.steerErrorCode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mainMotorSpeed]
    data.mainMotorSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mainMotorCurrent]
    data.mainMotorCurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motorBreakOn]
    data.motorBreakOn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throtle]
    data.throtle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [targetThrotle]
    data.targetThrotle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [targetGear]
    data.targetGear = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gearLeverPosition]
    data.gearLeverPosition = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mainMotorBreakOn]
    data.mainMotorBreakOn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [throttleErrorCode]
    data.throttleErrorCode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.gear.length;
    length += object.targetGear.length;
    length += object.gearLeverPosition.length;
    return length + 103;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zfmsg/CanInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e711434ed4a101e8ef41cf060e99e89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header      header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CanInfo(null);
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

    if (msg.brakePressure !== undefined) {
      resolved.brakePressure = msg.brakePressure;
    }
    else {
      resolved.brakePressure = 0.0
    }

    if (msg.brakeSpeed !== undefined) {
      resolved.brakeSpeed = msg.brakeSpeed;
    }
    else {
      resolved.brakeSpeed = 0.0
    }

    if (msg.targetBrakePressure !== undefined) {
      resolved.targetBrakePressure = msg.targetBrakePressure;
    }
    else {
      resolved.targetBrakePressure = 0.0
    }

    if (msg.targetBrakeSpeed !== undefined) {
      resolved.targetBrakeSpeed = msg.targetBrakeSpeed;
    }
    else {
      resolved.targetBrakeSpeed = 0.0
    }

    if (msg.targetBrakePosition !== undefined) {
      resolved.targetBrakePosition = msg.targetBrakePosition;
    }
    else {
      resolved.targetBrakePosition = 0.0
    }

    if (msg.brakePosition !== undefined) {
      resolved.brakePosition = msg.brakePosition;
    }
    else {
      resolved.brakePosition = 0.0
    }

    if (msg.breakPedalOn !== undefined) {
      resolved.breakPedalOn = msg.breakPedalOn;
    }
    else {
      resolved.breakPedalOn = false
    }

    if (msg.breakMotorCurrent !== undefined) {
      resolved.breakMotorCurrent = msg.breakMotorCurrent;
    }
    else {
      resolved.breakMotorCurrent = 0.0
    }

    if (msg.breakErrorCode !== undefined) {
      resolved.breakErrorCode = msg.breakErrorCode;
    }
    else {
      resolved.breakErrorCode = 0
    }

    if (msg.steerAngle !== undefined) {
      resolved.steerAngle = msg.steerAngle;
    }
    else {
      resolved.steerAngle = 0.0
    }

    if (msg.steerSpeed !== undefined) {
      resolved.steerSpeed = msg.steerSpeed;
    }
    else {
      resolved.steerSpeed = 0.0
    }

    if (msg.targetSteerAngle !== undefined) {
      resolved.targetSteerAngle = msg.targetSteerAngle;
    }
    else {
      resolved.targetSteerAngle = 0.0
    }

    if (msg.targetSteerSpeed !== undefined) {
      resolved.targetSteerSpeed = msg.targetSteerSpeed;
    }
    else {
      resolved.targetSteerSpeed = 0.0
    }

    if (msg.steerMotorTemperature !== undefined) {
      resolved.steerMotorTemperature = msg.steerMotorTemperature;
    }
    else {
      resolved.steerMotorTemperature = 0.0
    }

    if (msg.steerMotorCurrent !== undefined) {
      resolved.steerMotorCurrent = msg.steerMotorCurrent;
    }
    else {
      resolved.steerMotorCurrent = 0.0
    }

    if (msg.steerTorque !== undefined) {
      resolved.steerTorque = msg.steerTorque;
    }
    else {
      resolved.steerTorque = 0.0
    }

    if (msg.resultSetMiddleZero !== undefined) {
      resolved.resultSetMiddleZero = msg.resultSetMiddleZero;
    }
    else {
      resolved.resultSetMiddleZero = 0.0
    }

    if (msg.steerErrorCode !== undefined) {
      resolved.steerErrorCode = msg.steerErrorCode;
    }
    else {
      resolved.steerErrorCode = 0
    }

    if (msg.mainMotorSpeed !== undefined) {
      resolved.mainMotorSpeed = msg.mainMotorSpeed;
    }
    else {
      resolved.mainMotorSpeed = 0.0
    }

    if (msg.mainMotorCurrent !== undefined) {
      resolved.mainMotorCurrent = msg.mainMotorCurrent;
    }
    else {
      resolved.mainMotorCurrent = 0.0
    }

    if (msg.motorBreakOn !== undefined) {
      resolved.motorBreakOn = msg.motorBreakOn;
    }
    else {
      resolved.motorBreakOn = 0
    }

    if (msg.throtle !== undefined) {
      resolved.throtle = msg.throtle;
    }
    else {
      resolved.throtle = 0.0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = ''
    }

    if (msg.targetThrotle !== undefined) {
      resolved.targetThrotle = msg.targetThrotle;
    }
    else {
      resolved.targetThrotle = 0.0
    }

    if (msg.targetGear !== undefined) {
      resolved.targetGear = msg.targetGear;
    }
    else {
      resolved.targetGear = ''
    }

    if (msg.gearLeverPosition !== undefined) {
      resolved.gearLeverPosition = msg.gearLeverPosition;
    }
    else {
      resolved.gearLeverPosition = ''
    }

    if (msg.mainMotorBreakOn !== undefined) {
      resolved.mainMotorBreakOn = msg.mainMotorBreakOn;
    }
    else {
      resolved.mainMotorBreakOn = false
    }

    if (msg.throttleErrorCode !== undefined) {
      resolved.throttleErrorCode = msg.throttleErrorCode;
    }
    else {
      resolved.throttleErrorCode = 0
    }

    return resolved;
    }
};

module.exports = CanInfo;
