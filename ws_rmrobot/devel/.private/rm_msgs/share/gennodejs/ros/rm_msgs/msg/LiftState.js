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

class LiftState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.height = null;
      this.current = null;
      this.err_flag = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
      if (initObj.hasOwnProperty('err_flag')) {
        this.err_flag = initObj.err_flag
      }
      else {
        this.err_flag = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LiftState
    // Serialize message field [height]
    bufferOffset = _serializer.int16(obj.height, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.int16(obj.current, buffer, bufferOffset);
    // Serialize message field [err_flag]
    bufferOffset = _serializer.uint16(obj.err_flag, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.byte(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiftState
    let len;
    let data = new LiftState(null);
    // Deserialize message field [height]
    data.height = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [err_flag]
    data.err_flag = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.byte(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/LiftState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5ca7de51eef8dade42274475c73f94f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 height	#当前高度
    int16 current	#当前电流
    uint16 err_flag	#驱动错误代码
    byte mode	#当前升降状态，0-空闲，1-正方向速度运动，2-正方向位置运动，3-负方向速度运动，4-负方向位置运动
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LiftState(null);
    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    if (msg.err_flag !== undefined) {
      resolved.err_flag = msg.err_flag;
    }
    else {
      resolved.err_flag = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

module.exports = LiftState;
