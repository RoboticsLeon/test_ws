
"use strict";

let Altimeter = require('./Altimeter.js');
let MotorCommand = require('./MotorCommand.js');
let Supply = require('./Supply.js');
let RawImu = require('./RawImu.js');
let RawRC = require('./RawRC.js');
let MotorPWM = require('./MotorPWM.js');
let Compass = require('./Compass.js');
let AttitudeCommand = require('./AttitudeCommand.js');
let RawMagnetic = require('./RawMagnetic.js');
let ControllerState = require('./ControllerState.js');
let ServoCommand = require('./ServoCommand.js');
let YawrateCommand = require('./YawrateCommand.js');
let RC = require('./RC.js');
let MotorStatus = require('./MotorStatus.js');
let ThrustCommand = require('./ThrustCommand.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let HeightCommand = require('./HeightCommand.js');
let VelocityXYCommand = require('./VelocityXYCommand.js');
let HeadingCommand = require('./HeadingCommand.js');
let RuddersCommand = require('./RuddersCommand.js');
let PositionXYCommand = require('./PositionXYCommand.js');

module.exports = {
  Altimeter: Altimeter,
  MotorCommand: MotorCommand,
  Supply: Supply,
  RawImu: RawImu,
  RawRC: RawRC,
  MotorPWM: MotorPWM,
  Compass: Compass,
  AttitudeCommand: AttitudeCommand,
  RawMagnetic: RawMagnetic,
  ControllerState: ControllerState,
  ServoCommand: ServoCommand,
  YawrateCommand: YawrateCommand,
  RC: RC,
  MotorStatus: MotorStatus,
  ThrustCommand: ThrustCommand,
  VelocityZCommand: VelocityZCommand,
  HeightCommand: HeightCommand,
  VelocityXYCommand: VelocityXYCommand,
  HeadingCommand: HeadingCommand,
  RuddersCommand: RuddersCommand,
  PositionXYCommand: PositionXYCommand,
};
