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

class Hand_Force {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hand_force = null;
    }
    else {
      if (initObj.hasOwnProperty('hand_force')) {
        this.hand_force = initObj.hand_force
      }
      else {
        this.hand_force = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hand_Force
    // Serialize message field [hand_force]
    bufferOffset = _serializer.uint16(obj.hand_force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hand_Force
    let len;
    let data = new Hand_Force(null);
    // Deserialize message field [hand_force]
    data.hand_force = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Hand_Force';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b910d20d2c9bd5f156199fd98e2fdc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #设置灵巧手关节力阈值
    uint16 hand_force         #手指力，范围：1~1000
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Hand_Force(null);
    if (msg.hand_force !== undefined) {
      resolved.hand_force = msg.hand_force;
    }
    else {
      resolved.hand_force = 0
    }

    return resolved;
    }
};

module.exports = Hand_Force;
