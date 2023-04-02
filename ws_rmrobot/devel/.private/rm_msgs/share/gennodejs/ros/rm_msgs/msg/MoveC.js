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

class MoveC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Mid_Pose = null;
      this.End_Pose = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('Mid_Pose')) {
        this.Mid_Pose = initObj.Mid_Pose
      }
      else {
        this.Mid_Pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('End_Pose')) {
        this.End_Pose = initObj.End_Pose
      }
      else {
        this.End_Pose = new geometry_msgs.msg.Pose();
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
    // Serializes a message object of type MoveC
    // Serialize message field [Mid_Pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.Mid_Pose, buffer, bufferOffset);
    // Serialize message field [End_Pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.End_Pose, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveC
    let len;
    let data = new MoveC(null);
    // Deserialize message field [Mid_Pose]
    data.Mid_Pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [End_Pose]
    data.End_Pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/MoveC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6450bf023cd7a5f30a68c51718bc4f21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose Mid_Pose
    geometry_msgs/Pose End_Pose
    float32 speed
    
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
    const resolved = new MoveC(null);
    if (msg.Mid_Pose !== undefined) {
      resolved.Mid_Pose = geometry_msgs.msg.Pose.Resolve(msg.Mid_Pose)
    }
    else {
      resolved.Mid_Pose = new geometry_msgs.msg.Pose()
    }

    if (msg.End_Pose !== undefined) {
      resolved.End_Pose = geometry_msgs.msg.Pose.Resolve(msg.End_Pose)
    }
    else {
      resolved.End_Pose = new geometry_msgs.msg.Pose()
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

module.exports = MoveC;
