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

class Turtle_Driver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.robot_mac_address = null;
      this.vx = null;
      this.vy = null;
      this.vtheta = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = '';
      }
      if (initObj.hasOwnProperty('robot_mac_address')) {
        this.robot_mac_address = initObj.robot_mac_address
      }
      else {
        this.robot_mac_address = '';
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vtheta')) {
        this.vtheta = initObj.vtheta
      }
      else {
        this.vtheta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Turtle_Driver
    // Serialize message field [message_type]
    bufferOffset = _serializer.string(obj.message_type, buffer, bufferOffset);
    // Serialize message field [robot_mac_address]
    bufferOffset = _serializer.string(obj.robot_mac_address, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float32(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float32(obj.vy, buffer, bufferOffset);
    // Serialize message field [vtheta]
    bufferOffset = _serializer.float32(obj.vtheta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Turtle_Driver
    let len;
    let data = new Turtle_Driver(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_mac_address]
    data.robot_mac_address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vtheta]
    data.vtheta = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message_type.length;
    length += object.robot_mac_address.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Turtle_Driver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e45b8bb2656522faceb0751bacf648f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #对Turtle海龟底盘的操作
    string message_type     #消息类型,"move"为移动
    string robot_mac_address    #Turtle底盘的MAC地址
    float32 vx    #X轴方向速度
    float32 vy    #Y轴方向速度
    float32 vtheta    #
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Turtle_Driver(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = ''
    }

    if (msg.robot_mac_address !== undefined) {
      resolved.robot_mac_address = msg.robot_mac_address;
    }
    else {
      resolved.robot_mac_address = ''
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vtheta !== undefined) {
      resolved.vtheta = msg.vtheta;
    }
    else {
      resolved.vtheta = 0.0
    }

    return resolved;
    }
};

module.exports = Turtle_Driver;
