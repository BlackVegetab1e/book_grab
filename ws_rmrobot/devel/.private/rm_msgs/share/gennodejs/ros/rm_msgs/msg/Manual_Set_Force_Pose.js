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

class Manual_Set_Force_Pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Manual_Set_Force_Pose
    // Check that the constant length array field [joint] has the right length
    if (obj.joint.length !== 6) {
      throw new Error('Unable to serialize array field joint - length must be 6')
    }
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.int16(obj.joint, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Manual_Set_Force_Pose
    let len;
    let data = new Manual_Set_Force_Pose(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.int16(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Manual_Set_Force_Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '115602d63d436656f43358faf13c608e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[6] joint
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Manual_Set_Force_Pose(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = Manual_Set_Force_Pose;
