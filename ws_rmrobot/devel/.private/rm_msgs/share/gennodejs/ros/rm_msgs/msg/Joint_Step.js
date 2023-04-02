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

class Joint_Step {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_num = null;
      this.step_angle = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_num')) {
        this.joint_num = initObj.joint_num
      }
      else {
        this.joint_num = 0;
      }
      if (initObj.hasOwnProperty('step_angle')) {
        this.step_angle = initObj.step_angle
      }
      else {
        this.step_angle = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Joint_Step
    // Serialize message field [joint_num]
    bufferOffset = _serializer.uint8(obj.joint_num, buffer, bufferOffset);
    // Serialize message field [step_angle]
    bufferOffset = _serializer.float32(obj.step_angle, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Joint_Step
    let len;
    let data = new Joint_Step(null);
    // Deserialize message field [joint_num]
    data.joint_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [step_angle]
    data.step_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Joint_Step';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2dcc5aafa7a7fc210418ee32285e489e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 joint_num
    float32 step_angle
    float32 speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Joint_Step(null);
    if (msg.joint_num !== undefined) {
      resolved.joint_num = msg.joint_num;
    }
    else {
      resolved.joint_num = 0
    }

    if (msg.step_angle !== undefined) {
      resolved.step_angle = msg.step_angle;
    }
    else {
      resolved.step_angle = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

module.exports = Joint_Step;
