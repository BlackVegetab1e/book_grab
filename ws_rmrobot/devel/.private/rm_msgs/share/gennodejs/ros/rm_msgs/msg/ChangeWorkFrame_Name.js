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

class ChangeWorkFrame_Name {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.WorkFrame_name = null;
    }
    else {
      if (initObj.hasOwnProperty('WorkFrame_name')) {
        this.WorkFrame_name = initObj.WorkFrame_name
      }
      else {
        this.WorkFrame_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeWorkFrame_Name
    // Serialize message field [WorkFrame_name]
    bufferOffset = _serializer.string(obj.WorkFrame_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeWorkFrame_Name
    let len;
    let data = new ChangeWorkFrame_Name(null);
    // Deserialize message field [WorkFrame_name]
    data.WorkFrame_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.WorkFrame_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ChangeWorkFrame_Name';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58a6b74050d8d3918fe8554a7dbbb407';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string WorkFrame_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeWorkFrame_Name(null);
    if (msg.WorkFrame_name !== undefined) {
      resolved.WorkFrame_name = msg.WorkFrame_name;
    }
    else {
      resolved.WorkFrame_name = ''
    }

    return resolved;
    }
};

module.exports = ChangeWorkFrame_Name;
