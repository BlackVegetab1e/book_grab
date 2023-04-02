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

class Hand_Angle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hand_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('hand_angle')) {
        this.hand_angle = initObj.hand_angle
      }
      else {
        this.hand_angle = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hand_Angle
    // Check that the constant length array field [hand_angle] has the right length
    if (obj.hand_angle.length !== 6) {
      throw new Error('Unable to serialize array field hand_angle - length must be 6')
    }
    // Serialize message field [hand_angle]
    bufferOffset = _arraySerializer.int16(obj.hand_angle, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hand_Angle
    let len;
    let data = new Hand_Angle(null);
    // Deserialize message field [hand_angle]
    data.hand_angle = _arrayDeserializer.int16(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Hand_Angle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a9a6c1a34f95837a03024846b0ba9d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #设置灵巧手角度，灵巧手有 6 个自由度，从 1~6 分别为小拇指，无名指，中指，食指，大拇指弯曲，大拇指旋转
    
    int16[6] hand_angle	#手指角度数组，范围：0~1000.另外，-1 代表该自由度不执行任何操作，保持当前状态
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Hand_Angle(null);
    if (msg.hand_angle !== undefined) {
      resolved.hand_angle = msg.hand_angle;
    }
    else {
      resolved.hand_angle = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = Hand_Angle;
