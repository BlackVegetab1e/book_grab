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

class Hand_Posture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posture_num = null;
    }
    else {
      if (initObj.hasOwnProperty('posture_num')) {
        this.posture_num = initObj.posture_num
      }
      else {
        this.posture_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hand_Posture
    // Serialize message field [posture_num]
    bufferOffset = _serializer.uint16(obj.posture_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hand_Posture
    let len;
    let data = new Hand_Posture(null);
    // Deserialize message field [posture_num]
    data.posture_num = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Hand_Posture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86dfac3ab8ac2be02ec067def631c96c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #设置灵巧手手势
    uint16 posture_num         #预先保存在灵巧手内的手势序号，范围：1~40
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Hand_Posture(null);
    if (msg.posture_num !== undefined) {
      resolved.posture_num = msg.posture_num;
    }
    else {
      resolved.posture_num = 0
    }

    return resolved;
    }
};

module.exports = Hand_Posture;
