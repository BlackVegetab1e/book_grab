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

class Six_Force {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force = null;
    }
    else {
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Six_Force
    // Check that the constant length array field [force] has the right length
    if (obj.force.length !== 6) {
      throw new Error('Unable to serialize array field force - length must be 6')
    }
    // Serialize message field [force]
    bufferOffset = _arraySerializer.float32(obj.force, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Six_Force
    let len;
    let data = new Six_Force(null);
    // Deserialize message field [force]
    data.force = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Six_Force';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfd1d6e819d24bd888c7dcd848ca7122';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] force
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Six_Force(null);
    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = Six_Force;
