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

class ChangeTool_Name {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.toolname = null;
    }
    else {
      if (initObj.hasOwnProperty('toolname')) {
        this.toolname = initObj.toolname
      }
      else {
        this.toolname = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeTool_Name
    // Serialize message field [toolname]
    bufferOffset = _serializer.string(obj.toolname, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeTool_Name
    let len;
    let data = new ChangeTool_Name(null);
    // Deserialize message field [toolname]
    data.toolname = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.toolname.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ChangeTool_Name';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2709e8bad159c90e287065a72644b48d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string toolname
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeTool_Name(null);
    if (msg.toolname !== undefined) {
      resolved.toolname = msg.toolname;
    }
    else {
      resolved.toolname = ''
    }

    return resolved;
    }
};

module.exports = ChangeTool_Name;
