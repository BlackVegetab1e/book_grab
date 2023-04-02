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

class Joint_Current {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_current = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_current')) {
        this.joint_current = initObj.joint_current
      }
      else {
        this.joint_current = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joint_Current
    // Check that the constant length array field [joint_current] has the right length
    if (obj.joint_current.length !== 6) {
      throw new Error('Unable to serialize array field joint_current - length must be 6')
    }
    // Serialize message field [joint_current]
    bufferOffset = _arraySerializer.float32(obj.joint_current, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joint_Current
    let len;
    let data = new Joint_Current(null);
    // Deserialize message field [joint_current]
    data.joint_current = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Joint_Current';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '369b310bf518537d26269558081c8067';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] joint_current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joint_Current(null);
    if (msg.joint_current !== undefined) {
      resolved.joint_current = msg.joint_current;
    }
    else {
      resolved.joint_current = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = Joint_Current;
