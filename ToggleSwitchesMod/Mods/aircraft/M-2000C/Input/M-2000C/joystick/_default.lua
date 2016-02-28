local res = external_profile("Config/Input/Aircrafts/base_joystick_binding.lua")
join(res.keyCommands,{

-- Custom Commands
{down = iCommandPlaneCobra, up = iCommandPlaneCobra, name = 'FBW G Limiter Air-to-Air/Air-to-Ground', category = 'Custom Conrtols'},
{down = iCommandPilotSeatAdjustmentUp  ,	up = iCommandPilotSeatAdjustmentStop, name = _('Seat Adjustment Up'),	category = _('Custom Conrtols')},
{down = iCommandPilotSeatAdjustmentDown,	up = iCommandPilotSeatAdjustmentStop, name = _('Seat Adjustment Down'),	category = _('Custom Conrtols')},
{down = iCommandSwitchMasterArm, up = iCommandSwitchMasterArm, name = 'Master Arm Switch', category = 'Custom Conrtols'},


-- Autopilot
{down = iCommandPlaneAutopilot, name = 'Autopilot', category = 'Autopilot'},
{down = iCommandPlaneStabHbar,  name = 'Autopilot - Barometric Altitude Hold', category = 'Autopilot'},
{down = iCommandPlaneSAUHBarometric, name = 'Autopilot - Selected Barometric Altitude Hold', category = 'Autopilot'},
{down = iCommandPlaneRouteAutopilot, name = 'Autopilot - Approach Hold', category = 'Autopilot'},
{down = iCommandPlane_HOTAS_PinkySwitchAft, up = iCommandPlane_HOTAS_PinkySwitchForward, name = 'Autopilot Disconnect / Hard Stop Enable', category = 'HOTAS'},


-- Systems
{down = iCommandPlaneFuelOn, up = iCommandPlaneFuelOff, name = 'Fuel Dump', category = 'Systems'},
{down = iCommandPlaneJettisonFuelTanks, name = 'Jettison Fuel Tanks', category = 'Systems'},
{down = iCommandPowerOnOff, name = 'Electric Power Switch', category = 'Systems'},
{pressed = iCommandAltimeterPressureIncrease,	up = iCommandAltimeterPressureStop, name = 'Altimeter Pressure Increase Su-25T', category = 'Systems'},
{pressed = iCommandAltimeterPressureDecrease, up = iCommandAltimeterPressureStop, name = 'Altimeter Pressure Decrease Su-25T', category = 'Systems'},
{down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Wheel Brake On/Off (In Air: Control Hard Stop)'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake Right On/Off'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = _('Wheel Brake Left On/Off'), category = _('Systems')},

-- Sensors
{pressed = iCommandSelecterUp, up = iCommandSelecterStop, name = 'Radar Antenna Up', category = 'Sensors'},
{pressed = iCommandSelecterDown, up = iCommandSelecterStop, name = 'Radar Antenna Down', category = 'Sensors'},
{pressed = iCommandSelecterLeft, up = iCommandSelecterStop, name = 'Radar Antenna Left', category = 'Sensors'},
{pressed = iCommandSelecterRight, up = iCommandSelecterStop, name = 'Radar Antenna Right', category = 'Sensors'},

{down = iCommandPlaneZoomIn, name = 'Display Zoom In', category = 'Sensors'},
{down = iCommandPlaneZoomOut, name = 'Display Zoom Out', category = 'Sensors'},
--{pressed = iCommandPlaneIncreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = 'Target Size / Gunpod Elevation Increase', category = 'Sensors'},
--{pressed = iCommandPlaneDecreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = 'Target Size / Gunpod Elevation Decrease', category = 'Sensors'},
--{down = iCommandChangeRWRMode, name = 'RWR/SPO Mode Select', category = 'Sensors'},
--{down = iCommandPlaneThreatWarnSoundVolumeDown, name = 'RWR/SPO Sound Signals Volume Down', category = 'Sensors'},
--{down = iCommandPlaneThreatWarnSoundVolumeUp, name = 'RWR/SPO Sound Signals Volume Up', category = 'Sensors'},


-- Countermeasures
--{down = iCommandActiveJamming, name = 'Toggle ECM', category = 'Countermeasures'},

--Armament Panel PCA
{down = iCommandSwitchMasterArm,    name = 'Master Arm Switch', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB1,  name = 'PCA Button 1', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB2,  name = 'PCA Button 2', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB3,  name = 'PCA Button 3', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB4,  name = 'PCA Button 4', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB5,  name = 'PCA Button 5', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB6,  name = 'Gun Mode Select', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB7,  name = 'Magic II Select', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB8,  name = 'Stores 2 Select', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB9,  name = 'Stores 3 Select', category = 'Armament Panel (PCA)'},
{down = iCommandPlaneLeftMFD_OSB10, name = 'Stores 4 Select', category = 'Armament Panel (PCA)'},

--HOTAS
{down = iCommandPlaneModeCannon,   name = "Cannon Select", category = "HOTAS"},
{down = iCommandPlaneModeFI0,      name = 'Magic II Select', category = 'HOTAS'},

{down = iCommandPlaneModeVS,     name = 'Close Air Combat Mode', category = 'HOTAS'},
{down = iCommandPlaneModeHelmet, name = 'Special Modes Deselect', category = 'HOTAS'},
{down = iCommandPlaneModeGrid,   name = 'Ground Advoidance Mode', category = 'HOTAS'},
{down = iCommandPlane_HOTAS_MIC_SwitchUp,    up = iCommandPlane_HOTAS_MIC_SwitchOff, name = _('Main Radio Select'),    category = _('HOTAS')},
{down = iCommandPlane_HOTAS_MIC_SwitchDown,  up = iCommandPlane_HOTAS_MIC_SwitchOff, name = _('Aux Radio Select'),  category = _('HOTAS')},

--{down = iCommandPlaneModeNAV,    name = 'Master Mode NAV', category = 'HOTAS'},
--{down = iCommandPlaneModeBVR,    name = 'Master Mode Air-to-Air', category = 'HOTAS'},
--{down = iCommandPlaneModeGround, name = 'Master Mode Air-to-Ground', category = 'HOTAS'},

{down = iCommandDecreaseRadarScanArea, name = 'Radar Range Decrease', category = 'HOTAS'},
{down = iCommandIncreaseRadarScanArea, name = 'Radar Range Increase', category = 'HOTAS'},

{pressed = iCommandPlaneRadarUp,    up = iCommandPlaneRadarStop, name = 'TDC Up',     category = 'HOTAS'},
{pressed = iCommandPlaneRadarDown,  up = iCommandPlaneRadarStop, name = 'TDC Down',   category = 'HOTAS'},
{pressed = iCommandPlaneRadarLeft,  up = iCommandPlaneRadarStop, name = 'TDC Left',   category = 'HOTAS'},
{pressed = iCommandPlaneRadarRight, up = iCommandPlaneRadarStop, name = 'TDC Right',  category = 'HOTAS'},
{down = iCommandPlaneRadarCenter, name = 'TDC Center', category = 'HOTAS'},

{down = iCommandPlaneChangeLock, name = 'Target Lock', category = 'HOTAS'},
{down = iCommandRefusalTWS, name = 'Target Unlock', category = 'HOTAS'},
{down = iCommandPlane_HOTAS_BoatSwitchAft, up = iCommandPlane_HOTAS_BoatSwitchForward, name = 'Nosewheel Steering Button / IFF', category = 'HOTAS'},
{pressed = iCommandPlaneAutopilotOverrideOn, up = iCommandPlaneAutopilotOverrideOff, name = 'Autopilot Standby', category = 'HOTAS'},

})

-- joystick axes
join(res.axisCommands,{
{action = iCommandPlaneSelecterHorizontalAbs, name = 'I-251 Slew Horizontal'},
{action = iCommandPlaneSelecterVerticalAbs	, name = 'I-251 Slew Vertical'},
{action = iCommandPlaneMFDZoomAbs 			, name = 'I-251 Zoom'},
{action = iCommandPlaneBase_DistanceAbs 	, name = 'Target Box Size / Funnel target wing span / Gunpod Elevation'},
{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},
{action = iCommandPlaneRadarHorizontalAbs, name = _('Radar/TDC Slew Horizontal')},
{action = iCommandPlaneRadarVerticalAbs, name = _('Radar/TDC Slew Vertical')},
})
return res
