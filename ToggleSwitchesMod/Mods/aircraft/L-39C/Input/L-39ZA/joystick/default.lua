local cockpit = folder.."../../../Cockpit/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")
local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")

-- L-39ZA

join(res.keyCommands,{

------------------------------------------------
-- Alternate -----------------------------------
------------------------------------------------

{down = iCommandPlaneGearUp, up=device_commands.Button_15, cockpit_device_id = devices.CTRL_INTERFACE, value_up=1 name = _('Landing Gear Handle, Up/Neutral'),	category = _('DCSToggleSwitches')},
{down = iCommandPlaneFlaps,	up = iCommandPlaneFlaps,	value_down = 1,	value_up = 2,	name = _('Alternate Flaps Flight/Takeoff Position'),  category = _('DCSToggleSwitches')},
{down = iCommandPlaneFlaps,	up = iCommandPlaneFlaps,	value_down = 3,	value_up = 2,	name = _('Alternate Flaps Landing Position'), category = _('DCSToggleSwitches')},

------------------------------------------------
-- Cheat -------------------------------------
------------------------------------------------
{down = iCommandEnginesStart,	name = _('Auto Start'),	category = _('Cheat')},
{down = iCommandEnginesStop,	name = _('Auto Stop') ,	category = _('Cheat')},


------------------------------------------------
-- General -------------------------------------
------------------------------------------------
{down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},


------------------------------------------------
-- View Cockpit --------------------------------
------------------------------------------------
{down = iCommandViewCockpitChangeSeat, value_down = 1, name = _('Occupy Seat 1'),	category = _('View Cockpit')},
{down = iCommandViewCockpitChangeSeat, value_down = 2, name = _('Occupy Seat 2'),	category = _('View Cockpit')},
{down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},


------------------------------------------------
-- Flight Control ------------------------------
------------------------------------------------
{	down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Down'),			category = _('Flight Control')},
{	down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Up'),			category = _('Flight Control')},
{	down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),		category = _('Flight Control')},
{	down = iCommandPlaneRightStart,			up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),	category = _('Flight Control')},
{	down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),	category = _('Flight Control')},
{	down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),	category = _('Flight Control')},
-- Trimmer
{	down = iCommandPlaneTrimDown,	up = iCommandPlaneTrimStop,	value_down = 1,	value_up = 0,	name = _('Elevator Trimmer Switch - PULL(CLIMB)'),		category = _('Flight Control')},
{	down = iCommandPlaneTrimUp,		up = iCommandPlaneTrimStop,	value_down = 1,	value_up = 0,	name = _('Elevator Trimmer Switch - PUSH(DESCEND)'),	category = _('Flight Control')},
{	down = iCommandPlaneTrimLeft,	up = iCommandPlaneTrimStop,	value_down = 1,	value_up = 0,	name = _('Aileron Trimmer Switch - LEFT'),				category = _('Flight Control')},
{	down = iCommandPlaneTrimRight,	up = iCommandPlaneTrimStop,	value_down = 1,	value_up = 0,	name = _('Aileron Trimmer Switch - RIGHT'),				category = _('Flight Control')},
{	down = iCommandPlaneTrimCancel,																name = _('Trimmer - Reset Position'),					category = _('Flight Control')},
-- Throttle
{pressed = iCommandThrottleIncrease,	up = iCommandThrottleStop,	name = _('Thrust Smoothly Up'),		category = _('Flight Control')},
{pressed = iCommandThrottleDecrease,	up = iCommandThrottleStop,	name = _('Thrust Smoothly Down'),	category = _('Flight Control')},
{down = iCommandPlaneAUTIncreaseRegime,	name = _('Thrust Step Up'),		category = _('Flight Control')},
{down = iCommandPlaneAUTDecreaseRegime,	name = _('Thrust Step Down'),	category = _('Flight Control')},
{down = iCommandLeftEngineStart,	name = _('Throttle - IDLE'),	category = _('Flight Control')},
{down = iCommandLeftEngineStop,	name = _('Throttle - STOP'),	category = _('Flight Control')},
{down = device_commands.Button_12,	cockpit_device_id = devices.MECHANICS,	value_down = 1.0,	name = _('Throttle Toggle Position - IDLE/STOP'),	category = _('Flight Control')},
{down = iCommandLeftEngineStop,	up = iCommandLeftEngineStart,	name = _("Throttle - Idle/Stop"),	category = _("Engine Control Panel")},
-- Flaps
{down = iCommandPlaneFlaps,	up = iCommandPlaneFlaps,	value_down = 1,	value_up = 4,	name = _('Flaps Flight Position'),	category = _('Flight Control')},
{down = iCommandPlaneFlaps,	up = iCommandPlaneFlaps,	value_down = 2,	value_up = 5,	name = _('Flaps TakeOff Position'),	category = _('Flight Control')},
{down = iCommandPlaneFlaps,	up = iCommandPlaneFlaps,	value_down = 3,	value_up = 6,	name = _('Flaps Landing Position'),	category = _('Flight Control')},
-- Air Brake
{down = iCommandPlaneAirBrake,	up = iCommandPlaneAirBrake,	value_down = 1,	value_up = 0,	name = _('Airbrake Button'),			category = _('Flight Control')},
{down = iCommandPlaneAirBrakeOn,							value_down = 1,					name = _('Airbrake Switch - OPEN'),		category = _('Flight Control')},
{down = iCommandPlaneAirBrakeOff,							value_down = 1,					name = _('Airbrake Switch - CLOSE'),	category = _('Flight Control')},

{down = iCommandNetCrewRequestControl,	name = _('Request Aircraft Control'),	category = _('Flight Control')},

------------------------------------------------
-- Systems -------------------------------------
------------------------------------------------
-- Landing Gear
{down = iCommandPlaneGear,		name = _('Landing Gear Handle, Up/Down'),	category = _('Systems')},
{down = iCommandPlaneGearUp,		name = _('Landing Gear Handle, Up'),		category = _('Systems')},
{down = iCommandPlaneGearDown,	name = _('Landing Gear Handle, Down'),		category = _('Systems')},
{down = device_commands.Button_15, cockpit_device_id = devices.CTRL_INTERFACE, value_down = 1,	name = _('Landing Gear Handle, Neutral'),	category = _('Systems')},
-- Wheel Brake
{down = iCommandPlaneWheelBrakeOn,	up = iCommandPlaneWheelBrakeOff,	name = _('Wheel Brake On'),	category = _('Systems')},
{pressed	= device_commands.Button_18,	cockpit_device_id = devices.CTRL_INTERFACE,	value_pressed = 1,	name = _('Emergency Wheel Brake - Up'),		category = _('Systems')},
{pressed	= device_commands.Button_18,	cockpit_device_id = devices.CTRL_INTERFACE,	value_pressed = -1,	name = _('Emergency Wheel Brake - Down'),	category = _('Systems')},
{down = device_commands.Button_25,		cockpit_device_id = devices.CTRL_INTERFACE,	value_down = 0,		name = _('Parking Brake Off'),				category = _('Systems')},
-- Spotlight
{down = iCommandPlane_SpotSelect_switch,	value_down = 1.0,	name = _('Spotlight Switch - LANDING'),	category = _('Systems')},
{down = iCommandPlane_SpotSelect_switch,	value_down = -1.0,	name = _('Spotlight Switch - TAXI'),	category = _('Systems')},
{down = iCommandPlane_SpotSelect_switch,	value_down = 0.0,	name = _('Spotlight Switch - OFF'),		category = _('Systems')},
-- Cockpit lights
{down = lights_commands.L39C_Command_LightsRedWhite_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Cockpit Lights Switch - RED'),	category = _('Systems')},
{down = lights_commands.L39C_Command_LightsRedWhite_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = -1.0,	name = _('Cockpit Lights Switch - WHITE'),	category = _('Systems')},
{down = lights_commands.L39C_Command_LightsRedWhite_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.0,	name = _('Cockpit Lights Switch - OFF'),	category = _('Systems')},
{pressed = iCommandPlaneConsoleLightsIncrease,	name = _('Cockpit Lights Brightness Rheostat - CW'),	category = _('Systems')},
{pressed = iCommandPlaneConsoleLightsDecrease,	name = _('Cockpit Lights Brightness Rheostat - CCW'),	category = _('Systems')},
{down = lights_commands.L39C_Command_EmergencyLight_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Emergency Cockpit Light Switch'),	category = _('Systems')},
-- Warning lights
{down = lights_commands.L39C_Command_WarningLightsTest_EXT,	up = lights_commands.L39C_Command_WarningLightsTest_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	value_up = 0.0,	name = _('Warning Lights Test Button'),	category = _('Systems')},
{pressed = lights_commands.L39C_Command_WarningLightsBrightness_EXT,	cockpit_device_id = devices.LIGHTS,	value_pressed = 0.5,	name = _('Warning Lights Brightness Rheostat - CW'),	category = _('Systems')},
{pressed = lights_commands.L39C_Command_WarningLightsBrightness_EXT,	cockpit_device_id = devices.LIGHTS,	value_pressed = -0.5,	name = _('Warning Lights Brightness Rheostat - CCW'),	category = _('Systems')},
-- Fuel Shut-Off Lever
{down = iCommandLeftEngineFuelValveShutOff,	name = _('Fuel Shut-Off Lever - SHUT/OPEN'),	category = _('Systems')},
-- Pitot heating system
{down = electric_commands.L39C_Command_LeftPitotHeatingOn_EXT,	up = electric_commands.L39C_Command_LeftPitotHeatingOn_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Left Pitot Heating On Button'),	category = _('Systems')},
{down = electric_commands.L39C_Command_RightPitotHeatingOn_EXT,	up = electric_commands.L39C_Command_RightPitotHeatingOn_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Right Pitot Heating On Button'),	category = _('Systems')},
{down = electric_commands.L39C_Command_LeftPitotHeatingOff_EXT,	up = electric_commands.L39C_Command_LeftPitotHeatingOff_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Left Pitot Heating Off Button'),	category = _('Systems')},
{down = electric_commands.L39C_Command_RightPitotHeatingOff_EXT,	up = electric_commands.L39C_Command_RightPitotHeatingOff_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Right Pitot Heating Off Button'),	category = _('Systems')},
-- Canopy
{down = iCommandPlaneFonar, 					name = _('Canopy Open/Close'),			category = _('Systems')},
{down = iCommandCanopyJettison,	up = iCommandCanopyJettison,	value_down = 1,	value_up = 0,	name = _('Emergency Canopy Jettison Handle'),	category = _('Systems')},
{down = device_commands.Button_13,	cockpit_device_id = devices.MECHANICS,	value_down = 0,	name = _('Canopy Lock Handle - LOCK/OPEN'),		category = _('Systems')},
-- Seat
{down = iCommandPilotSeatAdjustmentUp,		up = iCommandPilotSeatAdjustmentStop, name = _('Seat Adjustment Up'),	category = _('Systems')},
{down = iCommandPilotSeatAdjustmentDown,	up = iCommandPilotSeatAdjustmentStop, name = _('Seat Adjustment Down'),	category = _('Systems')},
-- Hood
{down = device_commands.Button_11,	value_down = -1,	cockpit_device_id = devices.MECHANICS, name = _('Hood - ON/OFF'),	category = _('Systems')},
-- Emergency Systems Controls
{down = device_commands.Button_11,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Emergency Landing Gear Extension Lever - OPEN/CLOSE'),	category = _('Systems')},
{down = device_commands.Button_12,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('Emergency Landing Gear Extension Lever - OPEN'),			category = _('Systems')},
{down = device_commands.Button_12,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Emergency Landing Gear Extension Lever - CLOSE'),			category = _('Systems')},
{down = device_commands.Button_13,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Emergency Flaps Extension Lever - OPEN/CLOSE'),			category = _('Systems')},
{down = device_commands.Button_14,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('Emergency Flaps Extension Lever - OPEN'),					category = _('Systems')},
{down = device_commands.Button_14,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Emergency Flaps Extension Lever - CLOSE'),				category = _('Systems')},
{down = device_commands.Button_15,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('RAT (Emergency Generator) Emergency Lever - OPEN/CLOSE'),	category = _('Systems')},
{down = device_commands.Button_16,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('RAT (Emergency Generator) Emergency Lever - OPEN'),		category = _('Systems')},
{down = device_commands.Button_16,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('RAT (Emergency Generator) Emergency Lever - CLOSE'),		category = _('Systems')},
{down = device_commands.Button_9,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Main and Emergency Hydraulic Systems Interconnection Lever - OPEN/CLOSE'),	category = _('Systems')},
{down = device_commands.Button_10,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('Main and Emergency Hydraulic Systems Interconnection Lever - OPEN'),			category = _('Systems')},
{down = device_commands.Button_10,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Main and Emergency Hydraulic Systems Interconnection Lever - CLOSE'),			category = _('Systems')},
-- Anti-Ice System
{down = device_commands.Button_10,	up = device_commands.Button_10,	cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1,	value_up = 0,	name = _('RIO-3 De-Icing Sensor Heating Circuit Check Button'),	category = _('Systems')},
-- Suit
{pressed = device_commands.Button_17,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = 0.5,	name = _('Suit Ventilation Air Louvre Rheostat - CW'),	category = _('Systems')},
{pressed = device_commands.Button_17,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = -0.5,	name = _('Suit Ventilation Air Louvre Rheostat - CCW'),	category = _('Systems')},
{down = device_commands.Button_18,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,		name = _('Suit Ventilation Mode Switch - AUTO'),		category = _('Systems')},
{down = device_commands.Button_18,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.1,		name = _('Suit Ventilation Mode Switch - HEAT'),		category = _('Systems')},
{down = device_commands.Button_18,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.2,		name = _('Suit Ventilation Mode Switch - COOL'),		category = _('Systems')},
-- ECS
{combos = {{key = '0', reformers = {'RAlt'}}},			down = device_commands.Button_28,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,		name = _('ECS and Pressurization Handle - OFF'),				category = {_('Right Console')}},
{combos = {{key = '0', reformers = {'RCtrl'}}},			down = device_commands.Button_28,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.3,		name = _('ECS and Pressurization Handle - CANOPIES SEALED'),	category = {_('Right Console')}},
{combos = {{key = '0', reformers = {'RShift'}}},		down = device_commands.Button_28,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,		name = _('ECS and Pressurization Handle - ECS ON'),				category = {_('Right Console')}},
{combos = {{key = '9', reformers = {'RShift'}}},		pressed = device_commands.Button_14,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = 0.5,	name = _('ECS and Pressurization Handle - Forward'),			category = {_('Right Console')}},
{combos = {{key = '9', reformers = {'RCtrl'}}},			pressed = device_commands.Button_14,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = -0.5,	name = _('ECS and Pressurization Handle - Backward'),			category = {_('Right Console')}},
-- Failures
{down = device_commands.Button_10,	cockpit_device_id = devices.KPP_1273K,	value_down = 0,	name = _('KPP Pitch Failure Switch - ON/OFF'),	category = _('Systems')},
{down = device_commands.Button_11,	cockpit_device_id = devices.KPP_1273K,	value_down = 0,	name = _('KPP Bank Failure Switch - ON/OFF'),	category = _('Systems')},
{down = device_commands.Button_4,	cockpit_device_id = devices.NPP,		value_down = 0,	name = _('GMC Failure Switch - ON/OFF'),		category = _('Systems')},
{down = RKL_commands.CMD_SET_ARC_FAILURE_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 0,	name = _('ADF Failure Switch - ON/OFF'),	category = _('Systems')},
{down = device_commands.Button_3,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 1,		name = _('Static Pressure Failure Knob - CW'),		category = _('Systems')},
{down = device_commands.Button_3,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = -1,	name = _('Static Pressure Failure Knob - CCW'),		category = _('Systems')},
{down = device_commands.Button_5,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 0.0,	name = _('Static Pressure Failure Knob - ON'),		category = _('Systems')},
{down = device_commands.Button_5,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 0.5,	name = _('Static Pressure Failure Knob - STBY'),	category = _('Systems')},
{down = device_commands.Button_5,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 1.0,	name = _('Static Pressure Failure Knob - FAILURE'),	category = _('Systems')},
{down = device_commands.Button_4,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 1,		name = _('Full Pressure Failure Knob - CW'),		category = _('Systems')},
{down = device_commands.Button_4,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = -1,	name = _('Full Pressure Failure Knob - CCW'),		category = _('Systems')},
{down = device_commands.Button_6,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 0.0,	name = _('Full Pressure Failure Knob - ON'),		category = _('Systems')},
{down = device_commands.Button_6,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 0.5,	name = _('Full Pressure Failure Knob - STBY'),		category = _('Systems')},
{down = device_commands.Button_6,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 1.0,	name = _('Full Pressure Failure Knob - FAILURE'),	category = _('Systems')},
-- Pitot System Selector
{down = device_commands.Button_23,	cockpit_device_id = devices.CTRL_INTERFACE,	value_down = -1,	name = _('Pitot Tube Selector Lever - LEFT/RIGHT'),	category = _('Systems')},
{down = device_commands.Button_23,	cockpit_device_id = devices.CTRL_INTERFACE,	value_down = 0,		name = _('Pitot Tube Selector Lever - RIGHT'),		category = _('Systems')},
{down = device_commands.Button_23,	cockpit_device_id = devices.CTRL_INTERFACE,	value_down = 1,		name = _('Pitot Tube Selector Lever - LEFT'),		category = _('Systems')},
-- SARPP
{down = device_commands.Button_2,	cockpit_device_id = devices.SARPP,	value_down = -1,	name = _('SARPP Flight Recorder Switch - ON/OFF'),	category = _('Systems')},
{down = device_commands.Button_2,	cockpit_device_id = devices.SARPP,	value_down = 0,		name = _('SARPP Flight Recorder Switch - OFF'),		category = _('Systems')},
{down = device_commands.Button_2,	cockpit_device_id = devices.SARPP,	value_down = 1,		name = _('SARPP Flight Recorder Switch - ON'),		category = _('Systems')},
--
{down = iCommandPlaneEject,					name = _('Eject (3 times)'),			category = _('Systems')},




-- Stick
{combos = {{key = 'JOY_BTN2'}},	down = 3022,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1.0,	name = _('Weapon Fire Button Safety'),	category = _('Stick')},
{combos = {{key = 'JOY_BTN1'}},	down = iCommandPlaneFire,	up = iCommandPlaneFireOff,	name = _('Weapon Fire Button'),	category = _('Stick')},


------------------------------------------------
-- ASP-3NMU Gunsight ---------------------------
------------------------------------------------
{down 	= device_commands.Button_15,	cockpit_device_id = devices.ASP_3NM,	value_down = 1, 		name = _('ASP-3NMU Gunsight Mode, GYRO/FIXED'),								category = _('ASP-3NMU Gunsight')},
{down 	= device_commands.Button_13,	cockpit_device_id = devices.ASP_3NM,	value_down = 1, 		name = _('ASP-3NMU Gunsight Fixed Reticle Mask Lever'),						category = _('ASP-3NMU Gunsight')},
{pressed = device_commands.Button_9,	cockpit_device_id = devices.ASP_3NM,	value_pressed = 0.5,	name = _('ASP-3NMU Gunsight Target Wingspan Adjustment Dial, Increase'),	category = _('ASP-3NMU Gunsight')},
{pressed = device_commands.Button_9,	cockpit_device_id = devices.ASP_3NM, 	value_pressed = -0.5,	name = _('ASP-3NMU Gunsight Target Wingspan Adjustment Dial, Decrease'),	category = _('ASP-3NMU Gunsight')},
{pressed = device_commands.Button_5,	cockpit_device_id = devices.ASP_3NM, 	value_pressed = 1.0,	name = _('ASP-3NMU Gunsight Brightness Knob, Increase'),					category = _('ASP-3NMU Gunsight')},
{pressed = device_commands.Button_5,	cockpit_device_id = devices.ASP_3NM, 	value_pressed = -1.0,	name = _('ASP-3NMU Gunsight Brightness Knob Decrease'),						category = _('ASP-3NMU Gunsight')},
{pressed = device_commands.Button_10,	cockpit_device_id = devices.ASP_3NM, 	value_pressed = 0.7,	name = _('ASP-3NMU Gunsight Target Distance, Increase'),					category = _('ASP-3NMU Gunsight')},
{pressed = device_commands.Button_10,	cockpit_device_id = devices.ASP_3NM, 	value_pressed = -0.7,	name = _('ASP-3NMU Gunsight Target Distance, Decrease'),					category = _('ASP-3NMU Gunsight')},
{down 	= device_commands.Button_14,	cockpit_device_id = devices.ASP_3NM,	value_down = 1, 		name = _('ASP-3NMU Gunsight Color Filter, ON/OFF'),							category = _('ASP-3NMU Gunsight')},
{pressed = 3001 + 16,					cockpit_device_id = devices.ASP_3NM, 	value_pressed =  0.1,	name = _('ASP-3NMU Gunsight Glass Raise'),									category = _('ASP-3NMU Gunsight')},
{pressed = 3001 + 16,					cockpit_device_id = devices.ASP_3NM, 	value_pressed = -0.1,	name = _('ASP-3NMU Gunsight Glass Lower'),									category = _('ASP-3NMU Gunsight')},

--weapon system
{down = iCommandPlaneJettisonWeapons, up = iCommandPlaneJettisonWeaponsUp, name = _('Jettison Weapons'), category = _('Emergency')},


------------------------------------------------
-- Instrument Panel ----------------------------
------------------------------------------------
-- Clock
{	down = iCommandMechClock_LeftLever_Down,	up = iCommandMechClock_LeftLever_Down_up,	name = _('AChS-1 Cockpit Chronograph Left Knob - Push'),			category = _('Instrument Panel')},
{	down = iCommandMechClock_LeftLever_Up,													name = _('AChS-1 Cockpit Chronograph Left Knob - Pull'),			category = _('Instrument Panel')},
{	pressed = iCommandMechClock_LeftLever_TurnRight,										name = _('AChS-1 Cockpit Chronograph Left Knob - Rotate right'),	category = _('Instrument Panel')},
{	pressed = iCommandMechClock_LeftLever_TurnLeft,											name = _('AChS-1 Cockpit Chronograph Left Knob - Rotate left'),		category = _('Instrument Panel')},
{	down = iCommandMechClock_RightLever_Down,	up = iCommandMechClock_RightLever_Down_up,	name = _('AChS-1 Cockpit Chronograph Right Knob - Push'),			category = _('Instrument Panel')},
{	down = iCommandMechClock_RightLever_Rotate_left,										name = _('AChS-1 Cockpit Chronograph Right Knob - Rotate left'),	category = _('Instrument Panel')},
{	down = iCommandMechClock_RightLever_Rotate_right,										name = _('AChS-1 Cockpit Chronograph Right Knob - Rotate right'),	category = _('Instrument Panel')},
-- Barometric Altimeter
{pressed = device_commands.Button_2, cockpit_device_id = devices.VD_20_INPUT, value_pressed = -1, name = _('Barometric Pressure QFE Knob - CCW'),	category = _('Instrument Panel')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.VD_20_INPUT, value_pressed =  1, name = _('Barometric Pressure QFE Knob - CW'),	category = _('Instrument Panel')},
-- KPP
{down = device_commands.Button_7,	up = device_commands.Button_7,	cockpit_device_id = devices.KPP_INPUT,	value_down = 1,	value_up = 0,	name = _('Artificial Horizon Cage'),	category = _('Instrument Panel')},
{pressed = device_commands.Button_5, cockpit_device_id = devices.KPP_INPUT, value_pressed = -1, name = _('Artificial Horizon Zero Pitch Trim Knob - CCW'),	category = _('Instrument Panel')},
{pressed = device_commands.Button_5, cockpit_device_id = devices.KPP_INPUT, value_pressed =  1, name = _('Artificial Horizon Zero Pitch Trim Knob - CW'),	category = _('Instrument Panel')},
-- NPP
{pressed = device_commands.Button_4, cockpit_device_id = devices.NPP_INSTRUCTOR, value_pressed = -1, name = _('Heading Knob - CCW'),	category = _('Instrument Panel')},
{pressed = device_commands.Button_4, cockpit_device_id = devices.NPP_INSTRUCTOR, value_pressed =  1, name = _('Heading Knob - CW'),		category = _('Instrument Panel')},
-- Variometer
{pressed = device_commands.Button_2,	cockpit_device_id = devices.VARIOMETERS_INPUT, value_pressed = -1,	name = _('Variometer Adjusting Knob - CCW'),	category = _('Instrument Panel')},
{pressed = device_commands.Button_2,	cockpit_device_id = devices.VARIOMETERS_INPUT, value_pressed = 1,	name = _('Variometer Adjusting Knob - CW'),		category = _('Instrument Panel')},
-- Radar Altimeter RV-5
{pressed = iCommandRALT_DangerousAltitudeRotaryRight,	name = _('Radar altimeter dangerous RALT set rotary right'),	category = _('Instrument Panel')},
{pressed = iCommandRALT_DangerousAltitudeRotaryLeft,		name = _('Radar altimeter dangerous RALT set rotary left'),		category = _('Instrument Panel')},
{down = iCommandRALT_Test, up = iCommandRALT_Test_up,	name = _('Radar altimeter test button'),						category = _('Instrument Panel')},


------------------------------------------------
-- Engine Control Panel ------------------------
------------------------------------------------
-- fire
{down = iCommand_FireExting_ExtinguishersCover,	value_down = -1.0,	name = _('Fire Extinguish Button Cover - OPEN/CLOSE'),	category = _('Engine Control Panel')},
{down = iCommand_FireExting_ExtinguishersCover,	value_down = 1.0,	name = _('Fire Extinguish Button Cover - OPEN'),		category = _('Engine Control Panel')},
{down = iCommand_FireExting_ExtinguishersCover,	value_down = 0.0,	name = _('Fire Extinguish Button Cover - CLOSE'),		category = _('Engine Control Panel')},
{down = iCommand_FireExting_LeftEngineExting, up = iCommand_FireExting_LeftEngineExting,	value_down = 1.0,	value_up = 0.0,	name = _('Fire Extinguish Button'),	category = _('Engine Control Panel')},
{down = iCommand_FireExting_TestGroups, up = iCommand_FireExting_TestGroups,	value_down = 1.0,	value_up = 0.0,	name = _('Fire Warning Signal Test Switch - I'),	category = _('Engine Control Panel')},
{down = iCommand_FireExting_TestGroups, up = iCommand_FireExting_TestGroups,	value_down = -1.0,	value_up = 0.0,	name = _('Fire Warning Signal Test Switch - II'),	category = _('Engine Control Panel')},
-- vibration
{down = iCommand_ENG_INTERF_EngVibrDetectorBIT,	up = iCommand_ENG_INTERF_EngVibrDetectorBIT,	value_down = 1.0,	value_up = 0.0,	name = _('IV-300 Engine Vibration Test Button'),	category = _('Engine Control Panel')},
-- RT-12
{down = engine_commands.CMD_RT_12_POWER_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('RT-12 JPT Regulator Power Switch - ON/OFF'),		category = _('Engine Control Panel')},
{down = engine_commands.CMD_RT_12_POWER_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('RT-12 JPT Regulator Power Switch - ON'),			category = _('Engine Control Panel')},
{down = engine_commands.CMD_RT_12_POWER_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('RT-12 JPT Regulator Power Switch - OFF'),			category = _('Engine Control Panel')},
{down = engine_commands.CMD_RT_12_CHECK_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('RT-12 JPT Regulator Test Switch - OFF'),			category = _('Engine Control Panel')},
{down = engine_commands.CMD_RT_12_CHECK_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('RT-12 JPT Regulator Test Switch - I'),			category = _('Engine Control Panel')},
{down = engine_commands.CMD_RT_12_CHECK_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('RT-12 JPT Regulator Test Switch - II'),			category = _('Engine Control Panel')},
{down = engine_commands.CMD_RT_12_CHECK_ITER,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('RT-12 JPT Regulator Test Switch - CYCLE(UP)'),	category = _('Engine Control Panel')},
{down = engine_commands.CMD_RT_12_CHECK_ITER,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('RT-12 JPT Regulator Test Switch - CYCLE(DOWN)'),	category = _('Engine Control Panel')},
-- EGT indicator
{down = engine_commands.CMD_EGT_IND_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('EGT Indicator Switch - FRONT/REAR'),	category = _('Engine Control Panel')},
{down = engine_commands.CMD_EGT_IND_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('EGT Indicator Switch - FRONT'),		category = _('Engine Control Panel')},
{down = engine_commands.CMD_EGT_IND_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('EGT Indicator Switch - REAR'),		category = _('Engine Control Panel')},
-- emergency fuel
{down = electric_commands.L39C_Command_EmergFuelSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Emergency Fuel Switch Cover - OPEN/CLOSE'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EmergFuelSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Emergency Fuel Switch Cover - OPEN'),			category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EmergFuelSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Emergency Fuel Switch Cover - CLOSE'),		category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EmergFuelSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Emergency Fuel Switch - ON/OFF'),				category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EmergFuelSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Emergency Fuel Switch - ON'),					category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EmergFuelSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Emergency Fuel Switch - OFF'),				category = _('Engine Control Panel')},
-- start and stop
{down = electric_commands.L39C_Command_EngineSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Engine Start Button Cover - OPEN/CLOSE'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Engine Start Button Cover - OPEN'),		category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Engine Start Button Cover - CLOSE'),		category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineSw_EXT,	up = electric_commands.L39C_Command_EngineSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Engine Start Button'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStopSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Engine Stop Switch Cover - OPEN/CLOSE'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStopSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Engine Stop Switch Cover - OPEN'),		category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStopSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Engine Stop Switch Cover - CLOSE'),		category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStopSw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Engine Stop Switch - STOP/OFF'),			category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStopSw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Engine Stop Switch - STOP'),				category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStopSw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Engine Stop Switch - OFF'),				category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStartModeSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Engine Launch Method Switch Cover - OPEN/CLOSE'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStartModeSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Engine Launch Method Switch Cover - OPEN'),		category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStartModeSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Engine Launch Method Switch Cover - CLOSE'),		category = _('Engine Control Panel')},
{down = iCommandEngineLaunchMethod,	value_down = 0,		name = _('Engine Launch Method Switch - STARTING'),			category = _('Engine Control Panel')},
{down = iCommandEngineLaunchMethod,	value_down = -1,	name = _('Engine Launch Method Switch - PRESERV'),			category = _('Engine Control Panel')},
{down = iCommandEngineLaunchMethod,	value_down = 1,		name = _('Engine Launch Method Switch - COLD ROTATION'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStartModeSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Engine Launch Method Switch - CYCLE(UP)'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_EngineStartModeSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Engine Launch Method Switch - CYCLE(DOWN)'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_TurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Turbo Start Button Cover - OPEN/CLOSE'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_TurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Turbo Start Button Cover - OPEN'),		category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_TurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Turbo Start Button Cover - CLOSE'),		category = _('Engine Control Panel')},
{down = iCommandPlane_APU_Start,	up = iCommandPlane_APU_Start,	value_down = 1.0,	value_up = 0.0,	name = _('Turbo Start Button'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_StopTurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Turbo Stop Switch Cover - OPEN/CLOSE'),	category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_StopTurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Turbo Stop Switch Cover - OPEN'),			category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_StopTurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Turbo Stop Switch Cover - CLOSE'),		category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_StopTurboSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Turbo Stop Switch - STOP/OFF'),			category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_StopTurboSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Turbo Stop Switch - STOP'),				category = _('Engine Control Panel')},
{down = electric_commands.L39C_Command_StopTurboSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Turbo Stop Switch - OFF'),				category = _('Engine Control Panel')},


------------------------------------------------
-- Communications ------------------------------
------------------------------------------------
-- R-832M
{down = iCommandPlaneUHFSquelch,	value_down = -1.0,	name = _('Radio Squelch Switch - ON/OFF'),	category = _('Communications')},
{down = iCommandPlaneUHFSquelch,	value_down = 1.0,	name = _('Radio Squelch Switch - ON'),		category = _('Communications')},
{down = iCommandPlaneUHFSquelch,	value_down = 0.0,	name = _('Radio Squelch Switch - OFF'),		category = _('Communications')},
{down = iCommandPlaneUHFStatus,						name = _('Toggle Radio Control Switch'),		category = _('Communications')},
{down = iCommandPlaneUHFPresetChannelSelectorInc,	name = _('Radio Channel Knob - Next'),			category = _('Communications')},
{down = iCommandPlaneUHFPresetChannelSelectorDec,	name = _('Radio Channel Knob - Previous'),		category = _('Communications')},
-- Intercom
{pressed = iCommandPlaneUHFVolumeInc,				name = _('Radio Volume Knob - Increase'),		category = _('Communications')},
{pressed = iCommandPlaneUHFVolumeDec,				name = _('Radio Volume Knob - Decrease'),		category = _('Communications')},
{pressed = iCommandPlaneIntercomVolumeIncrease,		name = _('Intercom Volume Knob - Increase'),	category = _('Communications')},
{pressed = iCommandPlaneIntercomVolumeDecrease,		name = _('Intercom Volume Knob - Decrease'),	category = _('Communications')},
{down = iCommandPlane_R_800_ADF_Sound_switch,	value_down = -1.0,	name = _('ADF Switch - ON/OFF'),	category = _('Communications')},
{down = iCommandPlane_R_800_ADF_Sound_switch,	value_down = 1.0,	name = _('ADF Switch - ON'),		category = _('Communications')},
{down = iCommandPlane_R_800_ADF_Sound_switch,	value_down = 0.0,	name = _('ADF Switch - OFF'),		category = _('Communications')},
{down = iCommandPlane_R_800_Emergency_Radio,	value_down = -1.0,	name = _('Reserve Intercom Switch - ON/OFF'),	category = _('Communications')},
{down = iCommandPlane_R_800_Emergency_Radio,	value_down = 1.0,	name = _('Reserve Intercom Switch - ON'),		category = _('Communications')},
{down = iCommandPlane_R_800_Emergency_Radio,	value_down = 0.0,	name = _('Reserve Intercom Switch - OFF'),		category = _('Communications')},
{down = iCommandPlaneIntercomINT,	up = iCommandPlaneIntercomINT,	value_down = 1.0,	value_up = 0.0,		name = _('INT Button'),		category = _('Communications')},
{down = iCommandPlaneIntercomVHF,	up = iCommandPlaneIntercomVHF,	value_down = 1.0,	value_up = 0.0,		name = _('Radio Button'),	category = _('Communications')},
{down = iCommandPlaneIntercomINTPress,	up = iCommandPlaneIntercomINTPress,	value_down = 1.0,	value_up = 0.0,		name = _('INT Button On Stick'),	category = _('Communications')},


------------------------------------------------
-- Aft CB Switch Panel ----------------------------
------------------------------------------------
-- toggle commands
-- line 1
{down = electric_commands.L39C_Command_CB_AirConditioning_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Conditioning Switch - ON/OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_AntiIce_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Anti-Ice Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PVD_Left_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Left Pitot Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PVD_Right_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Right Pitot Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PT500C_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB PT-500 Inverter Switch - ON/OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_ARC_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Radio Compass Switch - ON/OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SRO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB SRO Switch - ON/OFF'),					category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SeatHelmet_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Seat & Helmet Switch - ON/OFF'),		category = _('Aft CB Switch Panel')},
-- line 2
{down = electric_commands.L39C_Command_CB_Gears_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Gears & Balance Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Control_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Control Switch - ON/OFF'),					category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Signaling_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Signaling Switch - ON/OFF'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_ANO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Navigation Lights Switch - ON/OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SpotlightLeft_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Left Spotlight Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SpotlightRight_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Right Spotlight Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_LightRed_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Red Cockpit Lights Switch - ON/OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_LightWhite_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB White Cockpit Lights Switch - ON/OFF'),	category = _('Aft CB Switch Panel')},
-- line 3
{down = electric_commands.L39C_Command_CB_StartPanel_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Start Panel Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_BoosterPump_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Pump Switch - ON/OFF'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ignition1_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Ignition 1 Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ignition2_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Ignition 2 Switch - ON/OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_EngineInstruments_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Engine Instruments Switch - ON/OFF'),	category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Fire_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Fire Switch - ON/OFF'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_EmergJettison_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Emergency Jettison Switch - ON/OFF'),	category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SARPP_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB SARPP Switch - ON/OFF'),				category = _('Aft CB Switch Panel')},
-- on commands
-- line 1
{down = electric_commands.L39C_Command_CB_AirConditioning_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Conditioning Switch - ON'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_AntiIce_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Anti-Ice Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PVD_Left_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Left Pitot Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PVD_Right_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Right Pitot Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PT500C_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB PT-500 Inverter Switch - ON'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_ARC_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Radio Compass Switch - ON'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SRO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB SRO Switch - ON'),					category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SeatHelmet_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Seat & Helmet Switch - ON'),		category = _('Aft CB Switch Panel')},
-- line 2
{down = electric_commands.L39C_Command_CB_Gears_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Gears & Balance Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Control_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Control Switch - ON'),					category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Signaling_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Signaling Switch - ON'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_ANO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Navigation Lights Switch - ON'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SpotlightLeft_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Left Spotlight Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SpotlightRight_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Right Spotlight Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_LightRed_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Red Cockpit Lights Switch - ON'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_LightWhite_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB White Cockpit Lights Switch - ON'),	category = _('Aft CB Switch Panel')},
-- line 3
{down = electric_commands.L39C_Command_CB_StartPanel_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Start Panel Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_BoosterPump_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Pump Switch - ON'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ignition1_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Ignition 1 Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ignition2_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Ignition 2 Switch - ON'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_EngineInstruments_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Engine Instruments Switch - ON'),	category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Fire_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Fire Switch - ON'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_EmergJettison_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Emergency Jettison Switch - ON'),	category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SARPP_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB SARPP Switch - ON'),				category = _('Aft CB Switch Panel')},
-- off commands
-- line 1
{down = electric_commands.L39C_Command_CB_AirConditioning_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Conditioning Switch - OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_AntiIce_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Anti-Ice Switch - OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PVD_Left_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Left Pitot Switch - OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PVD_Right_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Right Pitot Switch - OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_PT500C_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB PT-500 Inverter Switch - OFF'),	category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_ARC_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Radio Compass Switch - OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SRO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB SRO Switch - OFF'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SeatHelmet_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Seat & Helmet Switch - OFF'),		category = _('Aft CB Switch Panel')},
-- line 2
{down = electric_commands.L39C_Command_CB_Gears_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Gears & Balance Switch - OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Control_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Control Switch - OFF'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Signaling_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Signaling Switch - OFF'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_ANO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Navigation Lights Switch - OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SpotlightLeft_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Left Spotlight Switch - OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SpotlightRight_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Right Spotlight Switch - OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_LightRed_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Red Cockpit Lights Switch - OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_LightWhite_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB White Cockpit Lights Switch - OFF'),	category = _('Aft CB Switch Panel')},
-- line 3
{down = electric_commands.L39C_Command_CB_StartPanel_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Start Panel Switch - OFF'),		category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_BoosterPump_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Pump Switch - OFF'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ignition1_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Ignition 1 Switch - OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ignition2_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Ignition 2 Switch - OFF'),			category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_EngineInstruments_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Engine Instruments Switch - OFF'),	category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Fire_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Fire Switch - OFF'),				category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_EmergJettison_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Emergency Jettison Switch - OFF'),	category = _('Aft CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_SARPP_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB SARPP Switch - OFF'),				category = _('Aft CB Switch Panel')},



------------------------------------------------
-- Main CB Switch Panel -----------------------
------------------------------------------------
-- line 1
{down = electric_commands.L39C_Command_BatterySw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Battery Switch - ON/OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_BatterySw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Battery Switch - ON'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_BatterySw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Battery Switch - OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_MainGeneratorSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Main Generator Switch - ON/OFF'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_MainGeneratorSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Main Generator Switch - ON'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_MainGeneratorSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Main Generator Switch - OFF'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_EmergGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Emergency Generator Switch - ON/OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_EmergGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Emergency Generator Switch - ON'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_EmergGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Emergency Generator Switch - OFF'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Engine_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Engine Switch - ON/OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Engine_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Engine Switch - ON'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Engine_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Engine Switch - OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_AGD_GMK_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB AGD-GMK Switch - ON/OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_AGD_GMK_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB AGD-GMK Switch - ON'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_AGD_GMK_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB AGD-GMK Switch - OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_HeatingSensorAOA_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Heating DUA-3 Switch - ON/OFF'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_HeatingSensorAOA_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Heating DUA-3 Switch - ON'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_HeatingSensorAOA_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Heating DUA-3 Switch - OFF'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
-- line 2
{down = electric_commands.L39C_Command_CB_Converter1Sw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Inverter 1 (AC 115 V) Switch - ON/OFF'),								category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Converter1Sw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Inverter 1 (AC 115 V) Switch - ON'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Converter1Sw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Inverter 1 (AC 115 V) Switch - OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Converter2Sw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Inverter 2 (AC 115 V) Switch - ON/OFF'),								category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Converter2Sw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Inverter 2 (AC 115 V) Switch - ON'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Converter2Sw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Inverter 2 (AC 115 V) Switch - OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Weapon_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB WEAPON Switch - ON/OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Weapon_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB WEAPON Switch - ON'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Weapon_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB WEAPON Switch - OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_RTL_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB RDO (ICS and Radio) Switch - ON/OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_RTL_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB RDO (ICS and Radio) Switch - ON'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_RTL_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB RDO (ICS and Radio) Switch - OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_WingTanks_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Tanks Switch - ON/OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_WingTanks_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Tanks Switch - ON'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_WingTanks_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Tanks Switch - OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
-- line 3
{down = electric_commands.L39C_Command_CB_ISKRA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB RSBN (ISKRA) Switch - ON/OFF'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_ISKRA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB RSBN (ISKRA) Switch - ON'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_ISKRA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB RSBN (ISKRA) Switch - OFF'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EMERG_ISKRA_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB RSBN (ISKRA) Emergency Connection Switch - ON/OFF'),					category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EMERG_ISKRA_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB RSBN (ISKRA) Emergency Connection Switch - ON'),						category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EMERG_ISKRA_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB RSBN (ISKRA) Emergency Connection Switch - OFF'),						category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EMERG_SRO_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB IFF (SRO) Emergency Connection Switch - ON/OFF'),						category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EMERG_SRO_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB IFF (SRO) Emergency Connection Switch - ON'),							category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EMERG_SRO_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB IFF (SRO) Emergency Connection Switch - OFF'),							category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_RIO_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB RIO-3 De-Icing Signal Switch - ON/OFF'),								category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_RIO_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB RIO-3 De-Icing Signal Switch - ON'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_RIO_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB RIO-3 De-Icing Signal Switch - OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_MRP_RV_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB MRP-RV (Marker Beacon Receiver and Radio Altimeter) Switch - ON/OFF'),	category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_MRP_RV_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB MRP-RV (Marker Beacon Receiver and Radio Altimeter) Switch - ON'),		category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_MRP_RV_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB MRP-RV (Marker Beacon Receiver and Radio Altimeter) Switch - OFF'),	category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SDU_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB SDU Switch - ON/OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SDU_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB SDU Switch - ON'),														category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SDU_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB SDU Switch - OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},


------------------------------------------------
-- Miscellaneous CB Switch Panel --------------
------------------------------------------------
{down = electric_commands.L39C_Command_NetSw_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Net Switch - ON/OFF'),				category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_NetSw_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Net Switch - ON'),					category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_NetSw_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Net Switch - OFF'),					category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Seat_Instructor_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Seat Switch - ON/OFF'),			category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Seat_Instructor_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Seat Switch - ON'),				category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Seat_Instructor_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Seat Switch - OFF'),				category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Signal_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Signal Switch - ON/OFF'),			category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Signal_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Signal Switch - ON'),				category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Signal_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Signal Switch - OFF'),				category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Weapon_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Arms Switch - ON/OFF'),			category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Weapon_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Arms Switch - ON'),				category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Weapon_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Arms Switch - OFF'),				category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ground_SPU_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Intercom Ground Switch - ON/OFF'),	category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ground_SPU_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Intercom Ground Switch - ON'),		category = _('Miscellaneous CB Switch Panel')},
{down = electric_commands.L39C_Command_CB_Ground_SPU_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Intercom Ground Switch - OFF'),	category = _('Miscellaneous CB Switch Panel')},
{down = device_commands.Button_20,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1.0,	name = _('CB Air Conditioning Shutoff Switch Cover - OPEN/CLOSE'),	category = _('Miscellaneous CB Switch Panel')},
{down = device_commands.Button_20,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,	name = _('CB Air Conditioning Shutoff Switch Cover - OPEN'),		category = _('Miscellaneous CB Switch Panel')},
{down = device_commands.Button_20,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,	name = _('CB Air Conditioning Shutoff Switch Cover - CLOSE'),		category = _('Miscellaneous CB Switch Panel')},
{down = device_commands.Button_19,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1.0,	name = _('Air Conditioning Shutoff Switch - OPEN'),					category = _('Miscellaneous CB Switch Panel')},
{down = device_commands.Button_19,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,	name = _('Air Conditioning Shutoff Switch - OFF'),					category = _('Miscellaneous CB Switch Panel')},
{down = device_commands.Button_19,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,	name = _('Air Conditioning Shutoff Switch - CLOSE'),				category = _('Miscellaneous CB Switch Panel')},


------------------------------------------------
-- Oxygen Control Panel ------------------------
------------------------------------------------
{down = iCommandPlane_Oxygen_Emergency,	value_down = -1.0,	name = _('Emergency Oxygen Switch - ON/OFF'),		category = _('Oxygen Control Panel')},
{down = iCommandPlane_Oxygen_Emergency,	value_down = 1.0,	name = _('Emergency Oxygen Switch - ON'),			category = _('Oxygen Control Panel')},
{down = iCommandPlane_Oxygen_Emergency,	value_down = 0.0,	name = _('Emergency Oxygen Switch - OFF'),			category = _('Oxygen Control Panel')},
{down = iCommandPlane_Oxygen_100Oxygen,	value_down = -1.0,	name = _('Oxygen Diluter Switch - 100%/NORMAL'),	category = _('Oxygen Control Panel')},
{down = iCommandPlane_Oxygen_100Oxygen,	value_down = 1.0,	name = _('Oxygen Diluter Switch - 100%'),			category = _('Oxygen Control Panel')},
{down = iCommandPlane_Oxygen_100Oxygen,	value_down = 0.0,	name = _('Oxygen Diluter Switch - NORMAL'),			category = _('Oxygen Control Panel')},
{pressed = iCommandPlane_Oxygen_Supply,	value_pressed = 0.5,	name = _('Oxygen Supply Valve - CCW'),	category = _('Oxygen Control Panel')},
{pressed = iCommandPlane_Oxygen_Supply,	value_pressed = -0.5,	name = _('Oxygen Supply Valve - CW'),	category = _('Oxygen Control Panel')},
{pressed = oxygen_commands.L39C_Command_OxygenDrainValve_EXT,	cockpit_device_id = devices.OXYGEN,	value_pressed = 0.5,	name = _('Oxygen Bottles Interconnect Valve - CCW'),	category = _('Oxygen Control Panel')},
{pressed = oxygen_commands.L39C_Command_OxygenDrainValve_EXT,	cockpit_device_id = devices.OXYGEN,	value_pressed = -0.5,	name = _('Oxygen Bottles Interconnect Valve - CW'),		category = _('Oxygen Control Panel')},


------------------------------------------------
-- Auxiliary Switch Panel ----------------------
------------------------------------------------
{down = electric_commands.L39C_Command_EmergencyEngineInstrumentsPower_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Emergency Engine Instruments Power Switch - ON/OFF'),	category = _('Auxiliary Switch Panel')},
{down = electric_commands.L39C_Command_EmergencyEngineInstrumentsPower_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Emergency Engine Instruments Power Switch - ON'),		category = _('Auxiliary Switch Panel')},
{down = electric_commands.L39C_Command_EmergencyEngineInstrumentsPower_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Emergency Engine Instruments Power Switch - OFF'),	category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_Brightness_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.0,	name = _('Navigation Lights Intensity Control Switch - 100%'),	category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_Brightness_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.5,	name = _('Navigation Lights Intensity Control Switch - 30%'),	category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_Brightness_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Navigation Lights Intensity Control Switch - 60%'),	category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_Brightness_ITER,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Navigation Lights Intensity Control Switch - CYCLE(UP)'),		category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_Brightness_ITER,	cockpit_device_id = devices.LIGHTS,	value_down = -1.0,	name = _('Navigation Lights Intensity Control Switch - CYCLE(DOWN)'),	category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_SteadyFlash_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.0,	name = _('Navigation Lights Mode Control Switch - FLICKER'),		category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_SteadyFlash_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.5,	name = _('Navigation Lights Mode Control Switch - OFF'),			category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_SteadyFlash_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Navigation Lights Mode Control Switch - FIXED LIGHTING'),	category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_SteadyFlash_ITER,	cockpit_device_id = devices.LIGHTS,	value_down = -1.0,	name = _('Navigation Lights Mode Control Switch - CYCLE(UP)'),		category = _('Auxiliary Switch Panel')},
{down = lights_commands.L39C_Command_BANO_SteadyFlash_ITER,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Navigation Lights Mode Control Switch - CYCLE(DOWN)'),	category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_21,	cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.1,	name = _('De-Icing Mode Switch - AUTOMATIC'),	category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_21,	cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.2,	name = _('De-Icing Mode Switch - MANUAL'),		category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_21,	cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,	name = _('De-Icing Mode Switch - OFF'),			category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_26,	cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,	name = _('De-Icing Mode Switch - CYCLE(UP)'),	category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_26,	cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1.0,	name = _('De-Icing Mode Switch - CYCLE(DOWN)'),	category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_16,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,		name = _('Cabin Air Conditioning Control Switch - AUTOMATIC'),	category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_16,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.1,		name = _('Cabin Air Conditioning Control Switch - HEAT'),		category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_16,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.2,		name = _('Cabin Air Conditioning Control Switch - COOL'),		category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_16,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.05,		name = _('Cabin Air Conditioning Control Switch - OFF'),		category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_27,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,		name = _('Cabin Air Conditioning Control Switch - CYCLE(CW)'),	category = _('Auxiliary Switch Panel')},
{down = device_commands.Button_27,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1.0,		name = _('Cabin Air Conditioning Control Switch - CYCLE(CCW)'),	category = _('Auxiliary Switch Panel')},
{pressed = device_commands.Button_15,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = 0.5,	name = _('Cabin Air Temperature Controller Rheostat - CW'),		category = _('Auxiliary Switch Panel')},
{pressed = device_commands.Button_15,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = -0.5,	name = _('Cabin Air Temperature Controller Rheostat - CCW'),	category = _('Auxiliary Switch Panel')},


------------------------------------------------
-- RSBN-5 Control Panel ------------------------
------------------------------------------------
{down = device_commands.Button_2,		cockpit_device_id = devices.SDU,	value_down = -1.0,		name = _('SDU Switch - ON/OFF'),				category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_2,		cockpit_device_id = devices.SDU,	value_down = 1.0,		name = _('SDU Switch - ON'),					category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_2,		cockpit_device_id = devices.SDU,	value_down = 0.0,		name = _('SDU Switch - OFF'),					category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_14,		cockpit_device_id = devices.RSBN_5,	value_down = 0.1,		name = _('RSBN Mode Switch - NAVIGATION'),		category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_14,		cockpit_device_id = devices.RSBN_5,	value_down = 0.0,		name = _('RSBN Mode Switch - GLIDE PATH'),		category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_14,		cockpit_device_id = devices.RSBN_5,	value_down = 0.2,		name = _('RSBN Mode Switch - LANDING'),			category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_27,		cockpit_device_id = devices.RSBN_5,	value_down = 1.0,		name = _('RSBN Mode Switch - CYCLE(UP)'),		category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_27,		cockpit_device_id = devices.RSBN_5,	value_down = -1.0,		name = _('RSBN Mode Switch - CYCLE(DOWN)'),		category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_15,	up = device_commands.Button_15,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,	name = _('RSBN Identification Button'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_16,	up = device_commands.Button_16,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,	name = _('RSBN Test Button'),			category = _('RSBN-5 Control Panel')},
{pressed = device_commands.Button_17,	cockpit_device_id = devices.RSBN_5,	value_pressed = 0.5,	name = _('RSBN Control Box Lighting Intensity Knob - CW'),			category = _('RSBN-5 Control Panel')},
{pressed = device_commands.Button_17,	cockpit_device_id = devices.RSBN_5,	value_pressed = -0.5,	name = _('RSBN Control Box Lighting Intensity Knob - CCW'),			category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_18,		cockpit_device_id = devices.RSBN_5,	value_down = 1.0,		name = _('RSBN Navigation Channel - INCREASE'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_18,		cockpit_device_id = devices.RSBN_5,	value_down = -1.0,		name = _('RSBN Navigation Channel - DECREASE'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_19,		cockpit_device_id = devices.RSBN_5,	value_down = 1.0,		name = _('RSBN Landing Channel - INCREASE'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_19,		cockpit_device_id = devices.RSBN_5,	value_down = -1.0,		name = _('RSBN Landing Channel - DECREASE'),	category = _('RSBN-5 Control Panel')},
{pressed = device_commands.Button_20,	cockpit_device_id = devices.RSBN_5,	value_pressed = 0.5,	name = _('RSBN Volume Rheostat - CW'),			category = _('RSBN-5 Control Panel')},
{pressed = device_commands.Button_20,	cockpit_device_id = devices.RSBN_5,	value_pressed = -0.5,	name = _('RSBN Volume Rheostat - CCW'),			category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_21,	up = device_commands.Button_21,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,	name = _('RSBN Azimuth 0 Setting Button'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_22,	up = device_commands.Button_22,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,	name = _('RSBN Azimuth Initial Setting Switch - INCREASE'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_22,	up = device_commands.Button_22,	cockpit_device_id = devices.RSBN_5,	value_down = -1.0,	value_up = 0.0,	name = _('RSBN Azimuth Initial Setting Switch - DECREASE'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_23,	up = device_commands.Button_23,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,	name = _('RSBN Distance Initial Setting Switch - INCREASE'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_23,	up = device_commands.Button_23,	cockpit_device_id = devices.RSBN_5,	value_down = -1.0,	value_up = 0.0,	name = _('RSBN Distance Initial Setting Switch - DECREASE'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_24,	up = device_commands.Button_24,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,	name = _('RSBN Listen Callsign Button'),						category = _('RSBN-5 Control Panel')},
{pressed = device_commands.Button_25,	cockpit_device_id = devices.RSBN_5,	value_pressed = 0.3,	name = _('RSBN QNH Pressure Knob - CW'),			category = _('RSBN-5 Control Panel')},
{pressed = device_commands.Button_25,	cockpit_device_id = devices.RSBN_5,	value_pressed = -0.3,	name = _('RSBN QNH Pressure Knob - CCW'),			category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_26,		cockpit_device_id = devices.RSBN_5,	value_down = -1,		name = _('RSBN Emergency Landing Mode On Switch - ON/OFF'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_26,		cockpit_device_id = devices.RSBN_5,	value_down = 1,			name = _('RSBN Emergency Landing Mode On Switch - ON'),		category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_26,		cockpit_device_id = devices.RSBN_5,	value_down = 0,			name = _('RSBN Emergency Landing Mode On Switch - OFF'),	category = _('RSBN-5 Control Panel')},
{down = device_commands.Button_3,	up = device_commands.Button_3,	cockpit_device_id = devices.NPP_INSTRUCTOR,	value_down = 1,	value_up = 0,	name = _('RSBN Course Accordance Button'),	category = _('RSBN-5 Control Panel')},


------------------------------------------------
-- GMK-1AE GMC Control Panel -------------------
------------------------------------------------
{pressed = device_commands.Button_10,	cockpit_device_id = devices.GMK1AE,	value_pressed = 0.1,	name = _('GMK-1AE GMC Latitude Selector Knob - CW'),		category = _('GMK-1AE GMC Control Panel')},
{pressed = device_commands.Button_10,	cockpit_device_id = devices.GMK1AE,	value_pressed = -0.1,	name = _('GMK-1AE GMC Latitude Selector Knob - CCW'),		category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_15,		cockpit_device_id = devices.GMK1AE,	value_down = 0,			name = _('GMK-1AE GMC Mode Switch - MC/GC'),				category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_16,		cockpit_device_id = devices.GMK1AE,	value_down = 1,			name = _('GMK-1AE GMC Mode Switch - MC'),					category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_16,		cockpit_device_id = devices.GMK1AE,	value_down = -1,		name = _('GMK-1AE GMC Mode Switch - GC'),					category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_17,		cockpit_device_id = devices.GMK1AE,	value_down = 0,			name = _('GMK-1AE GMC Hemisphere Selection Switch - N/S'),	category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_9,		cockpit_device_id = devices.GMK1AE,	value_down = 1,			name = _('GMK-1AE GMC Hemisphere Selection Switch - N'),	category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_9,		cockpit_device_id = devices.GMK1AE,	value_down = -1,		name = _('GMK-1AE GMC Hemisphere Selection Switch - S'),	category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_18,	up = device_commands.Button_18,	cockpit_device_id = devices.GMK1AE,	value_down = 1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Test Switch - 0/OFF'),	category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_18,	up = device_commands.Button_18,	cockpit_device_id = devices.GMK1AE,	value_down = -1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Test Switch - 300/OFF'),	category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_19,	up = device_commands.Button_19,	cockpit_device_id = devices.GMK1AE,	value_down = 1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Course Selector Switch - DECREASE'),	category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_19,	up = device_commands.Button_19,	cockpit_device_id = devices.GMK1AE,	value_down = -1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Course Selector Switch - INCREASE'),	category = _('GMK-1AE GMC Control Panel')},
{down = device_commands.Button_20,	up = device_commands.Button_20,	cockpit_device_id = devices.GMK1AE,	value_down = 1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Synchronization Button'),	category = _('GMK-1AE GMC Control Panel')},
{pressed = device_commands.Button_21,	cockpit_device_id = devices.GMK1AE,	value_pressed = 0.1,	name = _('GMK-1AE GMC Magnetic Declination Knob - CW'),		category = _('GMK-1AE GMC Control Panel')},
{pressed = device_commands.Button_21,	cockpit_device_id = devices.GMK1AE,	value_pressed = -0.1,	name = _('GMK-1AE GMC Magnetic Declination Knob - CCW'),	category = _('GMK-1AE GMC Control Panel')},


------------------------------------------------
-- RKL-41 ADF Control Panel --------------------
------------------------------------------------
{down = iCommandPlane_ADF_Mode_change,	value_down = 0.0,	name = _('RKL-41 ADF Function Switch - OFF'),			category = _('RKL-41 ADF Control Panel')},
{down = iCommandPlane_ADF_Mode_change,	value_down = 0.1,	name = _('RKL-41 ADF Function Switch - ADF(AUTO)'),		category = _('RKL-41 ADF Control Panel')},
{down = iCommandPlane_ADF_Mode_change,	value_down = 0.2,	name = _('RKL-41 ADF Function Switch - ADF(MANUAL)'),	category = _('RKL-41 ADF Control Panel')},
{down = iCommandPlane_ADF_Mode_change,	value_down = 0.3,	name = _('RKL-41 ADF Function Switch - ANTENNA'),		category = _('RKL-41 ADF Control Panel')},
{down = iCommandPlane_ADF_Mode_change,	value_down = 0.4,	name = _('RKL-41 ADF Function Switch - LOOP'),			category = _('RKL-41 ADF Control Panel')},
{down = iCommandPlane_ADF_Receiver_Mode_change,	value_down = -1.0,	name = _('RKL-41 ADF Mode Switch - TLF/TLG'),	category = _('RKL-41 ADF Control Panel')},
{down = iCommandPlane_ADF_Receiver_Mode_change,	value_down = 0.0,	name = _('RKL-41 ADF Mode Switch - TLF'),		category = _('RKL-41 ADF Control Panel')},
{down = iCommandPlane_ADF_Receiver_Mode_change,	value_down = 1.0,	name = _('RKL-41 ADF Mode Switch - TLG'),		category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_TAKE_CONTROL_EXT,	cockpit_device_id = devices.RKL_41,	value_down = -1.0,	name = _('RKL-41 ADF Control Switch - FRONT/REAR'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_TAKE_CONTROL_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 0.0,	name = _('RKL-41 ADF Control Switch - FRONT'),		category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_TAKE_CONTROL_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 1.0,	name = _('RKL-41 ADF Control Switch - REAR'),		category = _('RKL-41 ADF Control Panel')},
{pressed = iCommandPlane_ADF_Volume_up,		name = _('RKL-41 ADF Volume Knob - INCREASE'),	category = _('RKL-41 ADF Control Panel')},
{pressed = iCommandPlane_ADF_Volume_down,	name = _('RKL-41 ADF Volume Knob - DECREASE'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_LOOP_L_R_EXT,	up = RKL_commands.CMD_RKL_41_LOOP_L_R_EXT,	cockpit_device_id = devices.RKL_41,	value_down = -1.0,	value_up = 0.0,	name = _('RKL-41 ADF LOOP Switch - LEFT/OFF'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_LOOP_L_R_EXT,	up = RKL_commands.CMD_RKL_41_LOOP_L_R_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 1.0,	value_up = 0.0,	name = _('RKL-41 ADF LOOP Switch - RIGHT/OFF'),	category = _('RKL-41 ADF Control Panel')},
{pressed = RKL_commands.CMD_RKL_41_BRIGHTNESS_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = 0.5,	name = _('RKL-41 ADF Brightness Knob - CW'),	category = _('RKL-41 ADF Control Panel')},
{pressed = RKL_commands.CMD_RKL_41_BRIGHTNESS_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = -0.5,	name = _('RKL-41 ADF Brightness Knob - CCW'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_DIAL_SELECT_EXT,	cockpit_device_id = devices.RKL_41,	value_down = -1.0,	name = _('RKL-41 ADF Dial Selector Switch - FAR/NEAR'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_DIAL_SELECT_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 0.0,	name = _('RKL-41 ADF Dial Selector Switch - FAR'),		category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_DIAL_SELECT_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 1.0,	name = _('RKL-41 ADF Dial Selector Switch - NEAR'),		category = _('RKL-41 ADF Control Panel')},
{pressed = RKL_commands.CMD_RKL_41_DPRS_TUNE_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = -0.2,	name = _('RKL-41 ADF Outer Beacon Frequency Tune Knob - CCW'),			category = _('RKL-41 ADF Control Panel')},
{pressed = RKL_commands.CMD_RKL_41_DPRS_TUNE_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = 0.2,	name = _('RKL-41 ADF Outer Beacon Frequency Tune Knob - CW'),			category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_DPRS_100KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Outer Beacon 100 kHz Frequency Knob - DECREASE'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_DPRS_100KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Outer Beacon 100 kHz Frequency Knob - INCREASE'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_DPRS_10KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Outer Beacon 10 kHz Frequency Knob - DECREASE'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_DPRS_10KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Outer Beacon 10 kHz Frequency Knob - INCREASE'),	category = _('RKL-41 ADF Control Panel')},
{pressed = RKL_commands.CMD_RKL_41_BPRS_TUNE_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = -0.2,	name = _('RKL-41 ADF Inner Beacon Frequency Tune Knob - CCW'),			category = _('RKL-41 ADF Control Panel')},
{pressed = RKL_commands.CMD_RKL_41_BPRS_TUNE_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = 0.2,	name = _('RKL-41 ADF Inner Beacon Frequency Tune Knob - CW'),			category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_BPRS_100KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Inner Beacon 100 kHz Frequency Knob - DECREASE'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_BPRS_100KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Inner Beacon 100 kHz Frequency Knob - INCREASE'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_BPRS_10KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Inner Beacon 10 kHz Frequency Knob - DECREASE'),	category = _('RKL-41 ADF Control Panel')},
{down = RKL_commands.CMD_RKL_41_BPRS_10KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Inner Beacon 10 kHz Frequency Knob - INCREASE'),	category = _('RKL-41 ADF Control Panel')},


------------------------------------------------
-- Signal Flares Control Panel -----------------
------------------------------------------------
{down = device_commands.Button_23,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 Signal Flare Dispenser Power Switch - ON/OFF'),	category = _('Signal Flares Control Panel')},
{down = device_commands.Button_23,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 Signal Flare Dispenser Power Switch - OFF'),		category = _('Signal Flares Control Panel')},
{down = device_commands.Button_23,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 Signal Flare Dispenser Power Switch - ON'),		category = _('Signal Flares Control Panel')},
{down = device_commands.Button_26,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 White Signal Flare Launch Button - ON/OFF'),	category = _('Signal Flares Control Panel')},
{down = device_commands.Button_26,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 White Signal Flare Launch Button - OFF'),		category = _('Signal Flares Control Panel')},
{down = device_commands.Button_26,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 White Signal Flare Launch Button - ON'),		category = _('Signal Flares Control Panel')},
{down = device_commands.Button_25,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 Red Signal Flare Launch Button - ON/OFF'),	category = _('Signal Flares Control Panel')},
{down = device_commands.Button_25,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 Red Signal Flare Launch Button - OFF'),		category = _('Signal Flares Control Panel')},
{down = device_commands.Button_25,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 Red Signal Flare Launch Button - ON'),		category = _('Signal Flares Control Panel')},
{down = device_commands.Button_24,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 Green Signal Flare Launch Button - ON/OFF'),	category = _('Signal Flares Control Panel')},
{down = device_commands.Button_24,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 Green Signal Flare Launch Button - OFF'),		category = _('Signal Flares Control Panel')},
{down = device_commands.Button_24,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 Green Signal Flare Launch Button - ON'),		category = _('Signal Flares Control Panel')},
{down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 Yellow Signal Flare Launch Button - ON/OFF'),	category = _('Signal Flares Control Panel')},
{down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 Yellow Signal Flare Launch Button - OFF'),	category = _('Signal Flares Control Panel')},
{down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 Yellow Signal Flare Launch Button - ON'),		category = _('Signal Flares Control Panel')},


------------------------------------------------
-- Armament Control Panel -----------------
------------------------------------------------
-- CB on central pedestal
{	down = device_commands.Button_28,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('CB Armament System Power Switch - ON/OFF'),						category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_28,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('CB Armament System Power Switch - OFF'),							category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_28,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('CB Armament System Power Switch - ON'),							category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_30,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('CB ASP-FKP (Gunsight and Gun Camera) Power Switch - ON/OFF'),		category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_30,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('CB ASP-FKP (Gunsight and Gun Camera) Power Switch - OFF'),		category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_30,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('CB ASP-FKP (Gunsight and Gun Camera) Power Switch - ON'),			category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_29,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('CB Missile Firing Control Circuit Power Switch - ON/OFF'),		category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_29,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('CB Missile Firing Control Circuit Power Switch - OFF'),			category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_29,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('CB Missile Firing Control Circuit Power Switch - ON'),			category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_61,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('CB Arm Bombs Power Switch - ON/OFF'),								category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_61,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('CB Arm Bombs Power Switch - OFF'),								category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_61,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('CB Arm Bombs Power Switch - ON'),									category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_62,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('CB Arm Outer Guns Power Switch - ON/OFF'),						category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_62,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('CB Arm Outer Guns Power Switch - OFF'),							category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_62,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('CB Arm Outer Guns Power Switch - ON'),							category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_63,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('CB Arm Inner Guns Power Switch - ON/OFF'),						category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_63,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('CB Arm Inner Guns Power Switch - OFF'),							category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_63,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('CB Arm Inner Guns Power Switch - ON'),							category = {_('Center Pedestal'), _('Armament Control Panel'), _('Only Front Cockpit')}},
-- left side on the wall
{	pressed = device_commands.Button_33,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -0.5,	name = _('Missile Seeker Tone Volume Knob - CCW'),													category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	pressed = device_commands.Button_33,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 0.5,	name = _('Missile Seeker Tone Volume Knob - CW'),													category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_31,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Missile Seeker Heating Circuit Power Switch - ON/OFF'),									category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_31,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Missile Seeker Heating Circuit Power Switch - OFF'),										category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_31,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Missile Seeker Heating Circuit Power Switch - ON'),										category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_32,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Missile Seeker Glowing Circuit Power Switch - ON/OFF'),									category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_32,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Missile Seeker Glowing Circuit Power Switch - OFF'),										category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_32,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Missile Seeker Glowing Circuit Power Switch - ON'),										category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_60,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Arm/Safe Cannon Gsh-23 Switch - ARM/SAFE'),												category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_60,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Arm/Safe Cannon Gsh-23 Switch - SAFE'),													category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_60,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Arm/Safe Cannon Gsh-23 Switch - ARM'),													category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
-- front left panel
{	down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 2,			name = _('Missile/Bomb Release Selector Switch - PORT(Left)/STARB-BOTH(Right for Missiles/Both)'),	category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Missile/Bomb Release Selector Switch - STARB-BOTH(Right for Missiles/Both)'),				category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Missile/Bomb Release Selector Switch - PORT(Left)'),										category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_39,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.1,		name = _('Rockets Firing Mode Selector Switch - AUT.'),												category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_39,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.2,		name = _('Rockets Firing Mode Selector Switch - 2RS'),												category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_39,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.3,		name = _('Rockets Firing Mode Selector Switch - 4RS'),												category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_37,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Emergency Jettison Outboard Stations Switch Cover - OPEN/CLOSE'),							category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_37,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Emergency Jettison Outboard Stations Switch Cover - CLOSE'),								category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_37,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Emergency Jettison Outboard Stations Switch Cover - OPEN'),								category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_38,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Emergency Jettison Outboard Stations Switch - ON/OFF'),									category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_38,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Emergency Jettison Outboard Stations Switch - OFF'),										category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_38,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Emergency Jettison Outboard Stations Switch - ON'),										category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_64,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Emergency Jettison Inboard Stations Switch Cover - OPEN/CLOSE'),							category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_64,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Emergency Jettison Inboard Stations Switch Cover - CLOSE'),								category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_64,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Emergency Jettison Inboard Stations Switch Cover - OPEN'),								category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_65,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Emergency Jettison Inboard Stations Switch - ON/OFF'),									category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_65,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Emergency Jettison Inboard Stations Switch - OFF'),										category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_65,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Emergency Jettison Inboard Stations Switch - ON'),										category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_35,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Arm/Safe Bombs Emergency Jettison Switch Cover - OPEN/CLOSE'),							category = {_('Armament Control Panel')}},
{	down = device_commands.Button_35,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Arm/Safe Bombs Emergency Jettison Switch Cover - CLOSE'),									category = {_('Armament Control Panel')}},
{	down = device_commands.Button_35,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Arm/Safe Bombs Emergency Jettison Switch Cover - OPEN'),									category = {_('Armament Control Panel')}},
{	down = device_commands.Button_36,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Arm/Safe Bombs Emergency Jettison Switch - LIVE'),										category = {_('Armament Control Panel')}},
{	down = device_commands.Button_36,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Arm/Safe Bombs Emergency Jettison Switch - BLANK'),										category = {_('Armament Control Panel')}},
{	down = device_commands.Button_36,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Arm/Safe Bombs Emergency Jettison Switch - NEUTRAL'),										category = {_('Armament Control Panel'), _('Only Rear Cockpit')}},
{	down = device_commands.Button_40,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Arm/Safe Bombs Emergency Jettison Switch - LIVE/BLANK'),									category = {_('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_66,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Emergency Launch Missiles Button Cover - OPEN/CLOSE'),									category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_66,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Emergency Launch Missiles Button Cover - CLOSE'),											category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_66,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Emergency Launch Missiles Button Cover - OPEN'),											category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_67, up = device_commands.Button_67, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0,	name = _('Emergency Launch Missiles Button'),						category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_68,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Gun+PK3 Switch Cover - OPEN/CLOSE'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_68,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Gun+PK3 Switch Cover - CLOSE'),															category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_68,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Gun+PK3 Switch Cover - OPEN'),															category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_69,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Gun+PK3 Switch - ON/OFF'),																category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_69,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Gun+PK3 Switch - OFF'),																	category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_69,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Gun+PK3 Switch - ON'),																	category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_70,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Charge Outer Guns Switch - ON/OFF'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_70,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Charge Outer Guns Switch - OFF'),															category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_70,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Charge Outer Guns Switch - ON'),															category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_71,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Charge Inner Guns Switch - ON/OFF'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_71,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Charge Inner Guns Switch - OFF'),															category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_71,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Charge Inner Guns Switch - ON'),															category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_72, up = device_commands.Button_72, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0,	name = _('Pyro Charge Apply Button'),								category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_74,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Pyro Charge Selector Switch - Up'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_74,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Pyro Charge Selector Switch - Down'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_73,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.0,		name = _('Pyro Charge Selector Switch - I'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_73,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.5,		name = _('Pyro Charge Selector Switch - II'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_73,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1.0,		name = _('Pyro Charge Selector Switch - III'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_48,									cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,					name = _('Outboard Stations Select Button'),					category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_50,									cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,					name = _('Inboard Stations Deselect Button'),					category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_49, up = device_commands.Button_49,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1, value_up = 0,	name = _('Outboard Stations Select Button'),					category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_51, up = device_commands.Button_51,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1, value_up = 0,	name = _('Inboard Stations Deselect Button'),					category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_76,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Bomb Series Selector Switch - Up'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_76,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Bomb Series Selector Switch - Down'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_75,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Bomb Series Selector Switch - SALVO'),													category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_75,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Bomb Series Selector Switch - I'),														category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},
{	down = device_commands.Button_75,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Bomb Series Selector Switch - TRAIN'),													category = {_('Left Front Panel'), _('Armament Control Panel'), _('Only Front Cockpit')}},


})

-- joystick axes 
join(res.axisCommands,{

------------------------------------------------
-- Flight Control ------------------------------
------------------------------------------------
{combos = defaultDeviceAssignmentFor("roll"),	action = iCommandPlaneRoll,			name = _('Roll'),	category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("pitch"),	action = iCommandPlanePitch,		name = _('Pitch'),	category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("rudder"),	action = iCommandPlaneRudder,		name = _('Rudder'),	category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("thrust"),	action = iCommandPlaneThrustCommon,	name = _('Thrust'),	category = {_('Flight Control')}},

------------------------------------------------
-- ASP-3NMU Gunsight ---------------------------
------------------------------------------------
{action = device_commands.Button_7,		cockpit_device_id = devices.ASP_3NM,	name = _('ASP-3NMU Gunsight Target Wingspan Adjustment Dial'),	category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{action = device_commands.Button_6,		cockpit_device_id = devices.ASP_3NM,	name = _('ASP-3NMU Gunsight Target Distance'),					category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{action = device_commands.Button_18,	cockpit_device_id = devices.ASP_3NM,	name = _('ASP-3 Glass Raise/Lower'),							category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{action = device_commands.Button_8,		cockpit_device_id = devices.ASP_3NM, 	name = _('ASP-3NMU Gunsight Brightness Knob'),					category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},

------------------------------------------------
-- Oxygen Control Panel ------------------------
------------------------------------------------
{action = oxygen_commands.L39C_Command_OxygenSupplyValve_AXIS,	cockpit_device_id = devices.OXYGEN,	name = _('Oxygen Supply Valve'),				category = {_('Oxygen Control Panel')}},
{action = oxygen_commands.L39C_Command_OxygenDrainValve_AXIS,	cockpit_device_id = devices.OXYGEN,	name = _('Oxygen Bottles Interconnect Valve'),	category = {_('Oxygen Control Panel'), _('Only Rear Cockpit')}},

------------------------------------------------
-- Communications ------------------------------
------------------------------------------------
{action = spu_commands.CMD_SPU9_RST_RADIO_VOLUME_AXIS,	cockpit_device_id = devices.SPU_9,	name = _('Radio Volume Knob'),		category = {_('Communications'), _('Intercom Control Panel')}},
{action = spu_commands.CMD_SPU9_RST_INT_VOLUME_AXIS,	cockpit_device_id = devices.SPU_9,	name = _('Intercom Volume Knob'),	category = {_('Communications'), _('Intercom Control Panel')}},

------------------------------------------------
-- GMK-1AE GMC Control Panel -------------------
------------------------------------------------
{action = device_commands.Button_22,	cockpit_device_id = devices.GMK1AE,	name = _('GMK-1AE GMC Latitude Selector Knob'),	category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},

------------------------------------------------
-- Systems -------------------------------------
------------------------------------------------
-- Wheel Brake
{action = iCommandWheelBrake,		name = _('Wheel Brake'),	category = {_('Systems')}},
{action = device_commands.Button_19,	cockpit_device_id = devices.CTRL_INTERFACE,	name = _('Front Cockpit Emergency Wheel Brake Lever'),	category = {_('Left Console')}},
{action = device_commands.Button_20,	cockpit_device_id = devices.CTRL_INTERFACE,	name = _('Second Cockpit Emergency Wheel Brake Lever'),	category = {_('Left Console')}},
-- Cockpit lights
{action = lights_commands.L39C_Command_LightsReostat_AXIS,			cockpit_device_id = devices.LIGHTS,	name = _('Cockpit Lights Brightness Rheostat'),	category = {_('Left Console')}},
-- Warning lights
{action = lights_commands.L39C_Command_WarningLightIntensity_AXIS,	cockpit_device_id = devices.LIGHTS,	name = _('Warning Lights Brightness Rheostat'),	category = {_('Right Console')}},
-- ECS
{action = device_commands.Button_29,	cockpit_device_id = devices.AIR_INTERFACE,	name = _('ECS and Pressurization Handle'),	category = {_('Right Console')}},
-- Suit
{action = device_commands.Button_31,	cockpit_device_id = devices.AIR_INTERFACE,	name = _('Suit Ventilation Air Louvre Rheostat'),	category = {_('Instrument Panel'), _('Only Front Cockpit')}},

------------------------------------------------
-- RKL-41 ADF Control Panel --------------------
------------------------------------------------
{action = RKL_commands.CMD_RKL_41_VOLUME_AXIS,		cockpit_device_id = devices.RKL_41,	name = _('RKL-41 ADF Volume Knob'),							category = {_('RKL-41 ADF Control Panel')}},
{action = RKL_commands.CMD_RKL_41_BRIGHTNESS_AXIS,	cockpit_device_id = devices.RKL_41,	name = _('RKL-41 ADF Brightness Knob'),						category = {_('RKL-41 ADF Control Panel')}},
{action = RKL_commands.CMD_RKL_41_DPRS_TUNE_AXIS,	cockpit_device_id = devices.RKL_41,	name = _('RKL-41 ADF Outer Beacon Frequency Tune Knob'),	category = {_('RKL-41 ADF Control Panel')}},
{action = RKL_commands.CMD_RKL_41_BPRS_TUNE_AXIS,	cockpit_device_id = devices.RKL_41,	name = _('RKL-41 ADF Inner Beacon Frequency Tune Knob'),	category = {_('RKL-41 ADF Control Panel')}},

------------------------------------------------
-- RSBN-5 Control Panel ------------------------
------------------------------------------------
{action = device_commands.Button_28,	cockpit_device_id = devices.RSBN_5,	name = _('RSBN Control Box Lighting Intensity Knob'),	category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{action = device_commands.Button_29,	cockpit_device_id = devices.RSBN_5,	name = _('RSBN Volume Rheostat'),						category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{action = device_commands.Button_30,	cockpit_device_id = devices.RSBN_5,	name = _('RSBN QNH Pressure Knob'),						category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},

------------------------------------------------
-- Armament Control Panel ----------------------
------------------------------------------------
{action = device_commands.Button_78,	cockpit_device_id = devices.WEAPON_SYSTEM,	name = _('Missile Seeker Tone Volume Knob'),	category = {_('Armament Control Panel'), _('Only Front Cockpit')}},

------------------------------------------------
-- Instrument Panel ----------------------------
------------------------------------------------
-- KPP
{action = device_commands.Button_12,	cockpit_device_id = devices.KPP_INPUT,		name = _('Artificial Horizon Zero Pitch Trim Knob'),	category = {_('Instrument Panel')}},

------------------------------------------------
-- Auxiliary Switch Panel ----------------------
------------------------------------------------
{action = device_commands.Button_30,	cockpit_device_id = devices.AIR_INTERFACE,	name = _('Cabin Air Temperature Controller Rheostat'),	category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},


})

return res
