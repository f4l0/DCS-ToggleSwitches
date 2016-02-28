local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")


return {

forceFeedback = {
trimmer = 1.0,
shake = 0.5,
swapAxes = false,
},

keyCommands = {


--Polaris Custom

--Alternate flaps
{down = device_commands.Button_1, up = device_commands.Button_2, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 1.0, name = _('Alternate Flaps Up middle'), category = _('Flight Control')},
{down = device_commands.Button_3, up = device_commands.Button_2, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 1.0, name = _('Alternate Flaps Landing middle'), category = _('Flight Control')},
--Alternate Throttle
{down = iCommandLeftEngineStop, up = iCommandLeftEngineStart, name = _('Alternate Throttle to IDLE Start'), category = _('Engine Control')},
--Alternate Gunsight Power
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 1.0, value_up = 0.0, name = _('Alternate Gunsight Power'), category = _('EZ42 gunsight')},
--Alternate Master Arm
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Alternate Main weapon switcher'), category = _('Weapon System')},
--Alternate Main Rocket Switch
{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Alternate Main Rocket Switch'), category = _('Weapon  System')},


{down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{down = iCommandEnginesStop, name = _('Stop Procedure'), category = _('Cheat')},


-- Gameplay
{down = iCommandActivePauseOnOff, name = _('Pause Active'), category = _('General')},
{down = iCommandQuit, name = _('Exit mission'), category = _('General')},
{down = iCommandViewBriefing, name = _('Briefing window'), category = _('General')},
{down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},
{down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
{down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
{down = iCommandChat, name = _('Multiplayer chat - mode All'), category = _('General')},
{down = iCommandFriendlyChat, name = _('Multiplayer chat - mode Allies'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
{down = iCommandScreenShot, name = _('Screenshot'), category = _('General')},
{down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
{down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
{down = iCommandViewCoordinatesInLinearUnits, name = _('Coordinates units change'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandPlane_ShowControls, name = _('Controls indicator') , category = _('General')},
{down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},
{down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},


-- Communications
{down = iCommandPlaneDoAndHome, name = _('COMM Dispatch wingmans - complete mission and RTB (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneDoAndBack, name = _('COMM Dispatch wingmans - complete mission and rejoin (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneFormation, name = _('COMM Toggle formation (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneJoinUp, name = _('COMM Join up formation (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneAttackMyTarget, name = _('COMM Attack my target (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneCoverMySix, name = _('COMM Cover me (easy communication only)'), category = _('Communications')},
{down = iCommandAWACSHomeBearing, name = _('COMM Ask AWACS home airbase (easy communication only)'), category = _('Communications')},
{down = iCommandPlane_EngageGroundTargets, name = _('COMM Attack Ground Targets (easy communication only)'), category = _('Communications')},
{down = iCommandPlane_EngageAirDefenses, name = _('COMM Attack Air Defenses (easy communication only)'), category = _('Communications')},
{down = iCommandToggleCommandMenu, name = _('COMM Communication menu'), category = _('Communications')},
{down = ICommandSwitchDialog, name = _('COMM Switch dialog'), category = _('Communications')},
{down = ICommandSwitchToCommonDialog, name = _('COMM Switch to main menu'), category = _('Communications')},
{down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk'), category = _('Communications')},

-- View                                                    
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UR'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DR'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DL'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UL'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

{pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},


{down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{down = iCommandViewChaseArcade, name = _('F4 Arcade View'), category = _('View')},
{down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{down = iCommandViewJFO, name = _('F7 Ground JFO/JTAC view'), category = _('View')},

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

{down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
{down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
{down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
{down = iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
{down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
{down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},


-- Cockpit view
{down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
{down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')}, -- Save current cockpit camera angles for fast numpad jumps  
{pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},
{down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},

{down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRightSlow, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{down = iCommandViewSnapView0,	up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{down = iCommandViewSnapView1,	up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{down = iCommandViewSnapView2,	up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{down = iCommandViewSnapView3,	up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{down = iCommandViewSnapView4,	up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{down = iCommandViewSnapView5,	up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{down = iCommandViewSnapView6,	up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{down = iCommandViewSnapView7,	up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{down = iCommandViewSnapView8,	up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{down = iCommandViewSnapView9,	up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Mirror left glance'), category = _('View Cockpit')},


{pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},

-- Cockpit Camera Motion (������������ ������ � ������)
{pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
{down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},

-- Extended view
{down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{down = iCommandViewKeepTerrain, name = _('Camera terrain altitude hold'), category = _('View Extended')},
{down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
{down = iCommandViewPlus, name = _('Camera ordinance tracking'), category = _('View Extended')},
{down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
{down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
{down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
{down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},

-- Padlock
{down = iCommandAllMissilePadlock, name = _('Padlock missiles all'), category = _('View Padlock')},
{down = iCommandThreatMissilePadlock, name = _('Padlock missile threat'), category = _('View Padlock')},
{down = iCommandViewLock, name = _('Padlock cycle'), category = _('View Padlock')},
{down = iCommandViewUnlock, name = _('Padlock Off (stop padlock)'), category = _('View Padlock')},
{down = iCommandViewTerrainLock, name = _('Padlock terrain point'), category = _('View Padlock')},


-- Labels
{down = iCommandMarkerState, name = _('Labels All'), category = _('Labels')},
{down = iCommandMarkerStatePlane, name = _('Labels Aircraft'), category = _('Labels')},
{down = iCommandMarkerStateRocket, name = _('Labels Missile'), category = _('Labels')},
{down = iCommandMarkerStateShip, name = _('Labels Vehicle & Ship'), category = _('Labels')},

-- Stick
{combos = {{key = 'JOY_BTN2'}}, 	down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Weapon release'), category = _('Stick')},
{combos = {{key = 'JOY_BTN1'}}, 	down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('MG131/151 fire'), category = _('Stick')},
{combos = {{key = 'JOY_BTN3'}},		down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('MG131 fire'), category = _('Stick')},

-- Flight Control
{down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Flight Nose Down'), category = _('Flight Control')},
{down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Flight Nose Up'), category = _('Flight Control')},
{down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Flight Left Wing Down'), category = _('Flight Control')},
{down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Flight Right Wing Down'), category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Flight Rudder Left'), category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Flight Rudder Right'), category = _('Flight Control')},

{pressed = device_commands.Button_2, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0, 	name = _('Throttle Increase'), category = _('Flight Control')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0,	name = _('Throttle Decrease'), category = _('Flight Control')},

-- Systems
{down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Wheel brake Both'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = _('Wheel brake Left'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel brake Right'), category = _('Systems')},
{down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},

{pressed = device_commands.Button_2, cockpit_device_id  = devices.CPT_MECH, value_pressed = 1.0, name = _('Canopy Opening'), category = _('Systems')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.CPT_MECH, value_pressed = -1.0, name = _('Canopy Closing'), category = _('Systems')},
{down = device_commands.Button_7, cockpit_device_id  = devices.CPT_MECH, value_down = 1.0, name = _('Canopy Emergency Release'), category = _('Systems')},

{pressed = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = -1.0, name = _('Horizon Cage'), category = _('Front Dash')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = 1.0, name = _('Horizon Uncage'), category = _('Front Dash')},

{pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = 0.05, name = _('Compass Bezel CW'), category = 'Front Dash'},
{pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = -0.05, name = _('Compass Bezel CCW'), category = 'Front Dash'},

--Altimeter 
{pressed = device_commands.Button_1, cockpit_device_id = devices.ALTIMETER, value_pressed = -0.04, name = _('Altimeter Pressure Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_1, cockpit_device_id = devices.ALTIMETER, value_pressed = 0.04, name = _('Altimeter Pressure Increase'), category = _('Front Dash')},

--- Kneeboard
{down = device_commands.Button_1, cockpit_device_id  = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = device_commands.Button_2, cockpit_device_id  = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = device_commands.Button_3	, cockpit_device_id  = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},


--GunSight EZ42
{down = device_commands.Button_14, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_down = 1.0,   name = _('Gunsight power'), category = _('EZ42 gunsight')},
{down = device_commands.Button_1, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 1.0, name = _('Gunsight ON'), category = _('EZ42 gunsight')},
{down = device_commands.Button_1, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 0.0, name = _('Gunsight OFF'), category = _('EZ42 gunsight')},

{down = device_commands.Button_15, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_down = 1.0,   name = _('Gunsight night lens'), category = _('EZ42 gunsight')},
{down = device_commands.Button_11, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 1.0, name = _('Gunsight Night Filter ON'), category = _('EZ42 gunsight')},
{down = device_commands.Button_11, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 0.0, name = _('Gunsight Night Filter OFF'), category = _('EZ42 gunsight')},

{pressed = device_commands.Button_6, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = 1.0,	 name = _('Gunsight brightness Increase'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_6, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = -1.0,	 name = _('Gunsight brightness Decrease'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_10, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = 0.5,   name = _('Gunsight target span Increase'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_10, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = -0.5,   name = _('Gunsight target span Decrease'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_16, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = 0.7,	 name = _('Gunsight range to target Increase'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_16, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = -0.7,	 name = _('Gunsight range to target Decrease'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_18, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = 1.0,	 name = _('Altitude correction Increase'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_18, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = -1.0,	 name = _('Altitude correction Decrease'), category = _('EZ42 gunsight')},


--Weapon System
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Bomb Emergency Release'), category = _('Weapon System')},
{down = device_commands.Button_13, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0,   name = _('Master Arm'), category = _('Weapon System')},
{down = device_commands.Button_3, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Master Arm ON'), category = _('Weapon System')},
{down = device_commands.Button_3, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Master Arm OFF'), category = _('Weapon System')},

{down = device_commands.Button_18, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = -1.0,   name = _('Bomb fusing selector Left'), category = _('Weapon System')},
{down = device_commands.Button_18, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0,   name = _('Bomb fusing selector Right'), category = _('Weapon System')},
{down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Bomb fusing selector dive OV'), category = _('Weapon System')},
{down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1, name = _('Bomb fusing selector dive MV'), category = _('Weapon System')},
{down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2, name = _('Bomb fusing selector OFF'), category = _('Weapon System')},
{down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3, name = _('Bomb fusing selector level MV'), category = _('Weapon System')},
{down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4, name = _('Bomb fusing selector level OV'), category = _('Weapon System')},

{pressed = device_commands.Button_14, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 1 Decrease'), category = _('Weapon System')},
{pressed = device_commands.Button_14, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 1 Increase'), category = _('Weapon System')},
{pressed = device_commands.Button_15, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 2 Decrease'), category = _('Weapon System')},
{pressed = device_commands.Button_15, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 2 Increase'), category = _('Weapon System')},
{pressed = device_commands.Button_16, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 3 Decrease'), category = _('Weapon System')},
{pressed = device_commands.Button_16, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 3 Increase'), category = _('Weapon System')},
{pressed = device_commands.Button_17, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 4 Decrease'), category = _('Weapon System')},
{pressed = device_commands.Button_17, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 4 Increase'), category = _('Weapon System')},

{down = device_commands.Button_8, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Main Rocket Switch ON'), category = _('Weapon System')},
{down = device_commands.Button_8, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Main Rocket Switch OFF'), category = _('Weapon System')},

{down = device_commands.Button_9, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Rocket Emergency Release Cover OPEN'), category = _('Weapon System')},
{down = device_commands.Button_10, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Rocket Emergency Release ON'), category = _('Weapon System')},
{down = device_commands.Button_10, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Rocket Emergency Release OFF'), category = _('Weapon System')},

--landing gear
{down = device_commands.Button_10, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Up/Down'), category = _('Systems')},

{down = device_commands.Button_11, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction Cover'), category = _('Systems')},
{down = device_commands.Button_6, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 0.0, name = _('Landing Gear Retraction Cover Down'), category = _('Systems')},
{down = device_commands.Button_6, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction Cover Up'), category = _('Systems')},

{down = device_commands.Button_5, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction'), category = _('Systems')},
{down = device_commands.Button_7, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Extending'), category = _('Systems')},

{down = device_commands.Button_9, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Emergency Release'), category = _('Systems')},
{down = device_commands.Button_8, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 0.0, name = _('Landing Gear Emergency Handle Push'), category = _('Systems')},
{down = device_commands.Button_8, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Emergency Handle Pull'), category = _('Systems')},

--flaps
{down = device_commands.Button_1, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Up'), category = _('Flight Control')},
{down = device_commands.Button_2, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Take Off'), category = _('Flight Control')},
{down = device_commands.Button_3, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Landing'), category = _('Flight Control')},

--engine control
{down = device_commands.Button_8, up = device_commands.Button_10, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.0, value_up = 0.5, name = _('Starter Power'), category = _('Engine Control')},
{down = device_commands.Button_9, up = device_commands.Button_10, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, value_up = 0.5, name = _('Starter Clutch'), category = _('Engine Control')},
{down = device_commands.Button_7, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Starter Switch Cover'), category = _('Engine Control')},

{down = device_commands.Button_14, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('MBG Emergency Handle'), category = _('Engine Control')},
{down = device_commands.Button_13, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('MBG Emergency Handle Push'), category = _('Engine Control')},
{down = device_commands.Button_13, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('MBG Emergency Handle Pull'), category = _('Engine Control')},

{down = device_commands.Button_16, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('MW-50 Switch'), category = _('Engine Control')},
{down = device_commands.Button_15, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('MW-50 Switch ON'), category = _('Engine Control')},
{down = device_commands.Button_15, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('MW-50 Switch OFF'), category = _('Engine Control')},

{down = device_commands.Button_5, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0,	 name = _('Magneto Switch Forward'), category = _('Engine Control')},
{down = device_commands.Button_5, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = -1.0,	 name = _('Magneto Switch Backward'), category = _('Engine Control')},

{down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('Magneto Switch OFF'), category = _('Engine Control')},
{down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.3, name = _('Magneto Switch 1'), category = _('Engine Control')},
{down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.6, name = _('Magneto Switch 2'), category = _('Engine Control')},
{down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.9, name = _('Magneto Switch 1+2'), category = _('Engine Control')},


{down = iCommandLeftEngineStart, name = _('Throttle to START'), category = _('Engine Control')},
{down = iCommandLeftEngineStop, name = _('Throttle to IDLE'), category = _('Engine Control')},
{down = device_commands.Button_12, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Throttle Control Lock'), category = _('Engine Control')},

--oxygen
{down = device_commands.Button_2, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = 1.0, name = _('Oxygen Emergency Knob'), category = _('Oxygen System')},
{down = device_commands.Button_1, cockpit_device_id = devices.OXYGEN_SYSTEM, value_down = 0.0, name = _('Emergency Oxygen ON'), category = _('Oxygen System')},
{down = device_commands.Button_1, cockpit_device_id = devices.OXYGEN_SYSTEM, value_down = 1.0, name = _('Emergency Oxygen OFF'), category = _('Oxygen System')},

{pressed = device_commands.Button_4, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_pressed = -0.5, name = _('Oxygen Valve Close'), category = _('Oxygen System')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_pressed = 0.5, name = _('Oxygen Valve Open'), category = _('Oxygen System')},

--trimmer
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Trim Elevator Down'), category = _('Flight Control')},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = -1.0, value_up = 0.0, name = _('Trim Elevator Up'), category = _('Flight Control')},

{pressed = device_commands.Button_14, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = -0.1, name = _('Radiator Flaps Close'), category = _('Engine Control')},
{pressed = device_commands.Button_14, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = 0.1, name = _('Radiator Flaps Open'), category = _('Engine Control')},

--fuel system
{down = device_commands.Button_5, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Selector Valve Up'), category = _('Fuel Control')},
{down = device_commands.Button_5, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Fuel Selector Valve Down'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.0, name = _('Fuel Selector Valve OFF'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.1, name = _('Fuel Selector Valve AFT Tank Closed'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.2, name = _('Fuel Selector Valve FWD Tank Closed'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.3, name = _('Fuel Selector Valve Open'), category = _('Fuel Control')},

{down = device_commands.Button_6, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Gauge Selector to the Right'), category = _('Fuel Control')},
{down = device_commands.Button_6, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Fuel Gauge Selector to the Left'), category = _('Fuel Control')},

{down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.0, name = _('Fuel Gauge Selector FWD'), category = _('Fuel Control')},
{down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.5, name = _('Fuel Gauge Selector OFF'), category = _('Fuel Control')},
{down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Gauge Selector AFT'), category = _('Fuel Control')},

{down = device_commands.Button_4, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('MW-B4 Selector'), category = _('Fuel Control')},

{down = device_commands.Button_8, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Cold Start/Wind Screen Washer to the Right'), category = _('Fuel Control')},
{down = device_commands.Button_8, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Cold Start/Wind Screen Washer to the Left'), category = _('Fuel Control')},

{down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Primer Pump'), category = _('Fuel Control')},

--radio
{down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Channel Selector CW'), category = _('VHF Radio')},
{down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = -1.0, name = _('Radio Channel Selector CCW'), category = _('VHF Radio')},
{down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Radio Channel Selector I'), category = _('VHF Radio')},
{down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.1, name = _('Radio Channel Selector II'), category = _('VHF Radio')},
{down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.2, name = _('Radio Channel Selector III'), category = _('VHF Radio')},
{down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.3, name = _('Radio Channel Selector IV'), category = _('VHF Radio')},

{down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Mode RADIO/ADF'), category = _('VHF Radio')},
{down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Radio Mode ADF'), category = _('VHF Radio')},
{down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Mode RADIO'), category = _('VHF Radio')},

{pressed = device_commands.Button_4, cockpit_device_id  = devices.VHF_RADIO, value_pressed = 0.2, name = _('Radio Volume Increase'), category = _('VHF Radio')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.VHF_RADIO, value_pressed = -0.2, name = _('Radio Volume Decrease'), category = _('VHF Radio')},

{pressed = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_pressed = 0.1, name = _('Radio Tuning Increase'), category = _('VHF Radio')},
{pressed = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_pressed = -0.1, name = _('Radio Tuning Decrease'), category = _('VHF Radio')},

--electric
{down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Electric Emergency Disconnect'), category = _('Electric System')},
{down = device_commands.Button_3, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Cover'), category = _('Electric System')},

{down = device_commands.Button_5, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Flaps, Trimmer, Artificial Horizon Power'), category = _('Electric System')},
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Flaps, Trimmer, Artificial Horizon Off'), category = _('Electric System')},
{down = device_commands.Button_6, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Landing Gear Power On'), category = _('Electric System')},
{down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Landing Gear Power Off'), category = _('Electric System')},
{down = device_commands.Button_7, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Pitot and Heating Cover On'), category = _('Electric System')},
{down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Pitot and Heating Cover Off'), category = _('Electric System')},
{down = device_commands.Button_8, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB FuG25a On'), category = _('Electric System')},
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB FuG25a Off'), category = _('Electric System')},
{down = device_commands.Button_9, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB FuG16ZY On'), category = _('Electric System')},
{down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB FuG16ZY Off'), category = _('Electric System')},
{down = device_commands.Button_10, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Instrument Lights, Gun-sight, Indicators, Compass, Starter On'), category = _('Electric System')},
{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Instrument Lights, Gun-sight, Indicators, Compass, Starter Off'), category = _('Electric System')},
{down = device_commands.Button_11, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Generator On'), category = _('Electric System')},
{down = device_commands.Button_24, up = device_commands.Button_24, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Generator Off'), category = _('Electric System')},
{down = device_commands.Button_12, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Battery On'), category = _('Electric System')},
{down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Battery Off'), category = _('Electric System')},

{down = device_commands.Button_13, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Navigation Lights On'), category = _('Electric System')},
{down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Navigation Lights Off'), category = _('Electric System')},
{down = device_commands.Button_14, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Forward Tank Pump On'), category = _('Electric System')},
{down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Forward Tank Pump Off'), category = _('Electric System')},
{down = device_commands.Button_15, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Rear Tank Pump On'), category = _('Electric System')},
{down = device_commands.Button_28, up = device_commands.Button_28, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Rear Tank Pump Off'), category = _('Electric System')},
{down = device_commands.Button_16, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Auxiliary Tank Pump On'), category = _('Electric System')},
{down = device_commands.Button_29, up = device_commands.Button_29, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Auxiliary Tank Pump Off'), category = _('Electric System')},
{down = device_commands.Button_17, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB MW-50 On'), category = _('Electric System')},
{down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB MW-50 Off'), category = _('Electric System')},

{pressed = device_commands.Button_1, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 0.007, name = _('Instrument Brightness Increase'), category = _('Electric System')},
{pressed = device_commands.Button_1, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -0.007, name = _('Instrument Brightness Decrease'), category = _('Electric System')},

--Clock
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.CLOCK, value_down = 1.0, value_up = 0.0,name = _('Stopwatch'), category = _('Clock')},

{down = device_commands.Button_2, cockpit_device_id = devices.CLOCK, value_down = 1.0, name = _('Clock Stop'), category = _('Clock')},
{down = device_commands.Button_2, cockpit_device_id = devices.CLOCK, value_down = 0.0, name = _('Clock Start'), category = _('Clock')},

{pressed = device_commands.Button_4, cockpit_device_id = devices.CLOCK, value_pressed = 0.002, name = _('Clock Bezel CW'), category = _('Clock')},
{pressed = device_commands.Button_4, cockpit_device_id = devices.CLOCK, value_pressed = -0.002, name = _('Clock Bezel CCW'), category = _('Clock')},

},
axisCommands = {

-- joystick axes 
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll, name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch, name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	, action = iCommandPlaneRudder, name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust"), action = device_commands.Button_3, cockpit_device_id  = devices.ENGINE_SYSTEM, name = _('Throttle')},

-- TrackIR axes
{action = iCommandViewVerticalAbs		, name = _('Absolute Camera Vertical View')},
{action = iCommandViewHorizontalAbs		, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewHorTransAbs		, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs		, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs	, name = _('Absolute Longitude Shift Camera View')},
{action = iCommandViewRollAbs			, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewZoomAbs			, name = _('Zoom View')},

{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},

{action = device_commands.Button_4, cockpit_device_id  = devices.CPT_MECH, name = _('Canopy Crank')},

{action = device_commands.Button_8, cockpit_device_id  = devices.EZ42_GUNSIGHT, name = _('Gunsight target span')},
{action = device_commands.Button_7, cockpit_device_id  = devices.EZ42_GUNSIGHT, name = _('Gunsight target range')},
{action = device_commands.Button_17, cockpit_device_id  = devices.EZ42_GUNSIGHT, name = _('Altitude correction')},

},
}
