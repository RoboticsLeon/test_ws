// Auto-generated. Do not edit!

// (in-package beacon_gazebo_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ReceiverIn {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.time_stamp = null;
      this.rssi = null;
      this.m_rssi = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0.0;
      }
      if (initObj.hasOwnProperty('m_rssi')) {
        this.m_rssi = initObj.m_rssi
      }
      else {
        this.m_rssi = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReceiverIn
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.time(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.float64(obj.rssi, buffer, bufferOffset);
    // Serialize message field [m_rssi]
    bufferOffset = _serializer.float64(obj.m_rssi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReceiverIn
    let len;
    let data = new ReceiverIn(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m_rssi]
    data.m_rssi = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beacon_gazebo_sim/ReceiverIn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cb78d561031d7e03dfaf8eabce68fe2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    time time_stamp
    float64 rssi
    float64 m_rssi
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReceiverIn(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0.0
    }

    if (msg.m_rssi !== undefined) {
      resolved.m_rssi = msg.m_rssi;
    }
    else {
      resolved.m_rssi = 0.0
    }

    return resolved;
    }
};

module.exports = ReceiverIn;
