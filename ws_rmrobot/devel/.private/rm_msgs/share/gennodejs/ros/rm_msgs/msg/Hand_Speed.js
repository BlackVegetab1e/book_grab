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

class Hand_Speed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hand_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('hand_speed')) {
        this.hand_speed = initObj.hand_speed
      }
      else {
        this.hand_speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hand_Speed
    // Serialize message field [hand_speed]
    bufferOffset = _serializer.uint16(obj.hand_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hand_Speed
    let len;
    let data = new Hand_Speed(null);
    // Deserialize message field [hand_speed]
    data.hand_speed = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Hand_Speed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c60da357dfc1989f0a4de469bbeae28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #设置灵巧手关节速度
    uint16 hand_speed         #手指速度，范围：1~1000
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Hand_Speed(null);
    if (msg.hand_speed !== undefined) {
      resolved.hand_speed = msg.hand_speed;
    }
    else {
      resolved.hand_speed = 0
    }

    return resolved;
    }
};

module.exports = Hand_Speed;
