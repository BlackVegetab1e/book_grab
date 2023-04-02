// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Joint_Teach {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.teach_joint = null;
      this.direction = null;
      this.v = null;
    }
    else {
      if (initObj.hasOwnProperty('teach_joint')) {
        this.teach_joint = initObj.teach_joint
      }
      else {
        this.teach_joint = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = '';
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joint_Teach
    // Serialize message field [teach_joint]
    bufferOffset = _serializer.int16(obj.teach_joint, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.int16(obj.v, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joint_Teach
    let len;
    let data = new Joint_Teach(null);
    // Deserialize message field [teach_joint]
    data.teach_joint = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.direction.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Joint_Teach';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60cfaf744f64f5ac1ac6f8d51dde58e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 teach_joint
    string direction
    int16 v
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joint_Teach(null);
    if (msg.teach_joint !== undefined) {
      resolved.teach_joint = msg.teach_joint;
    }
    else {
      resolved.teach_joint = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = ''
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0
    }

    return resolved;
    }
};

module.exports = Joint_Teach;
