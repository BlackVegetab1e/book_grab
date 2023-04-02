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

class Joint_Enable {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_num = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_num')) {
        this.joint_num = initObj.joint_num
      }
      else {
        this.joint_num = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joint_Enable
    // Serialize message field [joint_num]
    bufferOffset = _serializer.uint8(obj.joint_num, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joint_Enable
    let len;
    let data = new Joint_Enable(null);
    // Deserialize message field [joint_num]
    data.joint_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Joint_Enable';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab2d35ff908d2a87842afeb3b5107389';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #对指定关节进行使能操作
    uint8 joint_num     #对应关节序号，从基座到机械臂手爪端，序号依次为1～6
    bool state          #true-上使能，false-掉使能
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joint_Enable(null);
    if (msg.joint_num !== undefined) {
      resolved.joint_num = msg.joint_num;
    }
    else {
      resolved.joint_num = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

module.exports = Joint_Enable;
