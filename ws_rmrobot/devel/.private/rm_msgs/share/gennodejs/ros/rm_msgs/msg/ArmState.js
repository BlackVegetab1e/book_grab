// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ArmState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
      this.Pose = null;
      this.arm_err = null;
      this.sys_err = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('Pose')) {
        this.Pose = initObj.Pose
      }
      else {
        this.Pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('arm_err')) {
        this.arm_err = initObj.arm_err
      }
      else {
        this.arm_err = 0;
      }
      if (initObj.hasOwnProperty('sys_err')) {
        this.sys_err = initObj.sys_err
      }
      else {
        this.sys_err = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmState
    // Check that the constant length array field [joint] has the right length
    if (obj.joint.length !== 6) {
      throw new Error('Unable to serialize array field joint - length must be 6')
    }
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float32(obj.joint, buffer, bufferOffset, 6);
    // Serialize message field [Pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.Pose, buffer, bufferOffset);
    // Serialize message field [arm_err]
    bufferOffset = _serializer.uint16(obj.arm_err, buffer, bufferOffset);
    // Serialize message field [sys_err]
    bufferOffset = _serializer.uint16(obj.sys_err, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmState
    let len;
    let data = new ArmState(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [Pose]
    data.Pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [arm_err]
    data.arm_err = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sys_err]
    data.sys_err = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ArmState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5a77ad1525ad39c09016c8aea0c863f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] joint
    geometry_msgs/Pose Pose
    uint16 arm_err
    uint16 sys_err
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmState(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = new Array(6).fill(0)
    }

    if (msg.Pose !== undefined) {
      resolved.Pose = geometry_msgs.msg.Pose.Resolve(msg.Pose)
    }
    else {
      resolved.Pose = new geometry_msgs.msg.Pose()
    }

    if (msg.arm_err !== undefined) {
      resolved.arm_err = msg.arm_err;
    }
    else {
      resolved.arm_err = 0
    }

    if (msg.sys_err !== undefined) {
      resolved.sys_err = msg.sys_err;
    }
    else {
      resolved.sys_err = 0
    }

    return resolved;
    }
};

module.exports = ArmState;
