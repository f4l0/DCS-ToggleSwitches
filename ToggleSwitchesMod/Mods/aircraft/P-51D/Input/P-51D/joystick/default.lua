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


--Custom Polaris
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = ' Alternate Gun safety switch GUN CAMERA SIGHT', category = 'DCSToggleSwitches'},
{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.0, value_up = 0.1, name = 'Alternate Mixture IDLE CUT OFF', category = 'DCSToggleSwitches'},
{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.2, value_up = 0.1, name = 'Alternate Mixture EMERGENCY FULL RICH', category = 'DCSToggleSwitches'},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.3, value_up= 0.0, name = 'Alternate Ignition switch BOTH', category = 'DCSToggleSwitches'},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id  = devices.K14_GUNSIGHT, value_down = 0.0, value_up = 0.1, name = 'AlternTE Gunsight mode FIXED', category = 'DCSToggleSwitches'},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id  = devices.K14_GUNSIGHT, value_down = 0.2, value_up = 0.1, name = 'Alternate Gunsight mode GYRO', category = 'DCSToggleSwitches'},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1, value_up = 0, name = 'Alternate Fuel shut-off valve', category = 'DCSToggleSwitches'},


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
{down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toggle'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandPlane_ShowControls, name = _('Show controls indicator') , category = _('General')},
{down = iCommandCockpitShowPilotOnOff, name = _('Show pilot body'), category = _('General')},
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
{combos = {{key = 'JOY_BTN1'}}, 	down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('Gun fire'), category = _('Stick')},

-- Flight Control
{down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Aircraft Pitch Down'), category = _('Flight Control')},
{down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Aircraft Pitch Up'), category = _('Flight Control')},
{down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Aircraft Bank Left'), category = _('Flight Control')},
{down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Aircraft Bank Right'), category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Aircraft Rudder Left'), category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Aircraft Rudder Right'), category = _('Flight Control')},

{pressed = device_commands.Button_23, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0, 	name = _('Throttle Up'), category = _('Flight Control')},
{pressed = device_commands.Button_23, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0,	name = _('Throttle Down'), category = _('Flight Control')},
{pressed = device_commands.Button_24, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0,	name = _('Engine RPM Increase'), category = _('Flight Control')},
{pressed = device_commands.Button_24, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0,	name = _('Engine RPM Decrease'), category = _('Flight Control')},

{down = iCommandPlane_P_51_WarEmergencyPower, name = _('War Emergency Power'), category = _('Flight Control')},


{down = device_commands.Button_11, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('Mixture IDLE CUT OFF'), category = _('Flight Control')},
{down = device_commands.Button_11, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.1, name = _('Mixture RUN'), category = _('Flight Control')},
{down = device_commands.Button_11, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.2, name = _('Mixture EMERGENCY FULL RICH'), category = _('Flight Control')},
{down = device_commands.Button_20, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Mixture control (rotary)'), category = _('Flight Control')},

{down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Stick lock in the Forward Position'), category = _('Flight Control')},
{down = device_commands.Button_16, up = device_commands.Button_16, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Stick lock in the Neutral Position'), category = _('Flight Control')},

{pressed = device_commands.Button_13, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0, name = _('Throttle Control Lock'), category = _('Flight Control')},
{pressed = device_commands.Button_13, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0, name = _('Throttle Control Unlock'), category = _('Flight Control')},
{pressed = device_commands.Button_15, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0, name = _('Propeller & Mixture Lock'), category = _('Flight Control')},
{pressed = device_commands.Button_15, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0, name = _('Propeller & Mixture Unlock'), category = _('Flight Control')},

--flaps
{down = device_commands.Button_2, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Up'), category = _('Flight Control')},
{down = device_commands.Button_2, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 0.0, name = _('Flaps Down'), category = _('Flight Control')},

--Trimmers
{pressed = device_commands.Button_11, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = -0.1, name = _('Trim Aileron Left'), category = _('Flight Control')},
{pressed = device_commands.Button_11, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = 0.1, name = _('Trim Aileron Right'), category = _('Flight Control')},
{pressed = device_commands.Button_12, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = 0.05, name = _('Trim Elevator Down'), category = _('Flight Control')},
{pressed = device_commands.Button_12, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = -0.05, name = _('Trim Elevator Up'), category = _('Flight Control')},
{pressed = device_commands.Button_13, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = -0.1, name = _('Trim Rudder Left'), category = _('Flight Control')},
{pressed = device_commands.Button_13, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = 0.1, name = _('Trim Rudder Right'), category = _('Flight Control')},
{down = device_commands.Button_14, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Trimmers Reset'), category = _('Flight Control')},

-- Systems
{down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Wheel brake Both'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = _('Wheel brake Left'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel brake Right'), category = _('Systems')},
{down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0,	value_up = 0.0, name = _('Wheel brake Parking'), category = _('Systems')},
{down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},
{down = device_commands.Button_5, cockpit_device_id  = devices.WEAPON_CONTROL, value_down = 1, name = _('Bomb salvo release Left'), category = _('Systems')},
{down = device_commands.Button_6, cockpit_device_id  = devices.WEAPON_CONTROL, value_down = 1, name = _('Bomb salvo release Right'), category = _('Systems')},

{pressed = device_commands.Button_4, cockpit_device_id  = devices.CPT_MECH, value_pressed = -1.0, name = _('Canopy Opening'), category = _('Systems')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.CPT_MECH, value_pressed = 1.0, name = _('Canopy Closing'), category = _('Systems')},
{down = device_commands.Button_5, cockpit_device_id  = devices.CPT_MECH, value_down = 1.0, name = _('Canopy Emergency Release'), category = _('Systems')},

{down = device_commands.Button_2, cockpit_device_id  = devices.HYDRAULIC_SYSTEM, value_down = 1.0, name = _('Hydraulic Emergency Release Knob'), category = _('Systems')},

{down = device_commands.Button_4, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Up/Down'), category = _('Systems')},
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Landing Gear Safe Light Test'), category = _('Systems')},
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Landing Gear Unsafe Light Test'), category = _('Systems')},

{down = device_commands.Button_2, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = 1.0, name = _('Oxygen regulator Deluter lever Auto-Mix On-Off'), category = _('Systems')},
{down = device_commands.Button_4, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = 1.0, name = _('Oxygen regulator Emergency By-Pass Valve'), category = _('Systems')},

--K-14 GunSight
{pressed = device_commands.Button_14, cockpit_device_id  = devices.K14_GUNSIGHT, value_pressed = 0.5,   name = _('Gunsight target span Increase'), category = _('K-14 gunsight')},
{pressed = device_commands.Button_14, cockpit_device_id  = devices.K14_GUNSIGHT, value_pressed = -0.5,   name = _('Gunsight target span Decrease'), category = _('K-14 gunsight')},

{pressed = device_commands.Button_2, cockpit_device_id  = devices.K14_GUNSIGHT, value_pressed = 0.7,	 name = _('Gunsight range to target Increase'), category = _('K-14 gunsight')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.K14_GUNSIGHT, value_pressed = -0.7,	 name = _('Gunsight range to target Decrease'), category = _('K-14 gunsight')},

{down = device_commands.Button_3, cockpit_device_id  = devices.K14_GUNSIGHT, value_down = 0.0,	 name = _('Gunsight mode FIXED'), category = _('K-14 gunsight')},
{down = device_commands.Button_3, cockpit_device_id  = devices.K14_GUNSIGHT, value_down = 0.1,	 name = _('Gunsight mode FIXED GYRO'), category = _('K-14 gunsight')},
{down = device_commands.Button_3, cockpit_device_id  = devices.K14_GUNSIGHT, value_down = 0.2,	 name = _('Gunsight mode GYRO'), category = _('K-14 gunsight')},
{down = device_commands.Button_9, cockpit_device_id  = devices.K14_GUNSIGHT, value_down = 1.0,	 name = _('Gunsight fixed ring blanc lever'), category = _('K-14 gunsight')},
{down = device_commands.Button_17, cockpit_device_id  = devices.K14_GUNSIGHT, value_down = 1.0,	 name = _('Gunsight mode (rotary)'), category = _('K-14 gunsight')},

{down = device_commands.Button_8, cockpit_device_id  = devices.K14_GUNSIGHT, value_down = 1.0,	 name = _('Gunsight gyromotor power'), category = _('K-14 gunsight')},
{pressed = device_commands.Button_10, cockpit_device_id  = devices.K14_GUNSIGHT, value_pressed = 1.0,	 name = _('Gunsight brightness Increase'), category = _('K-14 gunsight')},
{pressed = device_commands.Button_10, cockpit_device_id  = devices.K14_GUNSIGHT, value_pressed = -1.0,	 name = _('Gunsight brightness Decrease'), category = _('K-14 gunsight')},


--Right Switch Panel
{down = device_commands.Button_2, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0,	 name = _('Battery'), category = _('Right Switch Panel')},
{down = device_commands.Button_4, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0,	 name = _('Generator'), category = _('Right Switch Panel')},
{down = device_commands.Button_20, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, name = _('Gun heat'), category = _('Right Switch Panel')},
{down = device_commands.Button_6, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0,	 name = _('Pitot heat'), category = _('Right Switch Panel')},

{down = device_commands.Button_8, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = -1.0, name = _('Position lights wing DIM'), category = _('Right Switch Panel')},
{down = device_commands.Button_8, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 0.0,	 name = _('Position lights wing OFF'), category = _('Right Switch Panel')},
{down = device_commands.Button_8, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0,	 name = _('Position lights wing BRIGHT'), category = _('Right Switch Panel')},
{down = device_commands.Button_17, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0,	 name = _('Position lights wing (rotary)'), category = _('Right Switch Panel')},

{down = device_commands.Button_9, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = -1.0, name = _('Position light tail DIM'), category = _('Right Switch Panel')},
{down = device_commands.Button_9, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 0.0,	 name = _('Position light tail OFF'), category = _('Right Switch Panel')},
{down = device_commands.Button_9, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0,	 name = _('Position light tail BRIGHT'), category = _('Right Switch Panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0,	 name = _('Position light tail (rotary)'), category = _('Right Switch Panel')},


{down = device_commands.Button_21, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, name = _('Recognition light red Steady'), category = _('Right Switch Panel')},
{down = device_commands.Button_22, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, name = _('Recognition light green Steady'), category = _('Right Switch Panel')},
{down = device_commands.Button_23, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, name = _('Recognition light amber Steady'), category = _('Right Switch Panel')},
{down = device_commands.Button_21, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 0.0, name = _('Recognition light red Off'), category = _('Right Switch Panel')},
{down = device_commands.Button_22, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 0.0, name = _('Recognition light green Off'), category = _('Right Switch Panel')},
{down = device_commands.Button_23, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 0.0, name = _('Recognition light amber Off'), category = _('Right Switch Panel')},
{down = device_commands.Button_21, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = -1.0, name = _('Recognition light red Key'), category = _('Right Switch Panel')},
{down = device_commands.Button_22, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = -1.0, name = _('Recognition light green Key'), category = _('Right Switch Panel')},
{down = device_commands.Button_23, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = -1.0, name = _('Recognition light amber Key'), category = _('Right Switch Panel')},

{down = device_commands.Button_30, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, name = _('Recognition light red (rotary)'), category = _('Right Switch Panel')},
{down = device_commands.Button_31, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, name = _('Recognition light green (rotary)'), category = _('Right Switch Panel')},
{down = device_commands.Button_32, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, name = _('Recognition light amber (rotary)'), category = _('Right Switch Panel')},

{down = device_commands.Button_24, up = device_commands.Button_24, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, value_up = 0.0, name = _('Recognition lights key'), category = _('Right Switch Panel')},
{down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_down = 1.0, value_up = 0.0, name = _('Circuit Protectors Cover'), category = _('Right Switch Panel')},


--Remote compass 
{pressed = device_commands.Button_2, cockpit_device_id = 23, value_pressed = -1.0, name = _('Compass course Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_2, cockpit_device_id = 23, value_pressed = 1.0, name = _('Compass course Increase'), category = _('Front Dash')},

--Directional gyro 
{pressed = device_commands.Button_2, cockpit_device_id  = devices.DIRECTIONAL_GYRO, value_pressed = -1.0, name = _('Directional gyro heading Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.DIRECTIONAL_GYRO, value_pressed = 1.0, name = _('Directional gyro heading Increase'), category = _('Front Dash')},
{down = device_commands.Button_4,	 cockpit_device_id  = devices.DIRECTIONAL_GYRO, value_down = 1, 	  name = _('Directional gyro Cage/Uncage'), category = _('Front Dash')},

--	AN5736 Flight Indicator (Gyro Horizon Indicator) 
{pressed = device_commands.Button_4, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = -1.0, name = _('Horizon pitch Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = 1.0, name = _('Horizon pitch Increase'), category = _('Front Dash')},
{down = device_commands.Button_5, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_down = 1.0, name = _('Horizon Cage'), category = _('Front Dash')},
{pressed = device_commands.Button_6, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = -1.0, name = _('Horizon cage knob OFF'), category = _('Front Dash')},
{pressed = device_commands.Button_6, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = 1.0, name = _('Horizon cage knob ON'), category = _('Front Dash')},

--Clock 
{down = device_commands.Button_3, cockpit_device_id  = devices.CLOCK, value_down = 1.0,  name = _('Clock Winding/Adjust'), category = _('Front Dash')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.CLOCK, value_pressed = -1.0, name = _('Clock Winding/Adjust Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.CLOCK, value_pressed = 1.0, name = _('Clock Winding/Adjust Increase'), category = _('Front Dash')},

--Altimeter 
{pressed = device_commands.Button_2, cockpit_device_id  = devices.ALTIMETER, value_pressed = -1.0, name = _('Altimeter pressure set Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.ALTIMETER, value_pressed = 1.0, name = _('Altimeter pressure set Increase'), category = _('Front Dash')},

--G-meter 
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id  = devices.ACCELEROMETER, value_down = 0.6, value_up = 0.0, name = _('G-meter Reset'), category = _('Front Dash')},

--VHF Radio 
{down = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Power'), category = _('VHF Radio')},
{down = device_commands.Button_10, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio chanel A'), category = _('VHF Radio')},
{down = device_commands.Button_11, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio chanel B'), category = _('VHF Radio')},
{down = device_commands.Button_12, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio chanel C'), category = _('VHF Radio')},
{down = device_commands.Button_13, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio chanel D'), category = _('VHF Radio')},
{pressed = device_commands.Button_14, cockpit_device_id  = devices.VHF_RADIO, value_pressed = -1.0, name = _('Radio lights dimmer Decrease'), category = _('VHF Radio')},
{pressed = device_commands.Button_14, cockpit_device_id  = devices.VHF_RADIO, value_pressed = 1.0, name = _('Radio lights dimmer Increase'), category = _('VHF Radio')},

{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id  = devices.VHF_RADIO, value_down = -1.0, value_up = 0.0, name = _('Radio Mode T'), category = _('VHF Radio')},
{down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.0, name = _('Radio mode R'), category = _('VHF Radio')},
{down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio mode REM'), category = _('VHF Radio')},
{down = device_commands.Button_18,  cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0,  name = _('Radio mode switch locking lever'), category = _('VHF Radio')},
{pressed = device_commands.Button_16, cockpit_device_id  = devices.VHF_RADIO, value_pressed = -1.0, name = _('VHF radio volume Decrease'), category = _('VHF Radio')},
{pressed = device_commands.Button_16, cockpit_device_id  = devices.VHF_RADIO, value_pressed = 1.0, name = _('VHF radio volume Increase'), category = _('VHF Radio')},

--Front Switch Box
{down = device_commands.Button_7, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0, name = _('Gun safety switch GUN CAMERA SIGHT'), category = _('Front Switch Box')},
{down = device_commands.Button_7, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.0, name = _('Gun safety switch OFF'), category = _('Front Switch Box')},
{down = device_commands.Button_7, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = -1.0, name = _('Gun safety switch CAMERA SIGHT'), category = _('Front Switch Box')},
{down = device_commands.Button_16, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0, name = _('Gun safety switch (rotary)'), category = _('Front Switch Box')},

{down = device_commands.Button_2, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.0,	 name = _('Ignition switch OFF'), category = _('Front Switch Box')},
{down = device_commands.Button_2, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.1,	 name = _('Ignition switch Right'), category = _('Front Switch Box')},
{down = device_commands.Button_2, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.2,	 name = _('Ignition switch Left'), category = _('Front Switch Box')},
{down = device_commands.Button_2, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.3,	 name = _('Ignition switch BOTH'), category = _('Front Switch Box')},
{down = device_commands.Button_6, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.3,	 name = _('Ignition switch (rotary)'), category = _('Front Switch Box')},

{pressed = device_commands.Button_3, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_pressed = -1.0, name = _('Cockpit Lights Decrease'), category = _('Front Switch Box')},
{pressed = device_commands.Button_3, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_pressed = 1.0, name = _('Cockpit Lights Increase'), category = _('Front Switch Box')},

{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0,	value_up = 0.0, name = _('Silence Horn'), category = _('Front Switch Box')},

{down = device_commands.Button_9, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = -1.0, name = _('Bomb arming switch left ARM'), category = _('Front Switch Box')},
{down = device_commands.Button_9, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.0, name = _('Bomb arming switch left OFF'), category = _('Front Switch Box')},
{down = device_commands.Button_9, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0, name = _('Bomb arming switch left CHEM. RELEASE'), category = _('Front Switch Box')},
{down = device_commands.Button_17, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0, name = _('Bomb arming switch left (rotary)'), category = _('Front Switch Box')},
{down = device_commands.Button_10, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = -1.0, name = _('Bomb arming switch right ARM'), category = _('Front Switch Box')},
{down = device_commands.Button_10, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.0, name = _('Bomb arming switch right OFF'), category = _('Front Switch Box')},
{down = device_commands.Button_10, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0, name = _('Bomb arming switch right CHEM. RELEASE'), category = _('Front Switch Box')},
{down = device_commands.Button_18, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0, name = _('Bomb arming switch right (rotary)'), category = _('Front Switch Box')},

{down = device_commands.Button_11, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.0, name = _('Bomb-rocket selector switch SAFE'), category = _('Front Switch Box')},
{down = device_commands.Button_11, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.1, name = _('Bomb-rocket selector switch TRAIN'), category = _('Front Switch Box')},
{down = device_commands.Button_11, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.2, name = _('Bomb-rocket selector switch BOTH'), category = _('Front Switch Box')},
{down = device_commands.Button_11, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 0.3, name = _('Bomb-rocket selector switch ROCKETS'), category = _('Front Switch Box')},
{down = device_commands.Button_19, cockpit_device_id  = devices.FRONT_SWITCH_BOX, value_down = 1.0, name = _('Bomb-rocket selector switch (rotary)'), category = _('Front Switch Box')},

--Rocket Control Panel
{down = device_commands.Button_7, cockpit_device_id  = devices.WEAPON_CONTROL, value_down = 0.0, name = _('Rockets release control switch OFF'), category = _('Rocket Control Panel')},
{down = device_commands.Button_7, cockpit_device_id  = devices.WEAPON_CONTROL, value_down = 0.1, name = _('Rockets release control switch SINGLE'), category = _('Rocket Control Panel')},
{down = device_commands.Button_7, cockpit_device_id  = devices.WEAPON_CONTROL, value_down = 0.2, name = _('Rockets release control switch AUTO'), category = _('Rocket Control Panel')},
{down = device_commands.Button_15, cockpit_device_id  = devices.WEAPON_CONTROL, value_down = 1.0, name = _('Rockets release control switch (rotary)'), category = _('Rocket Control Panel')},
{down = device_commands.Button_12, cockpit_device_id  = devices.WEAPON_CONTROL, value_down = -1.0, name = _('Rocket counter reset'), category = _('Rocket Control Panel')},

{down = device_commands.Button_11, cockpit_device_id  = devices.WEAPON_CONTROL, value_down = 1, name = _('Rockets Delay/Inst'), category = _('Rocket Control Panel')},

--Engine control panel
{down = device_commands.Button_3, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 1.0, name = _('Supercharger switch Cover'), category = _('Engine Control Panel')},
{down = device_commands.Button_1, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 0.0, name = _('Supercharger switch AUTO'), category = _('Engine Control Panel')},
{down = device_commands.Button_1, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 0.1, name = _('Supercharger switch LOW'), category = _('Engine Control Panel')},
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 0.2, value_up = 0.1, name = _('Supercharger switch HIGH'), category = _('Engine Control Panel')},

{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 1.0, value_up = 0.0, name = _('High Blower lamp test'), category = _('Engine Control Panel')},
{down = device_commands.Button_6, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 1.0, name = _('Fuel Booster'), category = _('Engine Control Panel')},
{down = device_commands.Button_12, cockpit_device_id = devices.ENGINE_CONTROL_PANEL, value_down = 1.0, name = _('Fuel Booster ON'), category = _('Engine Control Panel')},
{down = device_commands.Button_12, cockpit_device_id = devices.ENGINE_CONTROL_PANEL, value_down = 0.0, name = _('Fuel Booster OFF'), category = _('Engine Control Panel')},

{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 1.0, value_up = 0.0, name = _('Oil Dilute'), category = _('Engine Control Panel')},
{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 1.0, value_up = 0.0, name = _('Starter'), category = _('Engine Control Panel')},
{down = device_commands.Button_10, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 1.0, name = _('Starter Switch Cover'), category = _('Engine Control Panel')},
{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id  = devices.ENGINE_CONTROL_PANEL, value_down = 1.0, value_up = 0.0, name = _('Primer'), category = _('Engine Control Panel')},

--Fuel Control
{down = device_commands.Button_1, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 0.0, name = _('Fuel selector Right Combat Tank'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 0.1, name = _('Fuel selector Left Main Tank'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 0.2, name = _('Fuel selector Fuselage Tank'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 0.3, name = _('Fuel selector Right Main Tank'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 0.4, name = _('Fuel selector Left Combat Tank'), category = _('Fuel Control')},
{down = device_commands.Button_3, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel shut-off valve'), category = _('Fuel Control')},
{down = device_commands.Button_6, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel selector valve (rotary)'), category = _('Fuel Control')},

--Rear Warning Radar
{down = device_commands.Button_2, cockpit_device_id  = devices.TAIL_WARNING_RADAR, value_down = 1.0, name = _('Rear warning radar Power'), category = _('Rear Warning Radar')},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id  = devices.TAIL_WARNING_RADAR, value_down = 1.0, value_up = 0.0, name = _('Rear warning radar Test'), category = _('Rear Warning Radar')},
{pressed = device_commands.Button_5, cockpit_device_id  = devices.TAIL_WARNING_RADAR, value_pressed = -1.0, name = _('Rear warning radar signal light Decrease'), category = _('Rear Warning Radar')},
{pressed = device_commands.Button_5, cockpit_device_id  = devices.TAIL_WARNING_RADAR, value_pressed = 1.0, name = _('Rear warning radar signal light Increase'), category = _('Rear Warning Radar')},

--Detrola receiver
{pressed = device_commands.Button_3, cockpit_device_id = devices.DETROLA, value_pressed = -1.0, name = _('Detrola Frequency Selector Decrease'), category = _('Detrola Receiver')},
{pressed = device_commands.Button_3, cockpit_device_id = devices.DETROLA, value_pressed = 1.0, name = _('Detrola Frequency Selector Increase'), category = _('Detrola Receiver')},
{pressed = device_commands.Button_4, cockpit_device_id = devices.DETROLA, value_pressed = -1.0, name = _('Detrola Volume Decrease'), category = _('Detrola Receiver')},
{pressed = device_commands.Button_4, cockpit_device_id = devices.DETROLA, value_pressed = 1.0, name = _('Detrola Volume Increase'), category = _('Detrola Receiver')},

--Homing Adapter
{down = device_commands.Button_1, cockpit_device_id  = devices.HOMING_ADAPTER, value_down = 0.0, name = _('Homing Adapter TRANS'), category = _('Homing Adapter')},
{down = device_commands.Button_1, cockpit_device_id  = devices.HOMING_ADAPTER, value_down = 0.1, name = _('Homing Adapter COMM'), category = _('Homing Adapter')},
{down = device_commands.Button_1, cockpit_device_id  = devices.HOMING_ADAPTER, value_down = 0.2, name = _('Homing Adapter HOMING'), category = _('Homing Adapter')},
{down = device_commands.Button_7, cockpit_device_id  = devices.HOMING_ADAPTER, value_down = 0.2, name = _('Homing Adapter Mode'), category = _('Homing Adapter')},
{down = device_commands.Button_4, cockpit_device_id  = devices.HOMING_ADAPTER, value_down = 1.0, name = _('Homing Adapter CW/MCW'), category = _('Homing Adapter')},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id  = devices.HOMING_ADAPTER, value_down = 1.0, value_up = 0.0, name = _('Homing Adapter Circuit Breaker'), category = _('Homing Adapter')},

--Iff radio set
{down = device_commands.Button_9, cockpit_device_id  = devices.IFF, value_down = 1.0, name = _('IFF Power On/Off'), category = _('IFF')},
{down = device_commands.Button_12, cockpit_device_id  = devices.IFF, value_down = -1, name = _('IFF Code Decrease'), category = _('IFF')},
{down = device_commands.Button_12, cockpit_device_id  = devices.IFF, value_down = 1, name = _('IFF Code Increase'), category = _('IFF')},
{down = device_commands.Button_18, cockpit_device_id  = devices.IFF, value_down = 1, name = _('IFF Code'), category = _('IFF')},
{down = device_commands.Button_3, cockpit_device_id  = devices.IFF, value_down = -1, name = _('IFF TIME'), category = _('IFF')},
{down = device_commands.Button_3, cockpit_device_id  = devices.IFF, value_down = 0, name = _('IFF OFF'), category = _('IFF')},
{down = device_commands.Button_3, cockpit_device_id  = devices.IFF, value_down = 1, name = _('IFF ON'), category = _('IFF')},
{down = device_commands.Button_19, cockpit_device_id  = devices.IFF, value_down = 1, name = _('IFF Mode'), category = _('IFF')},
{down = device_commands.Button_13, cockpit_device_id  = devices.IFF, value_down = 1.0, name = _('IFF Detonator Circuit On/Off'), category = _('IFF')},
{down = device_commands.Button_10, cockpit_device_id  = devices.IFF, value_down = 1, name = _('IFF Distress Signal'), category = _('IFF')},
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id  = devices.IFF, value_down = 1.0, value_up = 0.0, name = _('IFF Detonator Left'), category = _('IFF')},
{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id  = devices.IFF, value_down = 1.0, value_up = 0.0, name = _('IFF Detonator Right'), category = _('IFF')},


--Environment
{pressed = device_commands.Button_4, cockpit_device_id  = devices.ENVIRONMENT_SYSTEM, value_pressed = -1.0, name = _('Defroster Decrease'), category = _('Environment System')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.ENVIRONMENT_SYSTEM, value_pressed = 1.0, name = _('Defroster Increase'), category = _('Environment System')},

{pressed = device_commands.Button_5, cockpit_device_id  = devices.ENVIRONMENT_SYSTEM, value_pressed = -1.0, name = _('Air Cold Decrease'), category = _('Environment System')},
{pressed = device_commands.Button_5, cockpit_device_id  = devices.ENVIRONMENT_SYSTEM, value_pressed = 1.0, name = _('Air Cold Increase'), category = _('Environment System')},

{pressed = device_commands.Button_6, cockpit_device_id  = devices.ENVIRONMENT_SYSTEM, value_pressed = -1.0, name = _('Air Hot Decrease'), category = _('Environment System')},
{pressed = device_commands.Button_6, cockpit_device_id  = devices.ENVIRONMENT_SYSTEM, value_pressed = 1.0, name = _('Air Hot Increase'), category = _('Environment System')},

{pressed = device_commands.Button_5, cockpit_device_id  = devices.LIGHT_SYSTEM, value_pressed = -1.0, name = _('Cockpit Fluorescent Light Left Decrease'), category = _('Environment System')},
{pressed = device_commands.Button_5, cockpit_device_id  = devices.LIGHT_SYSTEM, value_pressed = 1.0, name = _('Cockpit Fluorescent Light Left Increase'), category = _('Environment System')},
{pressed = device_commands.Button_10, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_pressed = -1.0, name = _('Cockpit Fluorescent Light Right Decrease'), category = _('Environment System')},
{pressed = device_commands.Button_10, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, value_pressed = 1.0, name = _('Cockpit Fluorescent Light Right Increase'), category = _('Environment System')},
{down = device_commands.Button_4, cockpit_device_id  = devices.LIGHT_SYSTEM, value_down = 1.0, name = _('Landing Light'), category = _('Environment System')},

--Radiator Air Controls
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.1, value_up = 0.0, name = _('Radiator coolant Close'), category = _('Radiator Air Controls')},
{down = device_commands.Button_9, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.2, name = _('Radiator coolant Auto'), category = _('Radiator Air Controls')},
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.3, value_up = 0.0, name = _('Radiator coolant Open'), category = _('Radiator Air Controls')},
{down = device_commands.Button_5, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Radiator coolant Cover'), category = _('Radiator Air Controls')},

{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.1, value_up = 0.0, name = _('Radiator oil Close'), category = _('Radiator Air Controls')},
{down = device_commands.Button_10, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.2, name = _('Radiator oil Auto'), category = _('Radiator Air Controls')},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.3, value_up = 0.0, name = _('Radiator oil Open'), category = _('Radiator Air Controls')},
{down = device_commands.Button_6, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Radiator oil Cover'), category = _('Radiator Air Controls')},

--Carburetor air control
{pressed = device_commands.Button_8, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0, name = _('Cold Air Control to UNRAMMED FILTERED'), category = _('Carburetor Air Controls')},
{pressed = device_commands.Button_8, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0, name = _('Cold Air Control to RAM'), category = _('Carburetor Air Controls')},
{pressed = device_commands.Button_28, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0, name = _('Warm Air Control to HOT'), category = _('Carburetor Air Controls')},
{pressed = device_commands.Button_28, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0, name = _('Warm Air Control to NORMAL'), category = _('Carburetor Air Controls')},

{down = iCommandPlane_P_51_WarEmergencyPower, name = _('Enable War Emergency Power'), category = _('Flight Control')},

--- Kneeboard
{down = device_commands.Button_1, cockpit_device_id  = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = device_commands.Button_2, cockpit_device_id  = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = device_commands.Button_3	, cockpit_device_id  = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},

--Night Vision Goggles
{down    = iCommandViewNightVisionGogglesOn   , name = _('Night Vision Goggles')   , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Night Vision Goggles Gain Up')  , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},


},
axisCommands = {

-- joystick axes 

-- joystick axes 
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll, name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch, name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	,  action = iCommandPlaneRudder, name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust")	,action = device_commands.Button_25, cockpit_device_id  = devices.ENGINE_SYSTEM, name = _('Throttle')},

{action = device_commands.Button_26, cockpit_device_id  = devices.ENGINE_SYSTEM, name = _('Engine RPM Setting')},

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

{action = iCommandPlaneTrimRudderAbs, name = _('Trim Rudder')},
{action = iCommandPlaneTrimRollAbs, name = _('Trim Aileron')},
{action = iCommandPlaneTrimPitchAbs, name = _('Trim Elevator')},

{action = device_commands.Button_17, cockpit_device_id  = devices.CONTROL_SYSTEM, name = _('Flaps')},
{action = device_commands.Button_11, cockpit_device_id  = devices.K14_GUNSIGHT, name = _('K-14 Range to target')},
{action = device_commands.Button_12, cockpit_device_id  = devices.K14_GUNSIGHT, name = _('K-14 Target span')},
{action = device_commands.Button_13, cockpit_device_id  = devices.K14_GUNSIGHT, name = _('K-14 Brightness')},

{action = device_commands.Button_16, cockpit_device_id  = devices.ENGINE_SYSTEM, name = _('Throttle Control Lock')},
{action = device_commands.Button_17, cockpit_device_id  = devices.ENGINE_SYSTEM, name = _('Propeller & Mixture Lock')},
{action = device_commands.Button_18, cockpit_device_id  = devices.ENGINE_SYSTEM, name = _('Cold Air Control')},
{action = device_commands.Button_29, cockpit_device_id  = devices.ENGINE_SYSTEM, name = _('Warm Air Control')},

{action = device_commands.Button_11, cockpit_device_id  = devices.RIGHT_SWITCH_PANEL, name = _('Right Fluorescent Light')},
{action = device_commands.Button_6, cockpit_device_id  = devices.LIGHT_SYSTEM, name = _('Left Fluorescent Light')},
{action = device_commands.Button_4, cockpit_device_id  = devices.FRONT_SWITCH_BOX, name = _('Cockpit Lights')},

{action = device_commands.Button_6, cockpit_device_id  = devices.TAIL_WARNING_RADAR, name = _('Tail Warning Radar Light Brightness')},
{action = device_commands.Button_19, cockpit_device_id  = devices.VHF_RADIO, name = _('VHF Radio Volume')},

{action = device_commands.Button_7, cockpit_device_id  = devices.CPT_MECH, name = _('Canopy Crank')},

},
}
