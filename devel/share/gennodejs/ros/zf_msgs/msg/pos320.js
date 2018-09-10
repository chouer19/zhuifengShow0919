// Auto-generated. Do not edit!

// (in-package zf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class pos320 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.length = null;
      this.mode = null;
      this.time1 = null;
      this.time2 = null;
      this.num = null;
      this.lat = null;
      this.lon = null;
      this.height = null;
      this.v_n = null;
      this.v_e = null;
      this.v_earth = null;
      this.roll = null;
      this.pitch = null;
      this.head = null;
      this.a_n = null;
      this.a_e = null;
      this.a_earth = null;
      this.v_roll = null;
      this.v_pitch = null;
      this.v_head = null;
      this.status1 = null;
      this.status2 = null;
      this.checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('time1')) {
        this.time1 = initObj.time1
      }
      else {
        this.time1 = 0;
      }
      if (initObj.hasOwnProperty('time2')) {
        this.time2 = initObj.time2
      }
      else {
        this.time2 = 0;
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('v_n')) {
        this.v_n = initObj.v_n
      }
      else {
        this.v_n = 0.0;
      }
      if (initObj.hasOwnProperty('v_e')) {
        this.v_e = initObj.v_e
      }
      else {
        this.v_e = 0.0;
      }
      if (initObj.hasOwnProperty('v_earth')) {
        this.v_earth = initObj.v_earth
      }
      else {
        this.v_earth = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = 0.0;
      }
      if (initObj.hasOwnProperty('a_n')) {
        this.a_n = initObj.a_n
      }
      else {
        this.a_n = 0.0;
      }
      if (initObj.hasOwnProperty('a_e')) {
        this.a_e = initObj.a_e
      }
      else {
        this.a_e = 0.0;
      }
      if (initObj.hasOwnProperty('a_earth')) {
        this.a_earth = initObj.a_earth
      }
      else {
        this.a_earth = 0.0;
      }
      if (initObj.hasOwnProperty('v_roll')) {
        this.v_roll = initObj.v_roll
      }
      else {
        this.v_roll = 0.0;
      }
      if (initObj.hasOwnProperty('v_pitch')) {
        this.v_pitch = initObj.v_pitch
      }
      else {
        this.v_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('v_head')) {
        this.v_head = initObj.v_head
      }
      else {
        this.v_head = 0.0;
      }
      if (initObj.hasOwnProperty('status1')) {
        this.status1 = initObj.status1
      }
      else {
        this.status1 = 0;
      }
      if (initObj.hasOwnProperty('status2')) {
        this.status2 = initObj.status2
      }
      else {
        this.status2 = 0;
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pos320
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint8(obj.length, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [time1]
    bufferOffset = _serializer.int16(obj.time1, buffer, bufferOffset);
    // Serialize message field [time2]
    bufferOffset = _serializer.int32(obj.time2, buffer, bufferOffset);
    // Serialize message field [num]
    bufferOffset = _serializer.uint8(obj.num, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [v_n]
    bufferOffset = _serializer.float64(obj.v_n, buffer, bufferOffset);
    // Serialize message field [v_e]
    bufferOffset = _serializer.float64(obj.v_e, buffer, bufferOffset);
    // Serialize message field [v_earth]
    bufferOffset = _serializer.float64(obj.v_earth, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [head]
    bufferOffset = _serializer.float64(obj.head, buffer, bufferOffset);
    // Serialize message field [a_n]
    bufferOffset = _serializer.float64(obj.a_n, buffer, bufferOffset);
    // Serialize message field [a_e]
    bufferOffset = _serializer.float64(obj.a_e, buffer, bufferOffset);
    // Serialize message field [a_earth]
    bufferOffset = _serializer.float64(obj.a_earth, buffer, bufferOffset);
    // Serialize message field [v_roll]
    bufferOffset = _serializer.float64(obj.v_roll, buffer, bufferOffset);
    // Serialize message field [v_pitch]
    bufferOffset = _serializer.float64(obj.v_pitch, buffer, bufferOffset);
    // Serialize message field [v_head]
    bufferOffset = _serializer.float64(obj.v_head, buffer, bufferOffset);
    // Serialize message field [status1]
    bufferOffset = _serializer.uint8(obj.status1, buffer, bufferOffset);
    // Serialize message field [status2]
    bufferOffset = _serializer.uint8(obj.status2, buffer, bufferOffset);
    // Serialize message field [checksum]
    bufferOffset = _serializer.uint8(obj.checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pos320
    let len;
    let data = new pos320(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time1]
    data.time1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [time2]
    data.time2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num]
    data.num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_n]
    data.v_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_e]
    data.v_e = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_earth]
    data.v_earth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [head]
    data.head = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_n]
    data.a_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_e]
    data.a_e = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_earth]
    data.a_earth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_roll]
    data.v_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_pitch]
    data.v_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_head]
    data.v_head = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status1]
    data.status1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status2]
    data.status2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [checksum]
    data.checksum = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 132;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zf_msgs/pos320';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90a0b5614d459b65b16442e42c81a2f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 length
    uint8 mode
    int16 time1
    int32 time2
    uint8 num
    float64 lat
    float64 lon
    float64 height
    float64 v_n
    float64 v_e
    float64 v_earth
    float64 roll
    float64 pitch
    float64 head
    float64 a_n
    float64 a_e
    float64 a_earth
    float64 v_roll
    float64 v_pitch
    float64 v_head
    uint8 status1
    uint8 status2
    uint8 checksum
    
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
    const resolved = new pos320(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.time1 !== undefined) {
      resolved.time1 = msg.time1;
    }
    else {
      resolved.time1 = 0
    }

    if (msg.time2 !== undefined) {
      resolved.time2 = msg.time2;
    }
    else {
      resolved.time2 = 0
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.v_n !== undefined) {
      resolved.v_n = msg.v_n;
    }
    else {
      resolved.v_n = 0.0
    }

    if (msg.v_e !== undefined) {
      resolved.v_e = msg.v_e;
    }
    else {
      resolved.v_e = 0.0
    }

    if (msg.v_earth !== undefined) {
      resolved.v_earth = msg.v_earth;
    }
    else {
      resolved.v_earth = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.head !== undefined) {
      resolved.head = msg.head;
    }
    else {
      resolved.head = 0.0
    }

    if (msg.a_n !== undefined) {
      resolved.a_n = msg.a_n;
    }
    else {
      resolved.a_n = 0.0
    }

    if (msg.a_e !== undefined) {
      resolved.a_e = msg.a_e;
    }
    else {
      resolved.a_e = 0.0
    }

    if (msg.a_earth !== undefined) {
      resolved.a_earth = msg.a_earth;
    }
    else {
      resolved.a_earth = 0.0
    }

    if (msg.v_roll !== undefined) {
      resolved.v_roll = msg.v_roll;
    }
    else {
      resolved.v_roll = 0.0
    }

    if (msg.v_pitch !== undefined) {
      resolved.v_pitch = msg.v_pitch;
    }
    else {
      resolved.v_pitch = 0.0
    }

    if (msg.v_head !== undefined) {
      resolved.v_head = msg.v_head;
    }
    else {
      resolved.v_head = 0.0
    }

    if (msg.status1 !== undefined) {
      resolved.status1 = msg.status1;
    }
    else {
      resolved.status1 = 0
    }

    if (msg.status2 !== undefined) {
      resolved.status2 = msg.status2;
    }
    else {
      resolved.status2 = 0
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = 0
    }

    return resolved;
    }
};

module.exports = pos320;
