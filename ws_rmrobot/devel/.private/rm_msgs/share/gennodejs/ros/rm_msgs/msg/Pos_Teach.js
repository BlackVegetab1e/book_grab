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

class Pos_Teach {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.teach_type = null;
      this.direction = null;
      this.v = null;
    }
    else {
      if (initObj.hasOwnProperty('teach_type')) {
        this.teach_type = initObj.teach_type
      }
      else {
        this.teach_type = '';
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = '';
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pos_Teach
    // Serialize message field [teach_type]
    bufferOffset = _serializer.string(obj.teach_type, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.int16(obj.v, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pos_Teach
    let len;
    let data = new Pos_Teach(null);
    // Deserialize message field [teach_type]
    data.teach_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.teach_type.length;
    length += object.direction.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Pos_Teach';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34da3e35edafae2adfbdcd46acdb6bd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string teach_type
    string direction
    int16 v
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pos_Teach(null);
    if (msg.teach_type !== undefined) {
      resolved.teach_type = msg.teach_type;
    }
    else {
      resolved.teach_type = ''
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = ''
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0
    }

    return resolved;
    }
};

module.exports = Pos_Teach;
