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

class Tool_IO_State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Tool_Digital_Input = null;
      this.Tool_Analog_Input = null;
    }
    else {
      if (initObj.hasOwnProperty('Tool_Digital_Input')) {
        this.Tool_Digital_Input = initObj.Tool_Digital_Input
      }
      else {
        this.Tool_Digital_Input = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('Tool_Analog_Input')) {
        this.Tool_Analog_Input = initObj.Tool_Analog_Input
      }
      else {
        this.Tool_Analog_Input = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tool_IO_State
    // Check that the constant length array field [Tool_Digital_Input] has the right length
    if (obj.Tool_Digital_Input.length !== 2) {
      throw new Error('Unable to serialize array field Tool_Digital_Input - length must be 2')
    }
    // Serialize message field [Tool_Digital_Input]
    bufferOffset = _arraySerializer.bool(obj.Tool_Digital_Input, buffer, bufferOffset, 2);
    // Serialize message field [Tool_Analog_Input]
    bufferOffset = _serializer.float32(obj.Tool_Analog_Input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tool_IO_State
    let len;
    let data = new Tool_IO_State(null);
    // Deserialize message field [Tool_Digital_Input]
    data.Tool_Digital_Input = _arrayDeserializer.bool(buffer, bufferOffset, 2)
    // Deserialize message field [Tool_Analog_Input]
    data.Tool_Analog_Input = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Tool_IO_State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7adff68dc996b192b01391906704f92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[2] Tool_Digital_Input
    float32 Tool_Analog_Input
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Tool_IO_State(null);
    if (msg.Tool_Digital_Input !== undefined) {
      resolved.Tool_Digital_Input = msg.Tool_Digital_Input;
    }
    else {
      resolved.Tool_Digital_Input = new Array(2).fill(0)
    }

    if (msg.Tool_Analog_Input !== undefined) {
      resolved.Tool_Analog_Input = msg.Tool_Analog_Input;
    }
    else {
      resolved.Tool_Analog_Input = 0.0
    }

    return resolved;
    }
};

module.exports = Tool_IO_State;
