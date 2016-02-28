local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

return {
forceFeedback = {
trimmer = 1.0,
shake = 0.5,
swapAxes = false,
invertX = false,
invertY = false,
},

keyCommands = {

-- Custom
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights, up = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = -1, value_up= 0, name = 'Alternate Landing & Taxi Lights - Retract & Off', category = 'Left Forward Console'},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights, up = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 1, value_up= 0, name = 'Alternate Landing & Taxi Lights - Off & On', category = 'Left Forward Console'},

{down = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw_EXT, up = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, value_up = 1, name = 'Alternate Engine Master', category = 'Right Forward Console'},

{down = iCommandPlaneFlapsOn, up = control_commands.F86_CockpitDeviceCommand_FlapsHandle, cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0, value_up = 0, name = 'Alternate Flaps Down', category = 'Systems'},
{down = iCommandPlaneFlapsOff, up = control_commands.F86_CockpitDeviceCommand_FlapsHandle, cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0, value_up = 0, name = 'Alternate Flaps Up', category = 'Systems'},

{down = iCommandEnginesStart, name = _('Auto Start'),	category = _('Cheat')},
{down = iCommandEnginesStop,  name = _('Auto Stop') ,	category = _('Cheat')},
{down = iCommandActivePauseOnOff, name = _('Active Pause'), 		category = _('Cheat')},

-- Debug
{down = iCommandMissionRestart, name = _('Restart Mission'), category = _('Debug')},

-- General
{down = iCommandQuit,				name = _('End mission'),					category = _('General')},
{down = iCommandBrakeGo,			name = _('Pause'),							category = _('General')},
{down = iCommandAccelerate,			name = _('Time accelerate'),				category = _('General')},
{down = iCommandDecelerate,			name = _('Time decelerate'),				category = _('General')},
{down = iCommandNoAcceleration,		name = _('Time normal'),					category = _('General')},
{down = iCommandScoresWindowToggle,	name = _('Score window'),					category = _('General')},
{down = iCommandChat, 				name = _('Multiplayer chat - mode All'),	category = _('General')},
{down = iCommandFriendlyChat,		name = _('Multiplayer chat - mode Allies'),category = _('General')},
{down = iCommandInfoOnOff,			name = _('Info bar view toggle'),			category = _('General')},

{down = iCommandRecoverHuman,				 name = _('Get new plane - respawn'),			category = _('General')},
{down = iCommandPlaneJump,					 name = _('Jump into selected aircraft'),		category = _('General')},
{down = iCommandScreenShot,					 name = _('Screenshot'),						category = _('General')},
{down = iCommandGraphicsFrameRate,			 name = _('Frame rate counter - Service info'),category = _('General')},
{down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toogle'),	category = _('General')},
{down = iCommandCockpitClickModeOnOff,		 name = _('Mouse cursor cockpit mode'),		category = _('General')},
{down = iCommandSoundOnOff,					 name = _('Sound On/Off'),						category = _('General')},
{down = iCommandMissionResourcesManagement,	 name = _('Rearming and Refueling Window'),	category = _('General')},	-- ??
{down = iCommandViewBriefing, name = _('View briefing on/off'),								category = _('General')},
{down = iCommandPlane_ShowControls,			 name = _('Show controls indicator'),			category = _('General')},

-- Flight Control
{down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Down'),			category = _('Flight Control')},
{down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Up'),			category = _('Flight Control')},
{down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),	category = _('Flight Control')},
{down = iCommandPlaneRightStart,		up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),	category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),	category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),	category = _('Flight Control')},

{pressed = iCommandPlaneTrimUp,			up = iCommandPlaneTrimStop,	name = _('Trim Up'),			category = _('Flight Control')},
{pressed = iCommandPlaneTrimDown,		up = iCommandPlaneTrimStop,	name = _('Trim Down'),			category = _('Flight Control')},
{pressed = iCommandPlaneTrimLeft,		up = iCommandPlaneTrimStop,	name = _('Trim Left'),			category = _('Flight Control')},
{pressed = iCommandPlaneTrimRight,		up = iCommandPlaneTrimStop,	name = _('Trim Right'),		category = _('Flight Control')},
{pressed = iCommandPlaneTrimLeftRudder,	up = iCommandPlaneTrimStop,	name = _('Trim Left Rudder'),	category = _('Flight Control')},
{pressed = iCommandPlaneTrimRightRudder,	up = iCommandPlaneTrimStop,	name = _('Trim Right Rudder'),	category = _('Flight Control')},

{pressed = iCommandThrottleIncrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Up'),	category = _('Flight Control')},
{pressed = iCommandThrottleDecrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Down'),	category = _('Flight Control')},

{down = iCommandPlaneAUTIncreaseRegime, name = _('Thrust Step Up'),	  category = _('Flight Control')},
{down = iCommandPlaneAUTDecreaseRegime, name = _('Thrust Step Down'), category = _('Flight Control')},

-- Systems
{down = iCommandPlaneAirBrake,				name = _('Airbrake'),					category = _('Systems')},
{pressed = iCommandPlaneAirBrakeOn,			up = iCommandPlaneAirBrakeOn,		value_pressed = 1,	value_up = 0,	name = _('Airbrake On'),	category = _('Systems')},
{pressed = iCommandPlaneAirBrakeOff,		up = iCommandPlaneAirBrakeOff, 		value_pressed = 1,	value_up = 0,	name = _('Airbrake Off'),	category = _('Systems')},
{down = iCommandPlaneWingtipSmokeOnOff,		name = _('Smoke'),						category = _('Systems')},
{down = iCommandPlaneFlaps,					name = _('Flaps Up/Down'),				category = _('Systems')},
{pressed = iCommandPlaneFlapsOn,			up = iCommandPlaneFlapsOn,			value_pressed = 1,	value_up = 0,	name = _('Flaps Down'),	category = _('Systems')},
{pressed = iCommandPlaneFlapsOff,			up = iCommandPlaneFlapsOff,			value_pressed = 1,	value_up = 0,	name = _('Flaps Up'),		category = _('Systems')},
{down = control_commands.F86_CockpitDeviceCommand_FlapsHandle,  cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0,  name = _('Flaps Stop'),  category = _('Systems')},
{down = iCommandPlaneGear,					name = _('Landing Gear Up/Down'),		category = _('Systems')},
{down = iCommandPlaneGearUp,				name = _('Landing Gear Up'),			category = _('Systems')},
{down = iCommandPlaneGearDown,				name = _('Landing Gear Down'),			category = _('Systems')},
{down = iCommandPlaneWheelBrakeOn,			up = iCommandPlaneWheelBrakeOff,	  name = _('Wheel Brake On'),			 category = _('Systems')},
{down = iCommandPlaneWheelBrakeLeftOn,		up = iCommandPlaneWheelBrakeLeftOff,  name = _('Wheel Brake Left On/Off'),  category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn,		up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake Right On/Off'), category = _('Systems')},
{down = iCommandPlaneJettisonWeapons, 		up = iCommandPlaneJettisonWeaponsUp,  name = _('Weapons Jettison'),		 category = _('Systems')},
{down = iCommandPlaneFonar, 				name = _('Canopy Open/Close'),			category = _('Systems')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_ManualCanopyJettison, up = cockpit_mechanics_commands.F86_CockpitDeviceCommand_ManualCanopyJettison,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1, value_up = 0,	name = _('Manual Canopy Jettison'),	category = _('Systems')},
{down = iCommandPlaneEject,					name = _('Eject (3 times)'),			category = _('Systems')},
{down = iCommandFlightClockReset,			name = _('Flight Clock Start/Stop/Reset'),			category = _('Systems')},
{down = iCommandClockElapsedTimeReset,		name = _('Elapsed Time Clock Start/Stop/Reset'),	category = _('Systems')},

-- Communications
{down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Communications')},
{down = iCommandPlaneDoAndBack, name = _('Flight - Complete mission and rejoin'), category = _('Communications')},
{down = iCommandPlaneFormation, name = _('Toggle Formation'), category = _('Communications')},
{down = iCommandPlaneJoinUp, name = _('Join Up Formation'), category = _('Communications')},
{down = iCommandPlaneAttackMyTarget, name = _('Attack My Target'), category = _('Communications')},
{down = iCommandPlaneCoverMySix, name = _('Cover Me'), category = _('Communications')},
{down = iCommandAWACSHomeBearing, name = _('Request AWACS Home Airbase'), category = _('Communications')},
{down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Communications')},
{down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Communications')},
{down = iCommandToggleCommandMenu,	 name = _('Communication menu'),		category = _('Communications')},
{down = ICommandSwitchDialog, 		 name = _('Switch dialog'),			category = _('Communications')},
{down = ICommandSwitchToCommonDialog, name = _('Switch to main menu'),		category = _('Communications')},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_MicrophoneBtn, up = radio_commands.F86_CockpitDeviceCommand_ARC27_MicrophoneBtn, cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = 1, value_up = 0, name = _('Microphone Button'), category = _('Communications')},

-- View
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UR'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DR'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DL'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UL'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN5'}}, pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

{pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{down = iCommandViewSpeedUp, name = _('F11 Camera moving forward'), category = _('View')},
{down = iCommandViewSlowDown, name = _('F11 Camera moving backward'), category = _('View')},


{down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
{down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
{down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},
{down = iCommandViewPitHeadOnOff, name = _('F1 Head shift movement on / off'), category = _('View')},

{down = iCommandViewFastKeyboard, name = _('Keyboard Rate Fast'), category = _('View')},
{down = iCommandViewSlowKeyboard, name = _('Keyboard Rate Slow'), category = _('View')},
{down = iCommandViewNormalKeyboard, name = _('Keyboard Rate Normal'), category = _('View')},
{down =  iCommandViewFastMouse, name = _('Mouse Rate Fast'), category = _('View')},
{down = iCommandViewSlowMouse, name = _('Mouse Rate Slow'), category = _('View')},
{down = iCommandViewNormalMouse, name = _('Mouse Rate Normal'), category = _('View')},

-- Cockpit view
{down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
--// Save current cockpit camera angles for fast numpad jumps
{down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')},
{pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Glance up'), category = _('View Cockpit')},
{down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Glance down'), category = _('View Cockpit')},
{down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Glance left'), category = _('View Cockpit')},
{down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Glance right'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Glance up-left'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Glance down-left'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Glance up-right'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Glance down-right'), category = _('View Cockpit')},
{down = iCommandViewPanToggle, name = _('Camera pan mode toggle'), category = _('View Cockpit')},

{down = iCommandViewCameraUpSlow, name = _('Camera snap view up'), category = _('View Cockpit')},
{down = iCommandViewCameraDownSlow, name = _('Camera snap view down'), category = _('View Cockpit')},
{down = iCommandViewCameraLeftSlow, name = _('Camera snap view left'), category = _('View Cockpit')},
{down = iCommandViewCameraRightSlow, name = _('Camera snap view right'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeftSlow, name = _('Camera snap view up-left'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeftSlow, name = _('Camera snap view down-left'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRightSlow, name = _('Camera snap view up-right'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRightSlow, name = _('Camera snap view down-right'), category = _('View Cockpit')},
{down = iCommandViewCameraCenter, name = _('Center Camera View'), category = _('View Cockpit')},
{down = iCommandViewCameraReturn, name = _('Return Camera'), category = _('View Cockpit')},
{down = iCommandViewCameraBaseReturn, name = _('Return Camera Base'), category = _('View Cockpit')},

{down = iCommandViewSnapView0,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  0'), category = _('View Cockpit')},
{down = iCommandViewSnapView1,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  1'), category = _('View Cockpit')},
{down = iCommandViewSnapView2,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  2'), category = _('View Cockpit')},
{down = iCommandViewSnapView3,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  3'), category = _('View Cockpit')},
{down = iCommandViewSnapView4,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  4'), category = _('View Cockpit')},
{down = iCommandViewSnapView5,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  5'), category = _('View Cockpit')},
{down = iCommandViewSnapView6,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  6'), category = _('View Cockpit')},
{down = iCommandViewSnapView7,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  7'), category = _('View Cockpit')},
{down = iCommandViewSnapView8,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  8'), category = _('View Cockpit')},
{down = iCommandViewSnapView9,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  9'), category = _('View Cockpit')},

{down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Mirror Left On'), category = _('View Cockpit')},
{down = iCommandViewRightMirrorOn,	up = iCommandViewRightMirrorOff, name = _('Mirror Right On'), category = _('View Cockpit')},
{down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},

{pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},

-- Extended view
{down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{down = iCommandViewKeepTerrain, name = _('Keep terrain camera altitude'), category = _('View Extended')},
{down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
{down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
{down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
{down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
{down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
{down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},

-- Padlock
{down = iCommandViewLock, name = _('Lock View (cycle padlock)'), category = _('View Padlock')},
{down = iCommandViewUnlock, name = _('Unlock view (stop padlock)'), category = _('View Padlock')},
{down = iCommandAllMissilePadlock, name = _('All missiles padlock'), category = _('View Padlock')},
{down = iCommandThreatMissilePadlock, name = _('Threat missile padlock'), category = _('View Padlock')},
{down = iCommandViewTerrainLock, name = _('Lock terrain view'), category = _('View Padlock')},

-- Labels
{down = iCommandMarkerState, name = _('All Labels'), category = _('Labels')},
{down = iCommandMarkerStatePlane, name = _('Aircraft Labels'), category = _('Labels')},
{down = iCommandMarkerStateRocket, name = _('Missile Labels'), category = _('Labels')},
{down = iCommandMarkerStateShip, name = _('Vehicle & Ship Labels'), category = _('Labels')},

--Kneeboard
{down = 3001, cockpit_device_id  = 100, value_down = 1.0, name = _('Kneeboard Next Page'),		category = _('Kneeboard')},
{down = 3002, cockpit_device_id  = 100, value_down = 1.0, name = _('Kneeboard Previous Page'),	category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard,						name = _('Kneeboard ON/OFF'),			category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = 3003, cockpit_device_id  = 100,value_down = 1.0,	name = _('Kneeboard current position mark point'), category = _('Kneeboard')},

-- Instrument panel

-- Left side panel

-- AN/ARN-6 Radio Compass
{down = radio_compass_commands.ARN6_MODE_SELECT_ITER,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,		name = _('AN/ARN-6 Function Selector Switch - CW'),			category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_MODE_SELECT_ITER,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,	name = _('AN/ARN-6 Function Selector Switch - CCW'),		category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_LOOP_LR_SWITCH,		up = radio_compass_commands.ARN6_LOOP_LR_SWITCH,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 1,	value_up = 0,	name = _('AN/ARN-6 Loop Switch - Right'),		category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_LOOP_LR_SWITCH,		up = radio_compass_commands.ARN6_LOOP_LR_SWITCH,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -1,	value_up = 0,	name = _('AN/ARN-6 Loop Switch - Left'),		category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_TUNE_FREQUENCY_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 1,	name = _('AN/ARN-6 Tuning Crank - CW/Increase Frequency'),	category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_TUNE_FREQUENCY_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -1,	name = _('AN/ARN-6 Tuning Crank - CCW/Decrease Frequency'),	category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_LIGHT_SW_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,		name = _('AN/ARN-6 Scale Light Switch - Up'),				category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_LIGHT_SW_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,	name = _('AN/ARN-6 Scale Light Switch - Down'),				category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_BAND_SELECT_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,		name = _('AN/ARN-6 Frequency Band Switch - CW/Increase'),	category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_BAND_SELECT_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,	name = _('AN/ARN-6 Frequency Band Switch - CCW/Decrease'),	category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_GAIN_CONTROL_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 0.3,	name = _('AN/ARN-6 Audio Volume Control - Up'),			category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_GAIN_CONTROL_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -0.3,	name = _('AN/ARN-6 Audio Volume Control - Down'),		category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_SCALE_POS_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 1,	name = _('AN/ARN-6 East/West Variation Knob - CW/West'),	category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_SCALE_POS_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -1,	name = _('AN/ARN-6 East/West Variation Knob - CCW/East'),	category = _('AN/ARN-6 Radio Compass')},

-- AN/ARC-27 UHF Radio
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_PresetChannel_EXT, cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = 1,  name = _('AN/ARC-27 UHF Preset Channel Selector - CW/Increase'),	category = _('AN/ARC-27 UHF Radio')},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_PresetChannel_EXT, cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = -1, name = _('AN/ARC-27 UHF Preset Channel Selector - CCW/Decrease'),	category = _('AN/ARC-27 UHF Radio')},
{pressed = radio_commands.F86_CockpitDeviceCommand_ARC27_Volume_EXT,	 cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_pressed = 0.075,  name = _('AN/ARC-27 UHF Audio Volume Knob - CW/Up'),		category = _('AN/ARC-27 UHF Radio')},
{pressed = radio_commands.F86_CockpitDeviceCommand_ARC27_Volume_EXT,	 cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_pressed = -0.075, name = _('AN/ARC-27 UHF Audio Volume Knob - CCW/Down'),		category = _('AN/ARC-27 UHF Radio')},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_Mode_EXT,			 cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = 1,  name = _('AN/ARC-27 UHF Power Switch - CW'),						category = _('AN/ARC-27 UHF Radio')},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_Mode_EXT,			 cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = -1, name = _('AN/ARC-27 UHF Power Switch - CCW'),						category = _('AN/ARC-27 UHF Radio')},

-- AN/APX-6 IFF Transponder
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = 1,		name = _('AN/APX-6 IFF Master Switch - CW'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = -1,		name = _('AN/APX-6 IFF Master Switch - CCW'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = 1,		name = _('AN/APX-6 IFF Mode 2 Switch - Up'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = -1,		name = _('AN/APX-6 IFF Mode 2 Switch - Down'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode3Sw_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = 1,		name = _('AN/APX-6 IFF Mode 3 Switch'),			category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSwCover_EXT,	cockpit_device_id = devices.AN_APX6_IFF, value_down = 1,	name = _('AN/APX-6 IFF Destruct Switch Cover'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSw, up = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSw, cockpit_device_id = devices.AN_APX6_IFF, value_down = 1, value_up = -1,	name = _('AN/APX-6 IFF Destruct Switch'),		category = _('AN/APX-6 IFF Transponder')},

-- Left forward console
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen_EXT, cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,  name = _('Engine Anti-Ice & Screen Switch - Up'),	 category = _('Left Forward Console')},
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen_EXT, cockpit_device_id = devices.AIR_INTERFACE, value_down = -1, name = _('Engine Anti-Ice & Screen Switch - Down'), category = _('Left Forward Console')},
{down = hydro_commands.F86_CockpitDeviceCommand_HornCutOut,		 up = hydro_commands.F86_CockpitDeviceCommand_HornCutOut, cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1, value_up = 0, name = _('Landing Gear Warning Horn Cutout Button'), category = _('Left Forward Console')},
{down = air_commands.F86_CockpitDeviceCommand_PitotHeater_Sw_EXT,	 cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,	   name = _('Pitot Heater Switch'),	category = _('Left Forward Console')},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights_EXT, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 1,  name = _('Landing & Taxi Lights Switch - Up'),		category = _('Left Forward Console')},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights_EXT, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = -1, name = _('Landing & Taxi Lights Switch - Down'),	category = _('Left Forward Console')},

-- Drop tank control panel
{down = fuel_commands.F86_CockpitDeviceCommand_TankSelector_Sw_EXT,  cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1,  name = _('Drop Tank Selector Switch - CW'),  category = _('Drop Tank Control Panel')},
{down = fuel_commands.F86_CockpitDeviceCommand_TankSelector_Sw_EXT,  cockpit_device_id = devices.FUEL_INTERFACE, value_down = -1, name = _('Drop Tank Selector Switch - CCW'), category = _('Drop Tank Control Panel')},
{down = fuel_commands.F86_CockpitDeviceCommand_TankJettison_Btn, up = fuel_commands.F86_CockpitDeviceCommand_TankJettison_Btn, cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1, value_up = 0, name = _('Drop Tank Jettison Button'), category = _('Drop Tank Control Panel')},
{down = fuel_commands.F86_CockpitDeviceCommand_OutDropTanksEmpty_TPLmp, up = fuel_commands.F86_CockpitDeviceCommand_OutDropTanksEmpty_TPLmp, cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1, value_up = 0, name = _('Outboard Drop Tank Empty Indicator Light'), category = _('Drop Tank Control Panel')},
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Bomb-Rocket-Tank Jettison Button'), category = _('Drop Tank Control Panel')},

-- Right forward console
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSwCover_EXT, cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Generator Switch Cover'),	category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT,		 cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Generator Switch - Up'),			category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT,		 up = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = -1, value_up = 0,  name = _('Generator Switch - Down'), category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw_EXT,	 cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Engine Master Switch'),		category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT, cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Battery-Starter Switch - Up'),			category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT, up = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	  value_down = -1, value_up = 0,  name = _('Battery-Starter Switch - Down'),  category = _('Right Forward Console')},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart_Cover_EXT,	 cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,	name = _('Emergency (In-air) Ignition Switch Cover'),	category = _('Right Forward Console')},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart,				 up = engine_commands.F86_CockpitDeviceCommand_AirStart,			cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,  value_up = -1, name = _('Emergency (In-air) Ignition Switch'), category = _('Right Forward Console')},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrectionCover_EXT,	cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1,	name = _('Fuel Densitometer Selection Switch Cover'),	category = _('Right Forward Console')},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrection_EXT,	 cockpit_device_id = devices.FUEL_INTERFACE,	value_down = 1,	name = _('Fuel Densitometer Selection Switch'),			category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_StopStarterBtn,			 up = electric_commands.F86_CockpitDeviceCommand_StopStarterBtn,	cockpit_device_id = devices.ELEC_INTERFACE,	  value_down = 1,  value_up = 0,  name = _('Stop-Starter Button'),	category = _('Right Forward Console')},
{down = light_commands.F86_CockpitDeviceCommand_StandByCompassLightSw_EXT,	 cockpit_device_id = devices.LIGHT_INTERFACE,	value_down = 1,	name = _('Compass Light Switch'),				category = _('Right Forward Console')},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLtsDimmer_EXT, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 1,	name = _('Exterior Lighting Dimmer Switch'),			category = _('Right Forward Console')},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts_EXT,		 cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 1,  name = _('Position and Fuselage Light Selector Switch - Up'),	 category = _('Right Forward Console')},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts_EXT,		 cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = -1, name = _('Position and Fuselage Light Selector Switch - Down'), category = _('Right Forward Console')},

-- Interior Light Control Panel
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelPrimLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Instrument Panel Primary Light Rheostat - CW/Increase'),		category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelPrimLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Instrument Panel Primary Light Rheostat - CCW/Decrease'),		category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelAuxLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Instrument Panel Auxiliary Light Rheostat - CW/Increase'),		category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelAuxLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Instrument Panel Auxiliary Light Rheostat - CCW/Decrease'),	category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_ConsoleAndPanelLightControl_EXT, cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Console and Panel Light Rheostat - CW/Increase'),				category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_ConsoleAndPanelLightControl_EXT, cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Console and Panel Light Rheostat - CCW/Decrease'),				category = _('Interior Light Control Panel')},

-- Stick grip
{combos = {{key = 'JOY_BTN6'}},	down = iCommandPlane_HOTAS_NoseWheelSteeringButton, up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, name = _('Nosewheel Steering Button'), category = _('Stick Grip')},
{combos = {{key = 'JOY_BTN1'}},	down = iCommandPlaneFire, up = iCommandPlaneFireOff,			name = _('Gun Fire'),		category = _('Stick Grip')},
{combos = {{key = 'JOY_BTN2'}}, down = iCommandPlanePickleOn,	up = iCommandPlanePickleOff,	name = _('Weapon Release'), category = _('Stick Grip')},

-- Lighting control panels

-- Oxygen Regulator

-- A-4 Sight
{pressed = iCommandPlaneIncreaseBase_Distance , up = iCommandPlaneStopBase_Distance	, name = _('A-4 Sight Wing Span Adjustment Knob - Wing Span Increase')	  , category = _('A-4 Sight')},
{pressed = iCommandPlaneDecreaseBase_Distance , up = iCommandPlaneStopBase_Distance	, name = _('A-4 Sight Wing Span Adjustment Knob - Wing Span Decrease')	  , category = _('A-4 Sight')},
{pressed = device_commands.Button_18, up = device_commands.Button_20, cockpit_device_id = devices.A4_GUNSIGHT, value_pressed = 1, value_up = 0,  name = _('A-4 Sight Manual Ranging Control (Throttle Twist Grip) - CCW/Increase'), category = _('A-4 Sight')},
{pressed = device_commands.Button_19, up = device_commands.Button_20, cockpit_device_id = devices.A4_GUNSIGHT, value_pressed = 1, value_up = 0,  name = _('A-4 Sight Manual Ranging Control (Throttle Twist Grip) - CW/Decrease'), category = _('A-4 Sight')},
{combos = {{key = 'JOY_BTN4'}},	down    = iCommandPlaneDesignate_CageOn	  , up = iCommandPlaneDesignate_CageOff	, name = _('A-4 Sight Electrical Caging Button (On Throttle)'), category = _('A-4 Sight')},
{down = device_commands.Button_17,	cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,	name = _('A-4 Sight Mechanical Caging Lever'),	category = _('A-4 Sight')},
{combos = {{key = 'JOY_BTN3'}}, down = iCommandPlaneChangeLock,		up = iCommandPlaneChangeLockUp,			name = _('A-4 Sight Radar Target Selector Button'), category = _('A-4 Sight')},
{pressed = device_commands.Button_5,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.2,	name = _('A-4 Sight Reticle Dimmer Control - CW/BRIGHT'),						category = _('A-4 Sight')},
{pressed = device_commands.Button_5,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.2,	name = _('A-4 Sight Reticle Dimmer Control - CCW/DIM'),							category = _('A-4 Sight')},
{pressed = device_commands.Button_2,	cockpit_device_id = devices.AN_APG_30,		value_pressed = 1,		name = _('A-4 Sight Radar Range Sweep Rheostat - CW/Increase'),					category = _('A-4 Sight')},
{pressed = device_commands.Button_2,	cockpit_device_id = devices.AN_APG_30,		value_pressed = -1, 	name = _('A-4 Sight Radar Range Sweep Rheostat - CCW/Decrease'),				category = _('A-4 Sight')},
{pressed = device_commands.Button_35,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 1,		name = _('A-4 Sight Bombing Altimeter Target Altitude Knob - CW/Increase'),		category = _('A-4 Sight')},
{pressed = device_commands.Button_35,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -1, 	name = _('A-4 Sight Bombing Altimeter Target Altitude Knob - CCW/Decrease'),	category = _('A-4 Sight')},
{pressed = device_commands.Button_36,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 1,		name = _('A-4 Sight Bombing Altimeter Index Altitude Handle - CW/Increase'),	category = _('A-4 Sight')},
{pressed = device_commands.Button_36,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -1, 	name = _('A-4 Sight Bombing Altimeter Index Altitude Handle - CCW/Decrease'), 	category = _('A-4 Sight')},

-- Center pedestal
{pressed = device_commands.Button_21,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.2,	name = _('Bomb-Target Wind Control Knob - CW'),			category = _('Center Pedestal')},
{pressed = device_commands.Button_21,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.2,	name = _('Bomb-Target Wind Control Knob - CCW'),		category = _('Center Pedestal')},
{down = device_commands.Button_22,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,			name = _('Variable Sight Selector Unit - Target Speed Switch'),					category = _('Center Pedestal')},
{down = device_commands.Button_29,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Variable Sight Selector Unit - Sight Function Selector Lever - CCW'),	category = _('Center Pedestal')},
{down = device_commands.Button_29,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Variable Sight Selector Unit - Sight Function Selector Lever - CW'),	category = _('Center Pedestal')},
{pressed = device_commands.Button_23,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.1,	name = _('Variable Sight Selector Unit - Rocket Depression Angle Selector - CW'),	category = _('Center Pedestal')},
{pressed = device_commands.Button_23,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.1,	name = _('Variable Sight Selector Unit - Rocket Depression Angle Selector - CCW'),	category = _('Center Pedestal')},
{down = electric_commands.F86_CockpitDeviceCommand_InverterSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Instrument Power Switch'),		category = _('Center Pedestal')},
{down = device_commands.Button_26,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Gun Heater Switch'),						category = _('Center Pedestal')},
{down = device_commands.Button_25,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Gun-Missile Selector Switch - CCW'),		category = _('Center Pedestal')},
{down = device_commands.Button_25,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Gun-Missile Selector Switch - CW'),		category = _('Center Pedestal')},
{down = device_commands.Button_28,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Rocket Release Selector Switch Cover'),	category = _('Center Pedestal')},
{down = device_commands.Button_27,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Rocket Release Selector Switch - Up'),	category = _('Center Pedestal')},
{down = device_commands.Button_27,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Rocket Release Selector Switch - Down'),	category = _('Center Pedestal')},
{down = device_commands.Button_30,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Rocket Jettison Switch'),					category = _('Center Pedestal')},
{down = device_commands.Button_31,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Rocket Fuze (Arming) Switch'),			category = _('Center Pedestal')},
{down = device_commands.Button_32,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Demolition Bomb Release Selector Switch'),		category = _('Center Pedestal')},
{down = device_commands.Button_33,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Demolition Bomb Sequence Selector Switch - CW'),	category = _('Center Pedestal')},
{down = device_commands.Button_33,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Demolition Bomb Sequence Selector Switch - CCW'),	category = _('Center Pedestal')},
{down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Demolition Bomb Arming Switch - Up'),		category = _('Center Pedestal')},
{down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Demolition Bomb Arming Switch - Down'),	category = _('Center Pedestal')},
{down = device_commands.Button_24,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,			name = _('A-4 Sight Filament Selector Switch'),		category = _('Center Pedestal')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CanopyDeclutchHandle_EXT,		cockpit_device_id = devices.COCKPIT_MECHANICS,	value_down = 1,		name = _('Canopy Declutch Handle'),	category = _('Center Pedestal')},

-- Left CB panel

-- Right CB panel



-- Systems
{down = iCommandPlaneJettisonFuelTanks, up = iCommandPlaneJettisonFuelTanksUp, name = _('Jettison Fuel Tanks'), category = _('Systems')},

{down = control_commands.F86_CockpitDeviceCommand_EngineStart, cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1, name = _('Throttle - Start Engine'), category = _('Systems')},
{down = control_commands.F86_CockpitDeviceCommand_EngineStop,  cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1, name = _('Throttle - Stop Engine'),  category = _('Systems')},

},
-- joystick axes
axisCommands = {
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll, name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch, name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	,  action = iCommandPlaneRudder, name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust")	, action = iCommandPlaneThrustCommon, name = _('Thrust')},
--{action = iCommandPlaneTrimPitchAbs			, name = _('Trim Pitch')},
--{action = iCommandPlaneTrimRollAbs			, name = _('Trim Roll')},
--{action = iCommandPlaneTrimRudderAbs		, name = _('Trim Rudder')},

{action = iCommandViewHorizontalAbs			, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewVerticalAbs			, name = _('Absolute Camera Vertical View')},
{action = iCommandViewZoomAbs				, name = _('Zoom View')},
{action = iCommandViewRollAbs 				, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewHorTransAbs 			, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs 			, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs 	, name = _('Absolute Longitude Shift Camera View')},

{action = iCommandPlaneSelecterVerticalAbs	, name = _('Manual Range')},
{action = iCommandPlaneBase_DistanceAbs 	, name = _('Wing Span')},

{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},
},
}
