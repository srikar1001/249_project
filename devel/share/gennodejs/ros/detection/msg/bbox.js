// Auto-generated. Do not edit!

// (in-package detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class bbox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x_coord = null;
      this.y_coord = null;
      this.x_extent = null;
      this.y_extent = null;
      this.distance = null;
      this.num = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x_coord')) {
        this.x_coord = initObj.x_coord
      }
      else {
        this.x_coord = [];
      }
      if (initObj.hasOwnProperty('y_coord')) {
        this.y_coord = initObj.y_coord
      }
      else {
        this.y_coord = [];
      }
      if (initObj.hasOwnProperty('x_extent')) {
        this.x_extent = initObj.x_extent
      }
      else {
        this.x_extent = [];
      }
      if (initObj.hasOwnProperty('y_extent')) {
        this.y_extent = initObj.y_extent
      }
      else {
        this.y_extent = [];
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = [];
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bbox
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x_coord]
    bufferOffset = _arraySerializer.int32(obj.x_coord, buffer, bufferOffset, null);
    // Serialize message field [y_coord]
    bufferOffset = _arraySerializer.int32(obj.y_coord, buffer, bufferOffset, null);
    // Serialize message field [x_extent]
    bufferOffset = _arraySerializer.int32(obj.x_extent, buffer, bufferOffset, null);
    // Serialize message field [y_extent]
    bufferOffset = _arraySerializer.int32(obj.y_extent, buffer, bufferOffset, null);
    // Serialize message field [distance]
    bufferOffset = _arraySerializer.float32(obj.distance, buffer, bufferOffset, null);
    // Serialize message field [num]
    bufferOffset = _serializer.int32(obj.num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bbox
    let len;
    let data = new bbox(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_coord]
    data.x_coord = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [y_coord]
    data.y_coord = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [x_extent]
    data.x_extent = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [y_extent]
    data.y_extent = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [distance]
    data.distance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [num]
    data.num = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.x_coord.length;
    length += 4 * object.y_coord.length;
    length += 4 * object.x_extent.length;
    length += 4 * object.y_extent.length;
    length += 4 * object.distance.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'detection/bbox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21b40598f11f486566b15cdf70feebe3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32[] x_coord
    int32[] y_coord
    int32[] x_extent
    int32[] y_extent
    float32[] distance
    int32 num
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bbox(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x_coord !== undefined) {
      resolved.x_coord = msg.x_coord;
    }
    else {
      resolved.x_coord = []
    }

    if (msg.y_coord !== undefined) {
      resolved.y_coord = msg.y_coord;
    }
    else {
      resolved.y_coord = []
    }

    if (msg.x_extent !== undefined) {
      resolved.x_extent = msg.x_extent;
    }
    else {
      resolved.x_extent = []
    }

    if (msg.y_extent !== undefined) {
      resolved.y_extent = msg.y_extent;
    }
    else {
      resolved.y_extent = []
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = []
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    return resolved;
    }
};

module.exports = bbox;
