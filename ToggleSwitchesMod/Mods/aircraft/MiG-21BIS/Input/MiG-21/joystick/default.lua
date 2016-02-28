--/N/ feb 2014
local cockpit = folder.."../../../Cockpit/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")


return {

forceFeedback={
	trimmer=1.0,
	shake=0.5,
	swapAxes=false,
	invertX=false,
	invertY=false,
},

keyCommands={

--************** Custom ***********************************************************************

--Alternate Airbrakes
{down=device_commands.Airbrakes,up=device_commands.Airbrakes,cockpit_device_id=devices.AIRBRAKE,value_down=1.0,value_up=0.0,name='Alternate Airbrakes On',category='Flight Controls'},

--Alternate Flaps
{down=device_commands.Flaps0,cockpit_device_id=devices.FLAPS,up=device_commands.Flaps25,value_down=1.0,value_up=1.0,name='Alternate Flaps Up',category='Flight Controls'},
{down=device_commands.Flaps45,cockpit_device_id=devices.FLAPS,up=device_commands.Flaps25,value_down=1.0,value_up=1.0,name='Alternate Flaps Down',category='Flight Controls'},

--Alternate Gears
{down=device_commands.GearLever,up=device_commands.GearLever,cockpit_device_id=devices.GEARS,value_down=1.0,value_up=0.0,name='Alternate Gears Up',category='Gears, brakes and chute'},
{down=device_commands.GearLever,up=device_commands.GearLever,cockpit_device_id=devices.GEARS,value_down=-1.0,value_up=0.0,name='Alternate Gears Down',category='Gears, brakes and chute'},
{down=device_commands.GearHandleFixator,up=device_commands.GearHandleFixator,cockpit_device_id=devices.GEARS,value_down=1.0,value_up=0.0,name='Alternate Gears Handle Lock released',category='Gears, brakes and chute'},

--Alternate Landing Lights
{down=device_commands.LandingLights,up=device_commands.LandingLights,cockpit_device_id=devices.LIGHTS,value_down=1.0,value_up=0.5,name='Alternate Landing Lights Land',category='Lights'},
{down=device_commands.LandingLights,up=device_commands.LandingLights,cockpit_device_id=devices.LIGHTS,value_down=0.0,value_up=0.5,name='Alternate Landing Lights Off',category='Lights'},
{down=device_commands.LandingLights,up=device_commands.LandingLights,cockpit_device_id=devices.LIGHTS,value_down=1.0,value_up=0.0,name='Alternate Landing Lights Land 2 Position Only',category='Lights'},

--Alternate Afterburner
{down=device_commands.ForsMax,up=device_commands.ForsMax,cockpit_device_id=devices.ENGINE,value_down=1.0,value_up=0.0,name='Alternate Afterburner/Maximum On',category='Engine'},
{down=device_commands.Chr,up=device_commands.Chr,cockpit_device_id=devices.ENGINE,value_down=1.0,value_up=0.0,name='Alternate Emergency Afterburner On',category='Engine'},

--Alternate Air Start
{down=device_commands.AirStart,up=device_commands.AirStart,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=1.0,value_up=0.0,name='Alternate Engine Emergency Air Start On',category='Engine'},

--Alternate Nosegear Brake
{down=device_commands.NosegearBrake,up=device_commands.NosegearBrake,cockpit_device_id=devices.GEAR_BRAKES,value_down=1.0,value_up=0.0,name='Alternate Nosegear Brake On',category='Gears, brakes and chute'},

--Alternate APU
{down=device_commands.Zazig,up=device_commands.Zazig,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=1.0,value_up=0.0,name='Alternate APU On',category='Engine'},

--Alternate Weapon Master Mode
{down=device_commands.ASPvozduhZemlja,up=device_commands.ASPvozduhZemlja,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Alternate Master Mode - Air',category='Weapons / Master control'},
{down=device_commands.ASPssNeutrRns,up=device_commands.ASPssNeutrRns,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.5,name='Alternate Weapon AA Mode - IR Missile',category='Weapons / Master control'},
{down=device_commands.ASPssNeutrRns,up=device_commands.ASPssNeutrRns,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,value_up=0.5,name='Alternate Weapon AA Mode - SAR Missile',category='Weapons / Master control'},
{down=device_commands.ASPssNeutrRns,up=device_commands.ASPssNeutrRns,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Alternate Weapon AA Mode - IR Missile 2 Position Only',category='Weapons / Master control'},

--Alternate Radar
{down=device_commands.RADARon,up=device_commands.RADARon,cockpit_device_id=devices.RADAR,value_down=1.0,value_up=0.5,name='Alternate Radar On',category='Radar and SPO'},
{down=device_commands.RADARon,up=device_commands.RADARon,cockpit_device_id=devices.RADAR,value_down=0.0,value_up=0.5,name='Alternate Radar Off',category='Radar and SPO'},

--Alternate Radar Beam
{down=device_commands.RADARfixBeam, up=device_commands.RADARfixBeam, cockpit_device_id=devices.RADAR,value_down=1, value_up=0, name='Alternate Locked Beam On',category='Radar and SPO'},
{down=device_commands.RADARfixBeam, up=device_commands.RADARfixBeam, cockpit_device_id=devices.RADAR,value_down=0, value_up=1,name='Alternate Locked Beam Off',category='Radar and SPO'},

--Alternate RSBN Mode
{down=device_commands.RSBNmode,up=device_commands.RSBNmode,cockpit_device_id=devices.RSBN,value_down=1.0,value_up=0.5,name='Alternate RSBN Mode: Descend',category='Avionics'},
{down=device_commands.RSBNmode,up=device_commands.RSBNmode,cockpit_device_id=devices.RSBN,value_down=0.0,value_up=0.5,name='Alternate RSBN Mode: Landing',category='Avionics'},

--Alternate Navigation Lights
{down=device_commands.NavLights,up=device_commands.NavLights,cockpit_device_id=devices.LIGHTS,value_down=0.33,value_up=0.0,name='Alternate Nav Lights Min/Off',category='Lights'},
{down=device_commands.NavLights,up=device_commands.NavLights,cockpit_device_id=devices.LIGHTS,value_down=0.99,value_up=0.0,name='Alternate Nav Lights Max/Off',category='Lights'},
{down=device_commands.NavLights,up=device_commands.NavLights,cockpit_device_id=devices.LIGHTS,value_down=0.99,value_up=0.66,name='Alternate Nav Lights Max/Med',category='Lights'},

--Alternate Radar Low Altitude Filter
{down=device_commands.RADARlowAlt,up=device_commands.RADARlowAlt,cockpit_device_id=devices.RADAR,value_down=1,value_up=0.5,name='Alternate Low Altitude Antenna Tilt',category='Radar and SPO'},
{down=device_commands.RADARlowAlt,up=device_commands.RADARlowAlt,cockpit_device_id=devices.RADAR,value_down=0.0,value_up=0.5,name='Alternate Low Altitude Filter Off',category='Radar and SPO'},

--Alternate Weapon Selection Dial
--{down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=weapon_selecter(),name='Select Weapon Dial Clockwise',category='Weapons / Select'},
--{down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=weapon_selecter(),name='Select Weapon Dial Counter Clockwise',category='Weapons / Select'},

--************** Planseta *********************************************************************

--- Kneeboard
{combos={{key="Up",reformers={"RCtrl"}}},down=iCommandPlaneShowKneeboard,name='Kneeboard On/Off',category='Kneeboard'},
{combos={{key="Right",reformers={"RCtrl"}}},down=3001--[[device_commands.KneeboardNext]],cockpit_device_id=devices.KNEEBOARD,value_down=1.0,name='Kneeboard Page +',category='Kneeboard'},
{combos={{key="Left",reformers={"RCtrl"}}},down=3002--[[device_commands.KneeboardPrev]],cockpit_device_id=devices.KNEEBOARD,value_down=1.0,name='Kneeboard Page -',category='Kneeboard'},
{combos={{key="Down",reformers={"RCtrl"}}},down=3003--[[device_commands.KneeboardMark]],cockpit_device_id=devices.KNEEBOARD,value_down=1.0,name='Kneeboard mark current position',category='Kneeboard'},
{combos={{key="Up",reformers={"RShift"}}},down=iCommandPlaneShowKneeboard,up=iCommandPlaneShowKneeboard,value_down=1.0,value_up=-1.0,name='Kneeboard glance',category='Kneeboard'},


--************** Avionics *********************************************************************

-- Pitot tubes
{combos={{key='T',reformers={'RAlt'}}},down=device_commands.PitoSelect,cockpit_device_id=devices.PITOT_TUBES,value_down=1.0,name='Pitot tube - Main',category='Avionics'},
{combos={{key='T',reformers={'RAlt','RCtrl'}}},down=device_commands.PitoSelect,cockpit_device_id=devices.PITOT_TUBES,value_down=0.0,name='Pitot tube - Emergency',category='Avionics'},
{combos={{key='H',reformers={'LShift'}}},down=device_commands.PitoHeatMain,cockpit_device_id=devices.PITOT_TUBES,value_down=1.0,name='Pitot Tube Heating On',category='Avionics'},
{combos={{key='H',reformers={'LShift','LCtrl'}}},down=device_commands.PitoHeatMain,cockpit_device_id=devices.PITOT_TUBES,value_down=0.0,name='Pitot Tube Heating Off',category='Avionics'},
{combos={{key='H',reformers={'LAlt'}}},down=device_commands.PitoHeatAux,cockpit_device_id=devices.PITOT_TUBES,value_down=1.0,name='Emergency Pitot Tube Heating On',category='Avionics'},
{combos={{key='H',reformers={'LAlt','LCtrl'}}},down=device_commands.PitoHeatAux,cockpit_device_id=devices.PITOT_TUBES,value_down=0.0,name='Emergency Pitot Tube Heating Off',category='Avionics'},

-- Instrument related
{combos={{key='A',reformers={'RCtrl'}}},down=device_commands.AccelReset,up=device_commands.AccelReset,cockpit_device_id=devices.ACCELEROMETER,value_down=1.0,value_up=0.0,name='Accelerometer Reset',category='Avionics'},

-- KPP - Artificial Horizont
{combos={{key='K',reformers={'RCtrl'}}},down=device_commands.KPPon,cockpit_device_id=devices.KPP,value_down=1.0,name='KPP Main',category='Avionics'},
{combos={{key='K',reformers={'RAlt','RShift'}}},down=device_commands.KPPon,cockpit_device_id=devices.KPP,value_down=0.0,name='KPP Emergency',category='Avionics'},
{combos={{key='K'}},down=device_commands.KPParretir,up=device_commands.KPParretir,cockpit_device_id=devices.KPP,value_down=1.0,value_up=0.0,name='KPP Cage',category='Avionics'},

-- NPP - Horizontal Situation Indicator
{combos={{key='N',reformers={'LShift'}}},down=device_commands.NPPon,cockpit_device_id=devices.KSI,value_down=1.0,name='NPP On',category='Avionics'},
{combos={{key='N',reformers={'LShift','LCtrl'}}},down=device_commands.NPPon,cockpit_device_id=devices.KSI,value_down=0.0,name='NPP Off',category='Avionics'},
{combos={{key='N',reformers={'LCtrl'}}},down=device_commands.NPPnastrojka,up=device_commands.NPPnastrojka,cockpit_device_id=devices.KSI,value_down=1.0,value_up=0.0,name='NPP Cage',category='Avionics'},

{combos={{key='N',reformers={'LAlt'}}},down=device_commands.RSBNARK,cockpit_device_id=devices.RSBN,value_down=1,name='NPP - RSBN mode',category='Avionics'},
{combos={{key='N',reformers={'LAlt','LCtrl'}}},down=device_commands.RSBNARK,cockpit_device_id=devices.RSBN,value_down=0,name='NPP - ARK mode',category='Avionics'},

-- Radio Altimeter
{combos={{key='B',reformers={'RAlt'}}},down=device_commands.RadioAltOn,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=1.0,name='Radio Altimeter/Marker On',category='Avionics'},
{combos={{key='B',reformers={'RAlt','RCtrl'}}},down=device_commands.RadioAltOn,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=0.0,name='Radio Altimeter/Marker Off',category='Avionics'},
{combos={{key='1',reformers={'RCtrl'}}},down=device_commands.DangerAltSelect,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=0.14,name='Danger Altitude 50m',category='Avionics'},
{combos={{key='2',reformers={'RCtrl'}}},down=device_commands.DangerAltSelect,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=0.28,name='Danger Altitude 100m',category='Avionics'},
{combos={{key='3',reformers={'RCtrl'}}},down=device_commands.DangerAltSelect,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=0.42,name='Danger Altitude 150m',category='Avionics'},
{combos={{key='4',reformers={'RCtrl'}}},down=device_commands.DangerAltSelect,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=0.56,name='Danger Altitude 200m',category='Avionics'},
{combos={{key='5',reformers={'RCtrl'}}},down=device_commands.DangerAltSelect,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=0.70,name='Danger Altitude 250m',category='Avionics'},
{combos={{key='6',reformers={'RCtrl'}}},down=device_commands.DangerAltSelect,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=0.84,name='Danger Altitude 300m',category='Avionics'},
{combos={{key='7',reformers={'RCtrl'}}},down=device_commands.DangerAltSelect,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=1.00,name='Danger Altitude 400m',category='Avionics'},
{combos={{key='0',reformers={'RCtrl'}}},down=device_commands.DangerAltSelect,cockpit_device_id=devices.RADIO_ALTIMETER,value_down=0.0,name='Danger Altitude Off',category='Avionics'},

-- RSBN - Navigation
{combos={{key='R',reformers={'RShift'}}},down=device_commands.RSBNon,cockpit_device_id=devices.RSBN,value_down=1,name='RSBN On',category='Avionics'},
{combos={{key='R',reformers={'RShift','RCtrl'}}},down=device_commands.RSBNon,cockpit_device_id=devices.RSBN,value_down=0,name='RSBN Off',category='Avionics'},
{combos={{key='R',reformers={'LAlt','LCtrl'}}},down=device_commands.RSBNmode,cockpit_device_id=devices.RSBN,value_down=1,name='RSBN Mode: Descend',category='Avionics'},
{combos={{key='R',reformers={'LCtrl'}}},down=device_commands.RSBNmode,cockpit_device_id=devices.RSBN,value_down=0.5,name='RSBN Mode: Navigation',category='Avionics'},
{combos={{key='R',reformers={'LAlt'}}},down=device_commands.RSBNmode,cockpit_device_id=devices.RSBN,value_down=0,name='RSBN Mode: Landing',category='Avionics'},
{combos={{key='R',reformers={'LWin','LShift'}}},down=device_commands.RSBNtest,up=device_commands.RSBNtest,cockpit_device_id=devices.RSBN,value_down=1.0,value_up=0.0,name='RSBN self test',category='Avionics'},

-- ARK - Radiocompass
{combos={{key='B',reformers={'RCtrl'}}},down=device_commands.ARKon,cockpit_device_id=devices.ARK,value_down=1,name='ARK On',category='Avionics'},
{combos={{key='B',reformers={'RCtrl','RAlt'}}},down=device_commands.ARKon,cockpit_device_id=devices.ARK,value_down=0,name='ARK Off',category='Avionics'},


{combos={{key='1',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.1,name='ARK channel 1',category='Avionics'},
{combos={{key='2',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.2,name='ARK channel 2',category='Avionics'},
{combos={{key='3',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.3,name='ARK channel 3',category='Avionics'},
{combos={{key='4',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.4,name='ARK channel 4',category='Avionics'},
{combos={{key='5',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.5,name='ARK channel 5',category='Avionics'},
{combos={{key='6',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.6,name='ARK channel 6',category='Avionics'},
{combos={{key='7',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.7,name='ARK channel 7',category='Avionics'},
{combos={{key='8',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.8,name='ARK channel 8',category='Avionics'},
{combos={{key='9',reformers={'RShift'}}},down=device_commands.ARKchannel,cockpit_device_id=devices.ARK,value_down=0.9,name='ARK channel 9',category='Avionics'},

{combos={{key='1',reformers={'RAlt'}}},down=device_commands.ARKzone,cockpit_device_id=devices.ARK,value_down=0.0,name='ARK Sector I-1 Ukraine',category='Avionics'},
{combos={{key='2',reformers={'RAlt'}}},down=device_commands.ARKzone,cockpit_device_id=devices.ARK,value_down=0.14,name='ARK Sector I-2 free',category='Avionics'},
{combos={{key='3',reformers={'RAlt'}}},down=device_commands.ARKzone,cockpit_device_id=devices.ARK,value_down=0.28,name='ARK Sector II-1 Russia',category='Avionics'},
{combos={{key='4',reformers={'RAlt'}}},down=device_commands.ARKzone,cockpit_device_id=devices.ARK,value_down=0.42,name='ARK Sector II-2 Russia',category='Avionics'},
{combos={{key='5',reformers={'RAlt'}}},down=device_commands.ARKzone,cockpit_device_id=devices.ARK,value_down=0.56,name='ARK Sector III-1 Georgia',category='Avionics'},
{combos={{key='6',reformers={'RAlt'}}},down=device_commands.ARKzone,cockpit_device_id=devices.ARK,value_down=0.70,name='ARK Sector III-2 free',category='Avionics'},
{combos={{key='7',reformers={'RAlt'}}},down=device_commands.ARKzone,cockpit_device_id=devices.ARK,value_down=0.84,name='ARK Sector IV-1 free',category='Avionics'},
{combos={{key='8',reformers={'RAlt'}}},down=device_commands.ARKzone,cockpit_device_id=devices.ARK,value_down=1.00,name='ARK Sector IV-2 free',category='Avionics'},

-- SARPP - Data Recorder
{combos={{key='S',reformers={'LCtrl'}}},down=device_commands.SARPP,cockpit_device_id=devices.SARPP,value_down=1.0,name='SARPP-12 Flight Data Recorder - On',category='Avionics'},
{combos={{key='S',reformers={'LCtrl','LAlt'}}},down=device_commands.SARPP,cockpit_device_id=devices.SARPP,value_down=0.0,name='SARPP-12 Flight Data Recorder - Off',category='Avionics'},

--************** Engine and fuel *********************************************************************

-- Autostart/Stop
{combos={{key='Home',reformers={'LWin'}}},down=device_commands.mig21_autostart,cockpit_device_id=devices.MACROS,value_down=1.0,name='Autostart Procedure',category='Engine'},
{combos={{key='End',reformers={'LWin'}}},down=device_commands.mig21_autostop,cockpit_device_id=devices.MACROS,value_down=1.0,name='Autostop Procedure',category='Engine'},

-- Fuel pumps & systems
{combos={{key='P',reformers={'RShift'}}},down=device_commands.Pump3,cockpit_device_id=devices.FUEL_PUMPS,value_down=1.0,name='3rd Fuel Tanks Group, Fuel Pump On',category='Engine'},
{combos={{key='P',reformers={'RShift','RCtrl'}}},down=device_commands.Pump3,cockpit_device_id=devices.FUEL_PUMPS,value_down=0.0,name='3rd Fuel Tanks Group, Fuel Pump Off',category='Engine'},
{combos={{key='P',reformers={'RAlt'}}},down=device_commands.Pump1,cockpit_device_id=devices.FUEL_PUMPS,value_down=1.0,name='1st Fuel Tanks Group, Fuel Pump On',category='Engine'},
{combos={{key='P',reformers={'RAlt','RCtrl'}}},down=device_commands.Pump1,cockpit_device_id=devices.FUEL_PUMPS,value_down=0.0,name='1st Fuel Tanks Group, Fuel Pump Off',category='Engine'},
{combos={{key='P',reformers={'RCtrl'}}},down=device_commands.PumpRashod,cockpit_device_id=devices.FUEL_PUMPS,value_down=1.0,name='Drain Tank, Fuel Pump On',category='Engine'},
{combos={{key='P',reformers={'RAlt','RShift'}}},down=device_commands.PumpRashod,cockpit_device_id=devices.FUEL_PUMPS,value_down=0.0,name='Drain Tank, Fuel Pump Off',category='Engine'},

-- Engine start device
{combos={{key='/',reformers={'RAlt'}}},down=device_commands.Zazig,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=1.0,name='APU On',category='Engine'},
{combos={{key='/',reformers={'RAlt','RCtrl'}}},down=device_commands.Zazig,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=0.0,name='APU Off',category='Engine'},
{combos={{key='/',reformers={'RCtrl'}}},down=device_commands.HotStart,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=1.0,name='Engine Normal Start',category='Engine'},
{combos={{key='/',reformers={'RAlt','RShift'}}},down=device_commands.HotStart,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=0.0,name='Engine Cold Start',category='Engine'},

{combos={{key='E'}},down=device_commands.AirStart,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=1.0,name='Engine Emergency Air Start On',category='Engine'},
{combos={{key='E',reformers={'LCtrl','LShift'}}},down=device_commands.AirStart,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=0.0,name='Engine Emergency Air Start Off',category='Engine'},

{combos={{key='E',reformers={'LWin','LShift'}}},pressed=device_commands.RUDStop_lock,up=device_commands.RUDStop_lock,cockpit_device_id=devices.ENGINE_START_DEVICE,value_pressed=1.0,value_up=0.0,name='Throttle Start/Stop Position Toggle',category='Engine'},

{combos={{key='E',reformers={'LWin','LCtrl'}}},down=device_commands.StartButton,up=device_commands.StartButton,cockpit_device_id=devices.ENGINE_START_DEVICE,value_down=1.0,value_up=0.0,name='Start Engine',category='Engine'},

-- Engine
{combos={{key=']',reformers={'RShift'}}},down=device_commands.SurgeDoors,cockpit_device_id=devices.ENGINE,value_down=1.0,name='Anti surge doors - Auto',category='Engine'},
{combos={{key=']',reformers={'RShift','RCtrl'}}},down=device_commands.SurgeDoors,cockpit_device_id=devices.ENGINE,value_down=0.0,name='Anti surge doors - Manual',category='Engine'},
{combos={{key=']',reformers={'RAlt'}}},down=device_commands.ForsMax,cockpit_device_id=devices.ENGINE,value_down=1.0,name='Afterburner/Maximum On',category='Engine'},
{combos={{key=']',reformers={'RAlt','RShift'}}},down=device_commands.ForsMax,cockpit_device_id=devices.ENGINE,value_down=0.0,name='Afterburner/Maximum Off',category='Engine'},

{combos={{key='E',reformers={'LAlt'}}},down=device_commands.Chr,cockpit_device_id=devices.ENGINE,value_down=1.0,name='Emergency Afterburner On',category='Engine'},
{combos={{key='E',reformers={'LAlt','LCtrl'}}},down=device_commands.Chr,cockpit_device_id=devices.ENGINE,value_down=0.0,name='Emergency Afterburner Off',category='Engine'},

-- Nosecone
{combos={{key='[',reformers={'RShift'}}},down=device_commands.KonusOn,cockpit_device_id=devices.KONUS,value_down=1.0,name='Cone On',category='Engine'},
{combos={{key='[',reformers={'RShift','RCtrl'}}},down=device_commands.KonusOn,cockpit_device_id=devices.KONUS,value_down=0.0,name='Cone Off',category='Engine'},
{combos={{key='\\',reformers={'RShift'}}},down=device_commands.KonusManAuto,cockpit_device_id=devices.KONUS,value_down=1.0,name='Cone Auto',category='Engine'},
{combos={{key='\\',reformers={'RShift','RCtrl'}}},down=device_commands.KonusManAuto,cockpit_device_id=devices.KONUS,value_down=0.0,name='Cone Manual',category='Engine'},

-- Engine nozzle
{combos={{key='\\',reformers={'RAlt'}}},down=device_commands.Soplo2xPoz,cockpit_device_id=devices.SOPLO,value_down=1.0,name='Nozzle, Emergency Control - On',category='Engine'},
{combos={{key='\\',reformers={'RAlt','RCtrl'}}},down=device_commands.Soplo2xPoz,cockpit_device_id=devices.SOPLO,value_down=0.0,name='Nozzle, Emergency Control - Off',category='Engine'},

-- Fire Extinguisher *cover
{combos={{key='F',reformers={'RAlt'}}},down=device_commands.PozarOborud,cockpit_device_id=devices.FIRE_EXTINGUISHER,value_down=1.0,name='Fire Extinguisher System On',category='Engine'},
{combos={{key='F',reformers={'RAlt','RCtrl'}}},down=device_commands.PozarOborud,cockpit_device_id=devices.FIRE_EXTINGUISHER,value_down=0.0,name='Fire Extinguisher System Off',category='Engine'},
{combos={{key='F',reformers={'RShift'}}},down=device_commands.PozarSafetyCover,cockpit_device_id=devices.FIRE_EXTINGUISHER,value_down=1.0,name='Fire Extinguisher Cover Open',category='Engine'},
{combos={{key='F',reformers={'RShift','RCtrl'}}},down=device_commands.PozarSafetyCover,cockpit_device_id=devices.FIRE_EXTINGUISHER,value_down=0.0,name='Fire Extinguisher Cover Close',category='Engine'},
{combos={{key='F',reformers={'LWin','LAlt'}}},down=device_commands.Ognetushitel,up=device_commands.Ognetushitel,cockpit_device_id=devices.FIRE_EXTINGUISHER,value_down=1.0,value_up=0.0,name='Fire Extinguisher Engage',category='Engine'},


-- Fuel pod drop
{combos={{key='PageUp',reformers={'RCtrl'}}},down=device_commands.SbrosPodvBakov,up=device_commands.SbrosPodvBakov,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Drop Center Fuel Pod',category='Engine'},
{combos={{key='PageDown',reformers={'RCtrl'}}},down=device_commands.SbrosKrilBakov,up=device_commands.SbrosKrilBakov,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Drop Wing Fuel Pods',category='Engine'},
{combos={{key='PageDown',reformers={'RShift'}}},down=device_commands.SbrosKrilBakovSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Drop Wing Fuel Pods Cover Open',category='Engine'},
{combos={{key='PageDown',reformers={'RShift','RCtrl'}}},down=device_commands.SbrosKrilBakovSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Drop Wing Fuel Pods Cover Close',category='Engine'},

--******************* Flight controls *****************************************************************

-- FFB support
{combos={{key='J',reformers={'RAlt','RShift'}}},down=device_commands.ForceFeedback,up=device_commands.ForceFeedback,cockpit_device_id=devices.CONTROL_SYSTEM,value_down=1.0,value_up=0.0,name='Force Feedback On/Off',category='Flight Controls'},

-- Controls
{combos={{key='Num+'}},pressed=device_commands.ThrottleInc,up=device_commands.ThrottleInc,cockpit_device_id=devices.CONTROL_SYSTEM,value_pressed=1.0,value_up=0.0,name='Throttle Up (joystick)',category='Flight Controls'},
{combos={{key='Num-'}},pressed=device_commands.ThrottleDec,up=device_commands.ThrottleDec,cockpit_device_id=devices.CONTROL_SYSTEM,value_pressed=1.0,value_up=0.0,name='Throttle Down (joystick)',category='Flight Controls'},
--[[
{combos={{key='Up'}},pressed=device_commands.StickUp,up=device_commands.StickUp,cockpit_device_id=devices.CONTROL_SYSTEM,value_pressed=1.0,value_up=0.0,name='Pitch Down',category='Flight Controls'},
{combos={{key='Down'}},pressed=device_commands.StickDown,up=device_commands.StickDown,cockpit_device_id=devices.CONTROL_SYSTEM,value_pressed=1.0,value_up=0.0,name='Pitch Up',category='Flight Controls'},
{combos={{key='Left'}},down=device_commands.StickLeft,up=device_commands.StickLeft,cockpit_device_id=devices.CONTROL_SYSTEM,value_down=1.0,value_up=0.0,name='Bank Left',category='Flight Controls'},
{combos={{key='Right'}},down=device_commands.StickRight,up=device_commands.StickRight,cockpit_device_id=devices.CONTROL_SYSTEM,value_down=1.0,value_up=0.0,name='Bank Right',category='Flight Controls'},
]]
{combos={{key='Z'}},pressed=device_commands.RudLeft,up=device_commands.RudLeft,cockpit_device_id=devices.CONTROL_SYSTEM,value_pressed=1.0,value_up=0.0,name='Rudder Left (joystick)',category='Flight Controls'},
{combos={{key='X'}},pressed=device_commands.RudRight,up=device_commands.RudRight,cockpit_device_id=devices.CONTROL_SYSTEM,value_pressed=1.0,value_up=0.0,name='Rudder Right (joystick)',category='Flight Controls'},

-- Trimmer
{combos={{key='T',reformers={'RShift'}}},down=device_commands.TrimmerOn,cockpit_device_id=devices.TRIMER,value_down=1.0,name='Trim On',category='Flight Controls'},
{combos={{key='T',reformers={'RShift','RCtrl'}}},down=device_commands.TrimmerOn,cockpit_device_id=devices.TRIMER,value_down=0.0,name='Trim Off',category='Flight Controls'},

{combos={{key='T',reformers={'LShift'}}},down=device_commands.TrimmerBtnUp,up=device_commands.TrimmerBtnUp,cockpit_device_id=devices.TRIMER,value_down=1.0,value_up=0.0,name='Trim Pitch Down',category='Flight Controls'},
{combos={{key='T',reformers={'LCtrl'}}},down=device_commands.TrimmerBtnDown,up=device_commands.TrimmerBtnDown,cockpit_device_id=devices.TRIMER,value_down=-1.0,value_up=0.0,name='Trim Pitch Up',category='Flight Controls'},

--{combos={{key='T',reformers={'LCtrl'}}},down=device_commands.TrimmerBtnUp,up=device_commands.TrimmerBtnUp,cockpit_device_id=devices.TRIMER,value_down=1.0,value_up=0.0,name='Trim Pitch Up',category='Flight Controls'},
--{combos={{key='T',reformers={'LShift'}}},down=device_commands.TrimmerBtnDown,up=device_commands.TrimmerBtnDown,cockpit_device_id=devices.TRIMER,value_down=-1.0,value_up=0.0,name='Trim Pitch Down',category='Flight Controls'},

-- Hidraulics
{combos={{key='H',reformers={'RShift'}}},down=device_commands.NR27on,cockpit_device_id=devices.MAIN_HYDRO,value_down=1.0,name='Emergency Hydraulic Pump On',category='Flight Controls'},
{combos={{key='H',reformers={'RShift','RCtrl'}}},down=device_commands.NR27on,cockpit_device_id=devices.MAIN_HYDRO,value_down=0.0,name='Emergency Hydraulic Pump Off',category='Flight Controls'},
{combos={{key='H',reformers={'RAlt'}}},down=device_commands.AileronBoosters,cockpit_device_id=devices.MAIN_HYDRO,value_down=1.0,name='Aileron Boosters On',category='Flight Controls'},
{combos={{key='H',reformers={'RAlt','RCtrl'}}},down=device_commands.AileronBoosters,cockpit_device_id=devices.MAIN_HYDRO,value_down=0.0,name='Aileron Boosters Off',category='Flight Controls'},

-- SPS - Boundary Layer System
{combos={{key='U',reformers={'RShift'}}},down=device_commands.SPSon,cockpit_device_id=devices.SPS,value_down=1,name='SPS (BLC) System On',category='Flight Controls'},
{combos={{key='U',reformers={'RShift','RCtrl'}}},down=device_commands.SPSon,cockpit_device_id=devices.SPS,value_down=0,name='SPS (BLC) System Off',category='Flight Controls'},

-- ARU
{combos={{key='U',reformers={'RAlt'}}},down=device_commands.ARUmanAuto,cockpit_device_id=devices.ARU,value_down=0,name='ARU - Manual',category='Flight Controls'},
{combos={{key='U',reformers={'RAlt','RCtrl'}}},down=device_commands.ARUmanAuto,cockpit_device_id=devices.ARU,value_down=1,name='ARU - Auto',category='Flight Controls'},
{combos={{key='U',reformers={'RCtrl'}}},down=device_commands.ARUhighSpeed,up=device_commands.ARUhighSpeed,cockpit_device_id=devices.ARU,value_down=1,value_up=0,name='ARU manual - Low Speed',category='Flight Controls'},
{combos={{key='U',reformers={'LCtrl'}}},down=device_commands.ARUhighSpeed,up=device_commands.ARUhighSpeed,cockpit_device_id=devices.ARU,value_down=-1,value_up=0,name='ARU manual - High Speed',category='Flight Controls'},

-- Airbrake
{combos={{key='C'}},down=device_commands.Airbrakes,cockpit_device_id=devices.AIRBRAKE,value_down=1.0,name='Airbrakes On',category='Flight Controls'},
{combos={{key='D'}},down=device_commands.Airbrakes,cockpit_device_id=devices.AIRBRAKE,value_down=0.0,name='Airbrakes Off',category='Flight Controls'},

-- Flaps

{combos={{key='F',reformers={'LAlt'}}},down=device_commands.Flaps25,cockpit_device_id=devices.FLAPS,value_down=1.0,name='Flaps Take-Off (joystick)',category='Flight Controls'},
{combos={{key='F',reformers={'LCtrl'}}},down=device_commands.Flaps45,cockpit_device_id=devices.FLAPS,value_down=1.0,name='Flaps Landing (joystick)',category='Flight Controls'},
{combos={{key='F'}},down=device_commands.Flaps0,cockpit_device_id=devices.FLAPS,value_down=1.0,name='Flaps In (joystick)',category='Flight Controls'},


--************************************** SAU *************************************************************************************

-- SAU
{combos={{key='S',reformers={'RShift'}}},down=device_commands.SAUon,cockpit_device_id=devices.SAU,value_down=1,name='SAU On',category='SAU'},
{combos={{key='S',reformers={'RShift','RCtrl'}}},down=device_commands.SAUon,cockpit_device_id=devices.SAU,value_down=0,name='SAU Off',category='SAU'},
{combos={{key='S',reformers={'RAlt'}}},down=device_commands.SAUpitchOn,cockpit_device_id=devices.SAU,value_down=1,name='SAU Pitch On',category='SAU'},
{combos={{key='S',reformers={'RAlt','RCtrl'}}},down=device_commands.SAUpitchOn,cockpit_device_id=devices.SAU,value_down=0,name='SAU Pitch Off',category='SAU'},

{combos={{key='S',reformers={'RCtrl'}}},down=device_commands.SAUlowAltOn,cockpit_device_id=devices.SAU,value_down=1,name='SAU - Low Altitude Recovery On',category='SAU'},
{combos={{key='S',reformers={'RAlt','RShift'}}},down=device_commands.SAUlowAltOn,cockpit_device_id=devices.SAU,value_down=0,name='SAU - Low Altitude Recovery Off',category='SAU'},

{combos={{key='A'}},down=device_commands.SAUprivedenie,up=device_commands.SAUprivedenie,cockpit_device_id=devices.SAU,value_down=1.0,value_up=0.0,name='SAU - Recovery',category='SAU'},
{combos={{key='A',reformers={'LAlt'}}},down=device_commands.SAUstabil,up=device_commands.SAUstabil,cockpit_device_id=devices.SAU,value_down=1.0,value_up=0.0,name='SAU - Stabilize',category='SAU'},
{combos={{key='A',reformers={'LAlt','LCtrl'}}},down=device_commands.SAUcancel,up=device_commands.SAUcancel,cockpit_device_id=devices.SAU,value_down=1.0,value_up=0.0,name='SAU cancel current mode',category='SAU'},

{combos={{key='A',reformers={'RShift'}}},down=device_commands.SAUlandingControlCommand,up=device_commands.SAUlandingControlCommand,cockpit_device_id=devices.SAU,value_down=1.0,value_up=0.0,name='SAU Landing - Command',category='SAU'},
{combos={{key='A',reformers={'RAlt'}}},down=device_commands.SAUlandingControlAuto,up=device_commands.SAUlandingControlAuto,cockpit_device_id=devices.SAU,value_down=1.0,value_up=0.0,name='SAU Landing - Auto',category='SAU'},
{combos={{key='A',reformers={'RShift','RAlt'}}},down=device_commands.SAUresetOff,up=device_commands.SAUresetOff,cockpit_device_id=devices.SAU,value_down=1.0,value_up=0.0,name='SAU Cancel Landing Mode',category='SAU'},

{combos = {{key = 'J'}}, 							down = iCommandPlaneStabPathHold, up = iCommandPlaneStabPathHold, value_down=1.0,value_up=0.0, name = 'SAU - Hold Attitude', category = 'SAU'},


--************************************* GEARS, G. Brakes and Drag chute  ******************************************************************

-- Gears
{combos={{key='G'}},down=device_commands.GearLever,cockpit_device_id=devices.GEARS,value_down=1.0,name='Gears Up',category='Gears, brakes and chute'},
{combos={{key='G',reformers={'LShift'}}},down=device_commands.GearLever,cockpit_device_id=devices.GEARS,value_down=-1.0,name='Gears Down',category='Gears, brakes and chute'},
{combos={{key='G',reformers={'LCtrl'}}},down=device_commands.GearLever,cockpit_device_id=devices.GEARS,value_down=0.0,name='Gears Handle Neutral',category='Gears, brakes and chute'},
{combos={{key='G',reformers={'RShift'}}},down=device_commands.GearHandleFixator,cockpit_device_id=devices.GEARS,value_down=1.0,name='Gears Handle Lock released',category='Gears, brakes and chute'},
{combos={{key='G',reformers={'RCtrl'}}},down=device_commands.GearHandleFixator,cockpit_device_id=devices.GEARS,value_down=0.0,name='Gears Handle Lock engaged',category='Gears, brakes and chute'},
{combos={{key='G',reformers={'LCtrl','LShift'}}},down=device_commands.EmergGearsNose,cockpit_device_id=devices.GEARS,value_down=1.0,name='Nose Gear Emergency Release On',category='Gears, brakes and chute'},
{combos={{key='G',reformers={'LCtrl','LAlt'}}},down=device_commands.EmergGearsMain,cockpit_device_id=devices.GEARS,value_down=1.0,name='Main Gears Emergency Release On',category='Gears, brakes and chute'},

-- Wheel brake
{combos={{key='W'}},down=iCommandPlaneWheelBrakeOn,up=iCommandPlaneWheelBrakeOff,name='Wheel Brakes',category='Gears, brakes and chute'},
{combos={{key='W',reformers={'RShift'}}},down=device_commands.ABSon,cockpit_device_id=devices.GEAR_BRAKES,value_down=1,name='ABS On',category='Gears, brakes and chute'},
{combos={{key='W',reformers={'RShift','RCtrl'}}},down=device_commands.ABSon,cockpit_device_id=devices.GEAR_BRAKES,value_down=0,name='ABS Off',category='Gears, brakes and chute'},

{combos={{key='W',reformers={'LAlt'}}},down=device_commands.NosegearBrake,cockpit_device_id=devices.GEAR_BRAKES,value_down=1,name='Nosegear Brake On',category='Gears, brakes and chute'},
{combos={{key='W',reformers={'LAlt','LCtrl'}}},down=device_commands.NosegearBrake,cockpit_device_id=devices.GEAR_BRAKES,value_down=0,name='Nosegear Brake Off',category='Gears, brakes and chute'},
{combos={{key='W',reformers={'LCtrl'}}},down=device_commands.EmergBrakes,cockpit_device_id=devices.GEAR_BRAKES,value_down=1,name='Emergency Braking On',category='Gears, brakes and chute'},
{combos={{key='W',reformers={'LCtrl','LShift'}}},down=device_commands.EmergBrakes,cockpit_device_id=devices.GEAR_BRAKES,value_down=0,name='Emergency Brake Off',category='Gears, brakes and chute'},

-- Chute *cover
{combos={{key='P'}},down=device_commands.DragChute,up=device_commands.DragChute, cockpit_device_id=devices.CHUTE,value_down=1.0,value_up=0.0,name='Drag Chute - Activate',category='Gears, brakes and chute'},
{combos={{key='D',reformers={'RShift','RCtrl'}}},down=device_commands.DragChuteDisconnect,up=device_commands.DragChuteDisconnect,cockpit_device_id=devices.CHUTE,value_down=1.0,value_up=0.0,name='Drag Chute - Disconnect',category='Gears, brakes and chute'},

{combos={{key='D',reformers={'RAlt'}}},down=device_commands.DragChuteSafetyCover,cockpit_device_id=devices.CHUTE,value_down=1.0,name='Button Cap Open (for Disconnect Drag Chute)',category='Gears, brakes and chute'},
{combos={{key='D',reformers={'RAlt','RCtrl'}}},down=device_commands.DragChuteSafetyCover,cockpit_device_id=devices.CHUTE,value_down=0.0,name='Button Cap Close (for Disconnect Drag Chute)',category='Gears, brakes and chute'},


--************************* SPRD or ASO ***********************************************************************

-- SPRD / ASO
{combos={{key='J',reformers={'LCtrl'}}},down=device_commands.SPRDstartOn,cockpit_device_id=devices.SPRD,value_down=1,name='SPRD (or ASO), Power On',category='SPRD or ASO Chaff/Flares'},
{combos={{key='J',reformers={'LCtrl','LShift'}}},down=device_commands.SPRDstartOn,cockpit_device_id=devices.SPRD,value_down=0,name='SPRD (or ASO), Power Off',category='SPRD or ASO Chaff/Flares'},
{combos={{key='J',reformers={'LAlt'}}},down=device_commands.SPRDdropOn,cockpit_device_id=devices.SPRD,value_down=1,name='SPRD (or ASO) drop, Power On',category='SPRD or ASO Chaff/Flares'},
{combos={{key='J',reformers={'LAlt','LCtrl'}}},down=device_commands.SPRDdropOn,cockpit_device_id=devices.SPRD,value_down=0,name='SPRD (or ASO) drop, Power Off',category='SPRD or ASO Chaff/Flares'},

{combos={{key='J',reformers={'RWin'}}},down=device_commands.SPRDstartSafetyCover,cockpit_device_id=devices.SPRD,value_down=1,name='SPRD (or ASO), Start Cover, Open',category='SPRD or ASO Chaff/Flares'},
{combos={{key='J',reformers={'RWin','RShift'}}},down=device_commands.SPRDstartSafetyCover,cockpit_device_id=devices.SPRD,value_down=0,name='SPRD (or ASO), Start Cover, Close',category='SPRD or ASO Chaff/Flares'},
{combos={{key='J',reformers={'RShift'}}},down=device_commands.SPRDdropSafetyCover,cockpit_device_id=devices.SPRD,value_down=1,name='SPRD (or ASO), Drop Cover, Open',category='SPRD or ASO Chaff/Flares'},
{combos={{key='J',reformers={'RShift','RCtrl'}}},down=device_commands.SPRDdropSafetyCover,cockpit_device_id=devices.SPRD,value_down=0,name='SPRD (or ASO), Drop Cover, Close',category='SPRD or ASO Chaff/Flares'},

{combos={{key='Space',reformers={'LShift'}}},down=device_commands.SPRDstart,up=device_commands.SPRDstart,cockpit_device_id=devices.SPRD,value_down=1.0,value_up=0.0,name='SPRD Start',category='SPRD or ASO Chaff/Flares'},
{combos={{key='Space',reformers={'LCtrl'}}},down=device_commands.SPRDdrop,up=device_commands.SPRDdrop,cockpit_device_id=devices.SPRD,value_down=1.0,value_up=0.0,name='SPRD Drop / or ASO drop chaff flares',category='SPRD or ASO Chaff/Flares'},


--************************** General *******************************************************************************

{combos={{key='E',reformers={'LCtrl'}}},down=iCommandPlaneEject,name='Eject (3 times)',category='General'},
{combos={{key='T'}},down=iCommandPlaneWingtipSmokeOnOff,name='Smoke',category='General'},

-- Gameplay
{combos={{key='Esc'}},down=iCommandQuit,name='End mission',category='General'},
{combos={{key='Pause'}},down=iCommandBrakeGo,name='Pause',category='General'},
{combos={{key='Z',reformers={'LCtrl'}}},down=iCommandAccelerate,name='Time accelerate',category='General'},
{combos={{key='Z',reformers={'LWin','LCtrl'}}},down=iCommandDecelerate,name='Time decelerate',category='General'},
{combos={{key='Z',reformers={'LShift'}}},down=iCommandNoAcceleration,name='Time normal',category='General'},
{combos={{key='\''}},down=iCommandScoresWindowToggle,name='Score window',category='General'},
{combos={{key=','}},down=iCommandDebriefing,name='Show debriefing window',category='General'},
{combos={{key='.'}},down=iCommandMissionResourcesManagement,name='Rearming and Refueling Window',category='General'},
{combos={{key='Tab'}},down=iCommandChat,name='Multiplayer chat - mode All',category='General'},
{combos={{key='Tab',reformers={'LCtrl'}}},down=iCommandFriendlyChat,name='Multiplayer chat - mode Allies',category='General'},
{combos={{key='Y',reformers={'LCtrl'}}},down=iCommandInfoOnOff,name='Info bar view toggle',category='General'},
{combos={{key='Tab',reformers={'RCtrl','RShift'}}},down=iCommandRecoverHuman,name='Get new plane - respawn',category='General'},
{combos={{key='J',reformers={'RAlt'}}},down=iCommandPlaneJump,name='Jump into other aircraft',category='General'},
{combos={{key='SysRQ'}},down=iCommandScreenShot,name='Screenshot',category='General'},
{combos={{key='Pause',reformers={'RCtrl'}}},down=iCommandGraphicsFrameRate,name='Frame rate counter - Service info',category='General'},
{combos={{key='Y',reformers={'LAlt'}}},down=iCommandViewCoordinatesInLinearUnits,name='Info bar coordinate units toogle',category='General'},
{combos={{key='C',reformers={'LAlt','LShift'}}},down=iCommandCockpitClickModeOnOff,name='Mouse cursor cockpit mode',category='General'},
{combos={{key='S',reformers={'LWin','LAlt'}}},down=iCommandSoundOnOff,name='Sound On/Off',category='General'},
{combos={{key='Scroll',reformers={'RShift','RCtrl'}}},down=iCommandRecordCursorOnOff,name='Record of mouse cursor in track On/Off',category='General'},
{combos={{key='Scroll',reformers={'RShift'}}},down=iCommandRecordSubtitleOn,name='Subtitle recording begin',category='General'},
{combos={{key='Scroll',reformers={'RCtrl'}}},down=iCommandRecordSubtitleOff,name='Subtitle recording end',category='General'},
{combos={{key='Pause',reformers={'LShift','LWin'}}},down=iCommandActivePauseOnOff,name='Active Pause',category='General'},
--{combos={{key='Pause',reformers={'RShift','RCtrl'}}},down=iCommandActivePauseOnOff,name='Active Pause',category='General'},
--{down = iCommandActivePauseOnOff, name = 'Active Pause', category = 'General'},

-- Labels
{combos={{key='F10',reformers={'LShift'}}},down=iCommandMarkerState,name='All Labels',category='General'},
{combos={{key='F2',reformers={'LShift'}}},down=iCommandMarkerStatePlane,name='Aircraft Labels',category='General'},
{combos={{key='F6',reformers={'LShift'}}},down=iCommandMarkerStateRocket,name='Missile Labels',category='General'},
{combos={{key='F9',reformers={'LShift'}}},down=iCommandMarkerStateShip,name='Vehicle & Ship Labels',category='General'},


--**************************** Life support **************************************************************

{combos={{key='P',reformers={'LWin'}}},down=device_commands.EmergOxygene,cockpit_device_id=devices.OXYGENE_SYSTEM,value_down=1.0,name='Emergency O2 On',category='Life support'},
{combos={{key='P',reformers={'LWin','LCtrl'}}},down=device_commands.EmergOxygene,cockpit_device_id=devices.OXYGENE_SYSTEM,value_down=0.0,name='Emergency O2 Off',category='Life support'},
{combos={{key='P',reformers={'LCtrl'}}},down=device_commands.MixtureOxygeneSelect,cockpit_device_id=devices.OXYGENE_SYSTEM,value_down=1.0,name='Air - Mix',category='Life support'},
{combos={{key='P',reformers={'LAlt','LCtrl'}}},down=device_commands.MixtureOxygeneSelect,cockpit_device_id=devices.OXYGENE_SYSTEM,value_down=0.0,name='Air - 100% O2',category='Life support'},

-- Canopy
{combos={{key='C',reformers={'LCtrl'}}},down=device_commands.CanopyAntiIce,up=device_commands.CanopyAntiIce,cockpit_device_id=devices.CANOPY,value_down=1.0,value_up=0.0,name='Canopy Anti Icing',category='Life support'},

{combos={{key='C',reformers={'RCtrl'}}},down=device_commands.CanopyClose,up=device_commands.CanopyClose,cockpit_device_id=devices.CANOPY,value_down=1.0,value_up=0.0,name='Canopy Close',category='Life support'},
{combos={{key='C',reformers={'RCtrl','RAlt'}}},down=device_commands.CanopyOpen,up=device_commands.CanopyOpen,cockpit_device_id=devices.CANOPY,value_down=1.0,value_up=0.0,name='Canopy Open',category='Life support'},

{combos={{key='C',reformers={'LShift'}}},down=device_commands.CanopyLockHandle,cockpit_device_id=devices.CANOPY,value_down=1.0,name='Canopy Locked',category='Life support'},
{combos={{key='C',reformers={'LShift','LCtrl'}}},down=device_commands.CanopyLockHandle,cockpit_device_id=devices.CANOPY,value_down=0.0,name='Canopy Unlocked',category='Life support'},
{combos={{key='C',reformers={'LAlt'}}},down=device_commands.CanopyHermetHandle,cockpit_device_id=devices.CANOPY,value_down=1.0,name='Canopy Pressurized',category='Life support'},
{combos={{key='C',reformers={'LAlt','LCtrl'}}},down=device_commands.CanopyHermetHandle,cockpit_device_id=devices.CANOPY,value_down=0.0,name='Canopy Unpressurized',category='Life support'},

{combos={{key='C',reformers={'LWin','LAlt'}}},down=device_commands.CanopyEmergRelease,cockpit_device_id=devices.CANOPY,value_down=1.0,name='Canopy Emergency jettison',category='Life support'},

-- Helmet Visor
{combos={{key='Home',reformers={'LAlt'}}},down=device_commands.HelmetVisor,cockpit_device_id=devices.HELMET_VISOR,value_down=1.0,name='Helmet visor - On',category='Life support'},
{combos={{key='End',reformers={'LAlt'}}},down=device_commands.HelmetVisor,cockpit_device_id=devices.HELMET_VISOR,value_down=0.0,name='Helmet visor - Off',category='Life support'},


--*************** Lights ***********************************************************************

-- Cockpit Lights
{combos={{key='Num+',reformers={'LAlt'}}},pressed=device_commands.TextBacklight_kb_up,up=device_commands.TextBacklight_kb_up,cockpit_device_id=devices.LIGHTS,value_pressed=1.0,value_up=0.0,name='Cockpit Texts Backlight +',category='Lights'},
{combos={{key='Num-',reformers={'LAlt'}}},pressed=device_commands.TextBacklight_kb_down,up=device_commands.TextBacklight_kb_down,cockpit_device_id=devices.LIGHTS,value_pressed=-1.0,value_up=0.0,name='Cockpit Texts Backlight -',category='Lights'},
{combos={{key='Num+',reformers={'LShift'}}},pressed=device_commands.InstrumentsBacklight_kb_up,up=device_commands.InstrumentsBacklight_kb_up,cockpit_device_id=devices.LIGHTS,value_pressed=1.0,value_up=0.0,name='Cockpit Instruments Backlight +',category='Lights'},
{combos={{key='Num-',reformers={'LShift'}}},pressed=device_commands.InstrumentsBacklight_kb_down,up=device_commands.InstrumentsBacklight_kb_down,cockpit_device_id=devices.LIGHTS,value_pressed=-1.0,value_up=0.0,name='Cockpit Instruments Backlight -',category='Lights'},
{combos={{key='Num+',reformers={'LCtrl'}}},pressed=device_commands.RedLightsMain_kb_up,up=device_commands.RedLightsMain_kb_up,cockpit_device_id=devices.LIGHTS,value_pressed=1.0,value_up=0.0,name='Cockpit Red Lights -',category='Lights'},
{combos={{key='Num-',reformers={'LCtrl'}}},pressed=device_commands.RedLightsMain_kb_down,up=device_commands.RedLightsMain_kb_down,cockpit_device_id=devices.LIGHTS,value_pressed=-1.0,value_up=0.0,name='Cockpit Red Lights +',category='Lights'},
{combos={{key='Num+',reformers={'LWin'}}},pressed=device_commands.WhiteLightsMain_kb_up,up=device_commands.WhiteLightsMain_kb_up,cockpit_device_id=devices.LIGHTS,value_pressed=1.0,value_up=0.0,name='Cockpit White Lights -',category='Lights'},
{combos={{key='Num-',reformers={'LWin'}}},pressed=device_commands.WhiteLightsMain_kb_down,up=device_commands.WhiteLightsMain_kb_down,cockpit_device_id=devices.LIGHTS,value_pressed=-1.0,value_up=0.0,name='Cockpit White Lights +',category='Lights'},

{combos={{key='L',reformers={'RCtrl'}}},down= 3256,cockpit_device_id=0,value_down=0,name='Pilot torch light on-off',category='Lights'},--

--Landing Lights
{combos={{key='L',reformers={'LCtrl'}}},down=device_commands.LandingLights,cockpit_device_id=devices.LIGHTS,value_down=0.5,name='Landing Lights Taxi',category='Lights'},
{combos={{key='L',reformers={'LAlt'}}},down=device_commands.LandingLights,cockpit_device_id=devices.LIGHTS,value_down=1.0,name='Landing Lights Land',category='Lights'},
{combos={{key='L',reformers={'LAlt','LCtrl'}}},down=device_commands.LandingLights,cockpit_device_id=devices.LIGHTS,value_down=0.0,name='Landing Lights Off',category='Lights'},


-- Nav Lights
{combos={{key='L',reformers={'LShift'}}},down=device_commands.NavLights,cockpit_device_id=devices.LIGHTS,value_down=0.99,name='Nav Lights Max',category='Lights'},
{combos={{key='L',reformers={'LShift','LAlt'}}},down=device_commands.NavLights,cockpit_device_id=devices.LIGHTS,value_down=0.66,name='Nav Lights Med',category='Lights'},
{combos={{key='L',reformers={'LShift','LWin'}}},down=device_commands.NavLights,cockpit_device_id=devices.LIGHTS,value_down=0.33,name='Nav Lights Min',category='Lights'},
{combos={{key='L',reformers={'LShift','LCtrl'}}},down=device_commands.NavLights,cockpit_device_id=devices.LIGHTS,value_down=0.0,name='Nav Lights Off',category='Lights'},

{combos={{key='L',reformers={'LAlt','LWin'}}},down=device_commands.CheckWarningLights10,up=device_commands.CheckWarningLights10,cockpit_device_id=devices.LIGHTS_WARNING,value_down=1.0,value_up=0.0,name='Check Warning Lights',category='Lights'},

{combos={{key='Back'}},down=device_commands.SORC,up=device_commands.SORC,cockpit_device_id=devices.LIGHTS_WARNING,value_down=1.0,value_up=0.0,name='SORC',category='Lights'},

--************** El. Power *****************************************************************

{combos={{key='I',reformers={'RShift'}}},down=device_commands.PO7501,cockpit_device_id=devices.AC_BUS,value_down=1.0,name='PO-750 Inverter #1 On',category='Power'},
{combos={{key='I',reformers={'RShift','RCtrl'}}},down=device_commands.PO7501,cockpit_device_id=devices.AC_BUS,value_down=0.0,name='PO-750 Inverter #1 Off',category='Power'},

{combos={{key='I',reformers={'RAlt'}}},down=device_commands.PO7502,cockpit_device_id=devices.AC_BUS,value_down=1.0,name='PO-750 Inverter #2 On',category='Power'},
{combos={{key='I',reformers={'RAlt','RCtrl'}}},down=device_commands.PO7502,cockpit_device_id=devices.AC_BUS,value_down=0.0,name='PO-750 Inverter #2 Off',category='Power'},

{combos={{key='I',reformers={'RCtrl'}}},down=device_commands.EmergencyInverter,cockpit_device_id=devices.AC_BUS,value_down=1.0,name='Emergency Inverter On',category='Power'},
{combos={{key='I',reformers={'RShift','RAlt'}}},down=device_commands.EmergencyInverter,cockpit_device_id=devices.AC_BUS,value_down=0.0,name='Emergency Inverter Off',category='Power'},

{combos={{key='O',reformers={'RShift'}}},down=device_commands.BatteryHeat,cockpit_device_id=devices.DC_BUS,value_down=1.0,name='Battery Heat On',category='Power'},
{combos={{key='O',reformers={'RShift','RCtrl'}}},down=device_commands.BatteryHeat,cockpit_device_id=devices.DC_BUS,value_down=0.0,name='Battery Heat Off',category='Power'},

{combos={{key='O',reformers={'RAlt'}}},down=device_commands.BatteryOn,cockpit_device_id=devices.DC_BUS,value_down=1.0,name='Battery On',category='Power'},
{combos={{key='O',reformers={'RAlt','RCtrl'}}},down=device_commands.BatteryOn,cockpit_device_id=devices.DC_BUS,value_down=0.0,name='Battery Off',category='Power'},

{combos={{key='K',reformers={'RShift'}}},down=device_commands.DCGenerator,cockpit_device_id=devices.DC_BUS,value_down=1.0,name='DC Generator On',category='Power'},
{combos={{key='K',reformers={'RShift','RCtrl'}}},down=device_commands.DCGenerator,cockpit_device_id=devices.DC_BUS,value_down=0.0,name='DC Generator Off',category='Power'},

{combos={{key='K',reformers={'RAlt'}}},down=device_commands.ACGenerator,cockpit_device_id=devices.AC_BUS,value_down=1.0,name='AC Generator On',category='Power'},
{combos={{key='K',reformers={'RAlt','RCtrl'}}},down=device_commands.ACGenerator,cockpit_device_id=devices.AC_BUS,value_down=0.0,name='AC Generator Off',category='Power'},

{combos={{key='L',reformers={'RShift'}}},down=device_commands.Giro1,cockpit_device_id=devices.GYRO_DEVICES,value_down=1.0,name='Giro,NPP,SAU,RLS Signal,KPP Power On',category='Power'},
{combos={{key='L',reformers={'RShift','RCtrl'}}},down=device_commands.Giro1,cockpit_device_id=devices.GYRO_DEVICES,value_down=0.0,name='Giro,NPP,SAU,RLS Signal,KPP Power Off',category='Power'},

{combos={{key='L',reformers={'RAlt'}}},down=device_commands.Giro2,cockpit_device_id=devices.GYRO_DEVICES,value_down=1.0,name='DA-200 Signal,Giro,NPP,RLS,SAU Power On',category='Power'},
{combos={{key='L',reformers={'RAlt','RCtrl'}}},down=device_commands.Giro2,cockpit_device_id=devices.GYRO_DEVICES,value_down=0.0,name='DA-200 Signal,Giro,NPP,RLS,SAU Power Off',category='Power'},


--***************** Radar and Spo **********************************************************

-- Radar
{combos={{key='4',reformers={'LAlt'}}},down=device_commands.RADARon,cockpit_device_id=devices.RADAR,value_down=0.5,name='Radar Standby',category='Radar and SPO'},
{combos={{key='4',reformers={'LShift','LAlt'}}},down=device_commands.RADARon,cockpit_device_id=devices.RADAR,value_down=1,name='Radar On',category='Radar and SPO'},
{combos={{key='4',reformers={'LShift','LCtrl'}}},down=device_commands.RADARon,cockpit_device_id=devices.RADAR,value_down=0,name='Radar Off',category='Radar and SPO'},


{combos={{key='5',reformers={'LAlt'}}},down=device_commands.RADARlowAlt,cockpit_device_id=devices.RADAR,value_down=0.5,name='Low Altitude Filter',category='Radar and SPO'},
{combos={{key='5',reformers={'LShift','LAlt'}}},down=device_commands.RADARlowAlt,cockpit_device_id=devices.RADAR,value_down=1,name='Low Altitude Antenna Tilt',category='Radar and SPO'},
{combos={{key='5',reformers={'LShift','LCtrl'}}},down=device_commands.RADARlowAlt,cockpit_device_id=devices.RADAR,value_down=0,name='Low Altitude Filter Off',category='Radar and SPO'},

{combos={{key='6',reformers={'LAlt'}}},down=device_commands.RADARfixBeam,cockpit_device_id=devices.RADAR,value_down=1,name='Locked Beam On',category='Radar and SPO'},
{combos={{key='6',reformers={'LShift','LCtrl'}}},down=device_commands.RADARfixBeam,cockpit_device_id=devices.RADAR,value_down=0,name='Locked Beam Off',category='Radar and SPO'},

{combos={{key='O'}},pressed=device_commands.RUDoblog_kb_up,cockpit_device_id=devices.ASP,value_pressed=0.1,value_up=0.0,name='TDC Range / Pipper Span +',category='Radar and SPO'},
{combos={{key='L'}},pressed=device_commands.RUDoblog_kb_down,cockpit_device_id=devices.ASP,value_pressed=0.1,value_up=0.0,name='TDC Range / Pipper Span -',category='Radar and SPO'},

{combos={{key='Enter'}},down=device_commands.Zahvat,up=device_commands.Zahvat,cockpit_device_id=devices.RADAR,value_down=1.0,value_up=0.0,name='Target Lock On',category='Radar and SPO'},

{combos={{key='Q',reformers={'LShift'}}},down=device_commands.RADARjamCont,up=device_commands.RADARjamCont,cockpit_device_id=devices.RADAR,value_down=1,value_up=0,name='Radar ECM protection panel - Continues',category='Radar and SPO'},
{combos={{key='W',reformers={'LShift'}}},down=device_commands.RADARjamTmp,up=device_commands.RADARjamTmp,cockpit_device_id=devices.RADAR,value_down=1,value_up=0,name='Radar ECM protection panel - Temporary',category='Radar and SPO'},
{combos={{key='E',reformers={'LShift'}}},down=device_commands.RADARjamPass,up=device_commands.RADARjamPass,cockpit_device_id=devices.RADAR,value_down=1,value_up=0,name='Radar ECM protection panel - Passive',category='Radar and SPO'},
{combos={{key='R',reformers={'LShift'}}},down=device_commands.RADARjamMeteo,up=device_commands.RADARjamMeteo,cockpit_device_id=devices.RADAR,value_down=1,value_up=0,name='Radar ECM protection panel - Weather',category='Radar and SPO'},
{combos={{key='A',reformers={'LShift'}}},down=device_commands.RADARvopros,up=device_commands.RADARvopros,cockpit_device_id=devices.RADAR,value_down=1,value_up=0,name='Radar ECM protection panel - IFF',category='Radar and SPO'},
{combos={{key='S',reformers={'LShift'}}},down=device_commands.RADARjamLowSpeed,up=device_commands.RADARjamLowSpeed,cockpit_device_id=devices.RADAR,value_down=1,value_up=0,name='Radar ECM protection panel - Low Speed Target',category='Radar and SPO'},
{combos={{key='D',reformers={'LShift'}}},down=device_commands.RADARkontrol,up=device_commands.RADARkontrol,cockpit_device_id=devices.RADAR,value_down=1,value_up=0,name='Radar ECM protection panel - Selftest',category='Radar and SPO'},
{combos={{key='F',reformers={'LShift','LCtrl'}}},down=device_commands.RADARreset,up=device_commands.RADARreset,cockpit_device_id=devices.RADAR,value_down=1.0,value_up=0.0,name='Radar ECM protection panel - Reset',category='Radar and SPO'},

-- SPO - RWR
{combos={{key='Z',reformers={'RShift'}}},down=device_commands.SPOon,cockpit_device_id=devices.SPO,value_down=1,name='SPO-10 RWR On',category='Radar and SPO'},
{combos={{key='Z',reformers={'RShift','RCtrl'}}},down=device_commands.SPOon,cockpit_device_id=devices.SPO,value_down=0,name='SPO-10 RWR Off',category='Radar and SPO'},
{combos={{key='Z',reformers={'LAlt'}}},down=device_commands.SPOdayNight,cockpit_device_id=devices.SPO,value_down=1,name='SPO-10 Night lights',category='Radar and SPO'},
{combos={{key='Z',reformers={'RShift','RAlt'}}},down=device_commands.SPOdayNight,cockpit_device_id=devices.SPO,value_down=0,name='SPO-10 Day lights',category='Radar and SPO'},
{combos={{key='Z',reformers={'RCtrl'}}},down=device_commands.SPOtest,up=device_commands.SPOtest,cockpit_device_id=devices.SPO,value_down=1.0,value_up=0.0,name='SPO-10 Test',category='Radar and SPO'},


--***************************************** Radio *************************************************************

{combos={{key='\\'--[[,reformers={'RCtrl'}]]}},down=device_commands.RadioINTERCOM,up=device_commands.RadioINTERCOM,cockpit_device_id=devices.INTERCOM,value_down=1.0,value_up=0.0,name='Intercomm menu',category='Radio Communications'},

{combos={{key='Q',reformers={'LWin'}}},down=iCommandAWACSBanditBearing,name='Request AWACS Nearest Bandit',category='Radio Communications'},

{combos={{key='W',reformers={'LWin'}}},down=iCommandPlaneDoAndBack,name='Flight - Complete mission and rejoin',category='Radio Communications'},
{combos={{key='E',reformers={'LWin'}}},down=iCommandPlaneDoAndHome,name='Flight - Complete mission and RTB',category='Radio Communications'},

{combos={{key='S',reformers={'LWin'}}},down=iCommandPlane_EngageAirDefenses,name='Flight - Attack air defenses',category='Radio Communications'},
{combos={{key='D',reformers={'LWin'}}},down=iCommandPlane_EngageGroundTargets,name='Flight - Attack ground targets',category='Radio Communications'},

{combos={{key='X',reformers={'LWin'}}},down=iCommandPlaneCoverMySix,name='Cover Me',category='Radio Communications'},
{combos={{key='C',reformers={'LWin'}}},down=iCommandPlaneAttackMyTarget,name='Attack My Target',category='Radio Communications'},

{combos={{key='R',reformers={'LWin'}}},down=iCommandPlaneFormation,name='Toggle Formation',category='Radio Communications'},
{combos={{key='T',reformers={'LWin'}}},down=iCommandPlaneJoinUp,name='Join Up Formation',category='Radio Communications'},

{combos={{key='A',reformers={'LWin'}}},down=iCommandAWACSHomeBearing,name='Request AWACS Home Airbase',category='Radio Communications'},

--******************************* Views *************************************************************************
--Defaults

{combos={{key=']',reformers={'LShift'}}},down=iCommandViewFastKeyboard,name='Keyboard Rate Fast',category='Views'},
{combos={{key=']',reformers={'LCtrl'}}},down=iCommandViewSlowKeyboard,name='Keyboard Rate Slow',category='Views'},
{combos={{key=']',reformers={'LAlt'}}},down=iCommandViewNormalKeyboard,name='Keyboard Rate Normal',category='Views'},
{combos={{key='[',reformers={'LShift'}}},down=iCommandViewFastMouse,name='Mouse Rate Fast',category='Views'},
{combos={{key='[',reformers={'LCtrl'}}},down=iCommandViewSlowMouse,name='Mouse Rate Slow',category='Views'},
{combos={{key='[',reformers={'LAlt'}}},down=iCommandViewNormalMouse,name='Mouse Rate Normal',category='Views'},

-- Save current cockpit camera angles for fast numpad jumps
{combos={{key='Num0',reformers={'RAlt'}}},down=iCommandViewSaveAngles,name='Save Cockpit Angles',category='Views'},
{combos={{key='Num8',reformers={'RShift'}}},pressed=iCommandViewUp,up=iCommandViewStop,name='View up',category='Views'},
{combos={{key='Num2',reformers={'RShift'}}},pressed=iCommandViewDown,up=iCommandViewStop,name='View down',category='Views'},
{combos={{key='Num4',reformers={'RShift'}}},pressed=iCommandViewLeft,up=iCommandViewStop,name='View left',category='Views'},
{combos={{key='Num6',reformers={'RShift'}}},pressed=iCommandViewRight,up=iCommandViewStop,name='View right',category='Views'},
{combos={{key='Num9',reformers={'RShift'}}},pressed=iCommandViewUpRight,up=iCommandViewStop,name='View up right',category='Views'},
{combos={{key='Num3',reformers={'RShift'}}},pressed=iCommandViewDownRight,up=iCommandViewStop,name='View down right',category='Views'},
{combos={{key='Num1',reformers={'RShift'}}},pressed=iCommandViewDownLeft,up=iCommandViewStop,name='View down left',category='Views'},
{combos={{key='Num7',reformers={'RShift'}}},pressed=iCommandViewUpLeft,up=iCommandViewStop,name='View up left',category='Views'},

-- View
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = 'View Left slow', category = 'View'},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = 'View Right slow', category = 'View'},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = 'View Up slow', category = 'View'},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = 'View Down slow', category = 'View'},
{combos = {{key = 'JOY_BTN_POV1_UR'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = 'View Up Right slow', category = 'View'},
{combos = {{key = 'JOY_BTN_POV1_DR'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = 'View Down Right slow', category = 'View'},
{combos = {{key = 'JOY_BTN_POV1_DL'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = 'View Down Left slow', category = 'View'},
{combos = {{key = 'JOY_BTN_POV1_UL'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = 'View Up Left slow', category = 'View'},
{combos = {{key = 'JOY_BTN3'}}, pressed = iCommandViewCenter, name = 'View Center', category = 'View'},

-- F views
{combos={{key='F1'}},down=iCommandViewCockpit,name='F1 Cockpit view',category='Views'},
{combos={{key='F1',reformers={'LCtrl'}}},down=iCommandNaturalViewCockpitIn,name='F1 Natural head movement view',category='Views'},
{combos={{key='F1',reformers={'LAlt'}}},down=iCommandViewHUDOnlyOnOff,name='F1 HUD only view switch',category='Views'},
{combos={{key='F2'}},down=iCommandViewAir,name='F2 Aircraft view',category='Views'},
{combos={{key='F2',reformers={'LCtrl'}}},down=iCommandViewMe,name='F2 View own aircraft',category='Views'},
{combos={{key='F2',reformers={'RAlt'}}},down=iCommandViewFromTo,name='F2 Toggle camera position',category='Views'},
{combos={{key='F2',reformers={'LAlt'}}},down=iCommandViewLocal,name='F2 Toggle local camera control',category='Views'},
{combos={{key='F3'}},down=iCommandViewTower,name='F3 Fly-By view',category='Views'},
{combos={{key='F3',reformers={'LCtrl'}}},down=iCommandViewTowerJump,name='F3 Fly-By jump view',category='Views'},
{combos={{key='F4'}},down=iCommandViewRear,name='F4 Look back view',category='Views'},
{combos={{key='F4',reformers={'LCtrl'}}},down=iCommandViewChase,name='F4 Chase view',category='Views'},
{combos={{key='F5'}},down=iCommandViewFight,name='F5 nearest AC view',category='Views'},
{combos={{key='F5',reformers={'LCtrl'}}},down=iCommandViewFightGround,name='F5 Ground hostile view',category='Views'},
{combos={{key='F6'}},down=iCommandViewWeapons,name='F6 Released weapon view',category='Views'},
{combos={{key='F6',reformers={'LCtrl'}}},down=iCommandViewWeaponAndTarget,name='F6 Weapon to target view',category='Views'},
{combos={{key='F7'}},down=iCommandViewGround,name='F7 Ground unit view',category='Views'},
{combos={{key='F8'}},down=iCommandViewTargets,name='F8 Target view',category='Views'},
{combos={{key='F8',reformers={'RCtrl'}}},down=iCommandViewTargetType,name='F8 Player targets/All targets filter',category='Views'},
{combos={{key='F9'}},down=iCommandViewNavy,name='F9 Ship view',category='Views'},
{combos={{key='F9',reformers={'LAlt'}}},down=iCommandViewLndgOfficer,name='F9 Landing signal officer view',category='Views'},
{combos={{key='F10'}},down=iCommandViewAWACS,name='F10 Theater map view',category='Views'},
{combos={{key='F10',reformers={'LCtrl'}}},down=iCommandViewAWACSJump,name='F10 Jump to theater map view over current point',category='Views'},
{combos={{key='F11'}},down=iCommandViewFree,name='F11 Airport free camera',category='Views'},
{combos={{key='F11',reformers={'LCtrl'}}},down=iCommandViewFreeJump,name='F11 Jump to free camera',category='Views'},
{combos={{key='F12'}},down=iCommandViewStatic,name='F12 Static object view',category='Views'},
{combos={{key='F12',reformers={'LCtrl'}}},down=iCommandViewMirage,name='F12 Civil traffic view',category='Views'},
{combos={{key='F12',reformers={'LShift'}}},down=iCommandViewLocomotivesToggle,name='F12 Trains/cars toggle',category='Views'},
{combos={{key='F1',reformers={'LCtrl','LShift'}}},down=iCommandViewPitHeadOnOff,name='F1 Head shift movement on / off',category='Views'},

{combos={{key='Num*'}},pressed=iCommandViewForwardSlow,up=iCommandViewForwardSlowStop,name='Zoom in slow',category='Views'},
{combos={{key='Num/'}},pressed=iCommandViewBackSlow,up=iCommandViewBackSlowStop,name='Zoom out slow',category='Views'},
{combos={{key='NumEnter'}},down=iCommandViewAngleDefault,name='Zoom normal',category='Views'},
{combos={{key='Num*',reformers={'RCtrl'}}},pressed=iCommandViewExternalZoomIn,up=iCommandViewExternalZoomInStop,name='Zoom external in',category='Views'},
{combos={{key='Num/',reformers={'RCtrl'}}},pressed=iCommandViewExternalZoomOut,up=iCommandViewExternalZoomOutStop,name='Zoom external out',category='Views'},
{combos={{key='NumEnter',reformers={'RCtrl'}}},down=iCommandViewExternalZoomDefault,name='Zoom external normal',category='Views'},
{combos={{key='Num*',reformers={'LAlt'}}},down=iCommandViewSpeedUp,name='F11 Camera moving forward',category='Views'},
{combos={{key='Num/',reformers={'LAlt'}}},down=iCommandViewSlowDown,name='F11 Camera moving backward',category='Views'},

-- Cockpit view
{combos={{key='Num0'}},down=iCommandViewTempCockpitOn,up=iCommandViewTempCockpitOff,name='Cockpit panel view in',category='Views'},
{combos={{key='Num0',reformers={'RCtrl'}}},down=iCommandViewTempCockpitToggle,name='Cockpit panel view toggle',category='Views'},

-- Cockpit Camera Motion
{combos={{key='Num8',reformers={'RCtrl','RShift'}}},pressed=iCommandViewPitCameraMoveUp,up=iCommandViewPitCameraMoveStop,name='Cockpit Camera Move Up',category='Views'},
{combos={{key='Num2',reformers={'RCtrl','RShift'}}},pressed=iCommandViewPitCameraMoveDown,up=iCommandViewPitCameraMoveStop,name='Cockpit Camera Move Down',category='Views'},
{combos={{key='Num4',reformers={'RCtrl','RShift'}}},pressed=iCommandViewPitCameraMoveLeft,up=iCommandViewPitCameraMoveStop,name='Cockpit Camera Move Left',category='Views'},
{combos={{key='Num6',reformers={'RCtrl','RShift'}}},pressed=iCommandViewPitCameraMoveRight,up=iCommandViewPitCameraMoveStop,name='Cockpit Camera Move Right',category='Views'},
{combos={{key='Num*',reformers={'RCtrl','RShift'}}},pressed=iCommandViewPitCameraMoveForward,up=iCommandViewPitCameraMoveStop,name='Cockpit Camera Move Forward',category='Views'},
{combos={{key='Num/',reformers={'RCtrl','RShift'}}},pressed=iCommandViewPitCameraMoveBack,up=iCommandViewPitCameraMoveStop,name='Cockpit Camera Move Back',category='Views'},
{combos={{key='Num5',reformers={'RCtrl','RShift'}}},down=iCommandViewPitCameraMoveCenter,name='Cockpit Camera Move Center',category='Views'},

{combos={{key='Num8',reformers={'RCtrl'}}},down=iCommandViewCameraUp,up=iCommandViewCameraCenter,name='Glance up',category='Views'},
{combos={{key='Num2',reformers={'RCtrl'}}},down=iCommandViewCameraDown,up=iCommandViewCameraCenter,name='Glance down',category='Views'},
{combos={{key='Num4',reformers={'RCtrl'}}},down=iCommandViewCameraLeft,up=iCommandViewCameraCenter,name='Glance left',category='Views'},
{combos={{key='Num6',reformers={'RCtrl'}}},down=iCommandViewCameraRight,up=iCommandViewCameraCenter,name='Glance right',category='Views'},
{combos={{key='Num7',reformers={'RCtrl'}}},down=iCommandViewCameraUpLeft,up=iCommandViewCameraCenter,name='Glance up-left',category='Views'},
{combos={{key='Num1',reformers={'RCtrl'}}},down=iCommandViewCameraDownLeft,up=iCommandViewCameraCenter,name='Glance down-left',category='Views'},
{combos={{key='Num9',reformers={'RCtrl'}}},down=iCommandViewCameraUpRight,up=iCommandViewCameraCenter,name='Glance up-right',category='Views'},
{combos={{key='Num3',reformers={'RCtrl'}}},down=iCommandViewCameraDownRight,up=iCommandViewCameraCenter,name='Glance down-right',category='Views'},
{combos={{key='Z',reformers={'LAlt','LShift'}}},down=iCommandViewPanToggle,name='Camera pan mode toggle',category='Views'},

{combos={{key='Num8',reformers={'RAlt'}}},down=iCommandViewCameraUpSlow,name='Camera snap view up',category='Views'},
{combos={{key='Num2',reformers={'RAlt'}}},down=iCommandViewCameraDownSlow,name='Camera snap view down',category='Views'},
{combos={{key='Num4',reformers={'RAlt'}}},down=iCommandViewCameraLeftSlow,name='Camera snap view left',category='Views'},
{combos={{key='Num6',reformers={'RAlt'}}},down=iCommandViewCameraRightSlow,name='Camera snap view right',category='Views'},
{combos={{key='Num7',reformers={'RAlt'}}},down=iCommandViewCameraUpLeftSlow,name='Camera snap view up-left',category='Views'},
{combos={{key='Num1',reformers={'RAlt'}}},down=iCommandViewCameraDownLeftSlow,name='Camera snap view down-left',category='Views'},
{combos={{key='Num9',reformers={'RAlt'}}},down=iCommandViewCameraUpRightSlow,name='Camera snap view up-right',category='Views'},
{combos={{key='Num3',reformers={'RAlt'}}},down=iCommandViewCameraDownRightSlow,name='Camera snap view down-right',category='Views'},
{combos={{key='Num5',reformers={'RShift'}}},down=iCommandViewCameraCenter,name='Center Camera View',category='Views'},
{combos={{key='Num5',reformers={'RCtrl'}}},down=iCommandViewCameraReturn,name='Return Camera',category='Views'},
{combos={{key='Num5',reformers={'RAlt'}}},down=iCommandViewCameraBaseReturn,name='Return Camera Base',category='Views'},

{combos={{key='Num0',reformers={'LWin'}}},down=iCommandViewSnapView0,up=iCommandViewSnapViewStop,name='Custom Snap View 0',category='Views'},
{combos={{key='Num1',reformers={'LWin'}}},down=iCommandViewSnapView1,up=iCommandViewSnapViewStop,name='Custom Snap View 1',category='Views'},
{combos={{key='Num2',reformers={'LWin'}}},down=iCommandViewSnapView2,up=iCommandViewSnapViewStop,name='Custom Snap View 2',category='Views'},
{combos={{key='Num3',reformers={'LWin'}}},down=iCommandViewSnapView3,up=iCommandViewSnapViewStop,name='Custom Snap View 3',category='Views'},
{combos={{key='Num4',reformers={'LWin'}}},down=iCommandViewSnapView4,up=iCommandViewSnapViewStop,name='Custom Snap View 4',category='Views'},
{combos={{key='Num5',reformers={'LWin'}}},down=iCommandViewSnapView5,up=iCommandViewSnapViewStop,name='Custom Snap View 5',category='Views'},
{combos={{key='Num6',reformers={'LWin'}}},down=iCommandViewSnapView6,up=iCommandViewSnapViewStop,name='Custom Snap View 6',category='Views'},
{combos={{key='Num7',reformers={'LWin'}}},down=iCommandViewSnapView7,up=iCommandViewSnapViewStop,name='Custom Snap View 7',category='Views'},
{combos={{key='Num8',reformers={'LWin'}}},down=iCommandViewSnapView8,up=iCommandViewSnapViewStop,name='Custom Snap View 8',category='Views'},
{combos={{key='Num9',reformers={'LWin'}}},down=iCommandViewSnapView9,up=iCommandViewSnapViewStop,name='Custom Snap View 9',category='Views'},

{combos={{key='Num8',reformers={'RWin'}}},down=iCommandViewLeftMirrorOn,up=iCommandViewLeftMirrorOff,name='Mirror View',category='Views'},

{combos={{key='Num*',reformers={'RShift'}}},pressed=iCommandViewForward,up=iCommandViewForwardStop,name='Zoom in',category='Views'},
{combos={{key='Num/',reformers={'RShift'}}},pressed=iCommandViewBack,up=iCommandViewBackStop,name='Zoom out',category='Views'},


-- Extended view
{combos={{key='J',reformers={'LShift'}}},down=iCommandViewCameraJiggle,name='Camera jiggle toggle',category='Views'},
{combos={{key='K',reformers={'LAlt'}}},down=iCommandViewKeepTerrain,name='Keep terrain camera altitude',category='Views'},
{combos={{key='Home',reformers={'RCtrl','RShift'}}},down=iCommandViewFriends,name='View friends mode',category='Views'},
{combos={{key='End',reformers={'RCtrl','RShift'}}},down=iCommandViewEnemies,name='View enemies mode',category='Views'},
{combos={{key='Delete',reformers={'RCtrl'}}},down=iCommandViewAll,name='View all mode',category='Views'},
{combos={{key='Num+',reformers={'RCtrl'}}},down=iCommandViewPlus,name='Toggle tracking fire weapon',category='Views'},
{combos={{key='PageDown',reformers={'LCtrl'}}},down=iCommandViewSwitchForward,name='Objects switching direction forward ',category='Views'},
{combos={{key='PageUp',reformers={'LCtrl'}}},down=iCommandViewSwitchReverse,name='Objects switching direction reverse ',category='Views'},
{combos={{key='Delete',reformers={'LAlt'}}},down=iCommandViewObjectIgnore,name='Object exclude ',category='Views'},
{combos={{key='Insert',reformers={'LAlt'}}},down=iCommandViewObjectsAll,name='Objects all excluded - include',category='Views'},

-- Padlock
{combos={{key='Num.'}},down=iCommandViewLock,name='Lock View (cycle padlock)',category='Views'},
{combos={{key='NumLock'}},down=iCommandViewUnlock,name='Unlock view (stop padlock)',category='Views'},
{combos={{key='Num.',reformers={'RShift'}}},down=iCommandAllMissilePadlock,name='All missiles padlock',category='Views'},
{combos={{key='Num.',reformers={'RAlt'}}},down=iCommandThreatMissilePadlock,name='Threat missile padlock',category='Views'},
{combos={{key='Num.',reformers={'RCtrl'}}},down=iCommandViewTerrainLock,name='Lock terrain view',category='Views'},


--**************************** Weapons management /// several sub cats **********************************************************

--***************************** Weapons management / ASP *********************************************************

-- ASP Gunsight
{combos={{key='1',reformers={'LShift'}}},down=device_commands.ASPmissileGunSelect,cockpit_device_id=devices.ASP,value_down=1.0,name='ASP Mode - Gun',category='Weapons / ASP'},
{combos={{key='1',reformers={'LCtrl'}}},down=device_commands.ASPmissileGunSelect,cockpit_device_id=devices.ASP,value_down=0.0,name='ASP Mode - Missiles-Rockets',category='Weapons / ASP'},

{combos={{key='2',reformers={'LShift'}}},down=device_commands.ASPbombStrelbSelect,cockpit_device_id=devices.ASP,value_down=1.0,name='ASP Mode - Shooting',category='Weapons / ASP'},
{combos={{key='2',reformers={'LCtrl'}}},down=device_commands.ASPbombStrelbSelect,cockpit_device_id=devices.ASP,value_down=0.0,name='ASP Mode - Bombardment',category='Weapons / ASP'},

{combos={{key='3',reformers={'LShift'}}},down=device_commands.ASPmanAutoSelect,cockpit_device_id=devices.ASP,value_down=1.0,name='ASP Main Mode - Auto',category='Weapons / ASP'},
{combos={{key='3',reformers={'LCtrl'}}},down=device_commands.ASPmanAutoSelect,cockpit_device_id=devices.ASP,value_down=0.0,name='ASP Main Mode - Manual',category='Weapons / ASP'},

{combos={{key='4',reformers={'LShift'}}},down=device_commands.ASPssGiroSelect,cockpit_device_id=devices.ASP,value_down=00,name='ASP Mode - Giro',category='Weapons / ASP'},
{combos={{key='4',reformers={'LCtrl'}}},down=device_commands.ASPssGiroSelect,cockpit_device_id=devices.ASP,value_down=1.0,name='ASP Mode - Missile',category='Weapons / ASP'},

{combos={{key='V',reformers={'RShift'}}},down=device_commands.ASPon,cockpit_device_id=devices.ASP,value_down=1.0,name='ASP-17 Gunsight On',category='Weapons / ASP'},
{combos={{key='V',reformers={'RShift','RCtrl'}}},down=device_commands.ASPon,cockpit_device_id=devices.ASP,value_down=0.0,name='ASP-17 Gunsight Off',category='Weapons / ASP'},

{combos={{key='C',reformers={'RShift'}}},down=device_commands.ASPpipperOn,cockpit_device_id=devices.ASP,value_down=1.0,name='Pipper On',category='Weapons / ASP'},
{combos={{key='C',reformers={'RShift','RCtrl'}}},down=device_commands.ASPpipperOn,cockpit_device_id=devices.ASP,value_down=0.0,name='Pipper Off',category='Weapons / ASP'},

{combos={{key='X',reformers={'RShift'}}},down=device_commands.ASPnetOn,cockpit_device_id=devices.ASP,value_down=1.0,name='Fix net On',category='Weapons / ASP'},
{combos={{key='X',reformers={'RShift','RCtrl'}}},down=device_commands.ASPnetOn,cockpit_device_id=devices.ASP,value_down=0.0,name='Fix net Off',category='Weapons / ASP'},

--***************************** Weapons management / SELECTOR *********************************************************

-- Weapon selector
{combos={{key='1'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.7,name='Select Weapon AA 1',category='Weapons / Select'},
{combos={{key='2'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.8,name='Select Weapon AA 2',category='Weapons / Select'},
{combos={{key='3'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.9,name='Select Weapon AA 3',category='Weapons / Select'},
{combos={{key='4'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Select Weapon AA 4',category='Weapons / Select'},
{combos={{key='5'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Select Weapon B 1-2 / UB-16',category='Weapons / Select'},
{combos={{key='6'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.1,name='Select Weapon B 3-4 / UB-8',category='Weapons / Select'},
{combos={{key='7'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.2,name='Select Weapon B 1-4 / UB-4',category='Weapons / Select'},

{combos={{key='8'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.3,name='Select Weapon S-24 1-2',category='Weapons / Select'},
{combos={{key='9'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.4,name='Select Weapon S-24 3-4',category='Weapons / Select'},

{combos={{key='0'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.5,name='Select Weapon AA 3-4',category='Weapons / Select'},
{combos={{key='-'}},down=device_commands.ASPlauncherSelect,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.6,name='Select Weapon AA 1-2',category='Weapons / Select'},


--***************************** Weapons management / Masters *********************************************************

--Master modes
{combos={{key='1',reformers={'LWin'}}},down=device_commands.ASPvozduhZemlja,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Master Mode - Air',category='Weapons / Master control'},
{combos={{key='2',reformers={'LWin'}}},down=device_commands.ASPvozduhZemlja,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Master Mode - Ground',category='Weapons / Master control'},
{combos={{key='3',reformers={'LWin'}}},down=device_commands.ASPssNeutrRns,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Weapon AA Mode - SAR Missile',category='Weapons / Master control'},
{combos={{key='4',reformers={'LWin'}}},down=device_commands.ASPssNeutrRns,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Weapon AA Mode - IR Missile',category='Weapons / Master control'},
{combos={{key='4',reformers={'LWin','LAlt'}}},down=device_commands.ASPssNeutrRns,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.5,name='Weapon Mode - Neutral',category='Weapons / Master control'},


-- Weapon drop *cover
{combos={{key='Insert',reformers={'RShift'}}},down=device_commands.SbrosVnesnSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Jettison Outer Pylons - Safety Cover Open',category='Weapons / Master control'},
{combos={{key='Insert',reformers={'RShift','RCtrl'}}},down=device_commands.SbrosVnesnSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Jettison Outer Pylons - Safety Cover Close',category='Weapons / Master control'},
{combos={{key='Insert',reformers={'RAlt'}}},down=device_commands.SbrosVnesn,up=device_commands.SbrosVnesn,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Jettison Outer Pylons',category='Weapons / Master control'},
{combos={{key='Delete',reformers={'RShift'}}},down=device_commands.SbrosVnutrSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Jettison Inner Pylons - Safety Cover Open',category='Weapons / Master control'},
{combos={{key='Delete',reformers={'RShift','RCtrl'}}},down=device_commands.SbrosVnutrSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Jettison Payload Inner Pylons - Safety Cover Close',category='Weapons / Master control'},
{combos={{key='Delete',reformers={'RAlt'}}},down=device_commands.SbrosVnutr,up=device_commands.SbrosVnutr,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Jettison Inner Pylons',category='Weapons / Master control'},


--***************************** Weapons management  *********************************************************

-- Weapon
{combos={{key='1',reformers={'LAlt'}}},down=device_commands.ASPgunReload1,up=device_commands.ASPgunReload1,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Gun reload - 1',category='Weapons'},
{combos={{key='2',reformers={'LAlt'}}},down=device_commands.ASPgunReload2,up=device_commands.ASPgunReload2,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Gun reload - 2',category='Weapons'},
{combos={{key='3',reformers={'LAlt'}}},down=device_commands.ASPgunReload3,up=device_commands.ASPgunReload3,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Gun reload - 3',category='Weapons'},

{combos={{key='JOY_BTN1'}},down=device_commands.GunFireBtn,up=device_commands.GunFireBtn,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Fire Gun',category='Weapons'},

{combos={{key='JOY_BTN_2'}},down=device_commands.PuskBtn,up=device_commands.PuskBtn,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Weapon Release',category='Weapons'},

{combos={{key='=',reformers={'RShift'}}},down=device_commands.PuskBtnSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Weapon Release Cover Open',category='Weapons'},
{combos={{key='=',reformers={'RShift','RCtrl'}}},down=device_commands.PuskBtnSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Weapon Release Cover Close',category='Weapons'},

{combos={{key='=',reformers={'RAlt'}}},down=device_commands.TaktSbrosSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Tactical Drop Safety Cover Open',category='Weapons'},
{combos={{key='=',reformers={'RAlt','RCtrl'}}},down=device_commands.TaktSbrosSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Tactical Drop Safety Cover Close',category='Weapons'},
{combos={{key='=',reformers={'RCtrl'}}},down=device_commands.TaktSbros,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Tactical Drop On',category='Weapons'},
{combos={{key='=',reformers={'RAlt','RShift'}}},down=device_commands.TaktSbros,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Tactical Drop Off',category='Weapons'},

{combos={{key='B',reformers={'RShift'}}},down=device_commands.Obogrev,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Missiles Heat On',category='Weapons'},
{combos={{key='B',reformers={'RShift','RCtrl'}}},down=device_commands.Obogrev,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Missiles Heat Off',category='Weapons'},

{combos={{key='N',reformers={'RShift'}}},down=device_commands.Pusk,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Missiles - Rockets Launch On',category='Weapons'},
{combos={{key='N',reformers={'RShift','RCtrl'}}},down=device_commands.Pusk,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Missiles - Rockets Launch Off',category='Weapons'},

{combos={{key='M',reformers={'RShift'}}},down=device_commands.Pitanie12,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Pylon 1-2 Power On',category='Weapons'},
{combos={{key='M',reformers={'RShift','RCtrl'}}},down=device_commands.Pitanie12,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Pylon 1-2 Power Off',category='Weapons'},
{combos={{key=',',reformers={'RShift'}}},down=device_commands.Pitanie34,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Pylon 3-4 Power On',category='Weapons'},
{combos={{key=',',reformers={'RShift','RCtrl'}}},down=device_commands.Pitanie34,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Pylon 3-4 Power Off',category='Weapons'},

{combos={{key='.',reformers={'RShift'}}},down=device_commands.GS23,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='GS-23 Gun On',category='Weapons'},
{combos={{key='.',reformers={'RShift','RCtrl'}}},down=device_commands.GS23,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='GS-23 Gun Off',category='Weapons'},

{combos={{key='/',reformers={'RShift'}}},down=device_commands.FKP,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Guncam On',category='Weapons'},
{combos={{key='/',reformers={'RShift','RCtrl'}}},down=device_commands.FKP,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Guncam Off',category='Weapons'},

{combos={{key='N',reformers={'RAlt'}}},down=device_commands.AvarPuskSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,name='Emergency Missile/Rocket Launcher Cover Open',category='Weapons'},
{combos={{key='N',reformers={'RAlt','RShift'}}},down=device_commands.AvarPuskSafetyCover,cockpit_device_id=devices.WEAPON_CONTROL,value_down=0.0,name='Emergency Missile/Rocket Launcher Cover Close',category='Weapons'},
{combos={{key='N',reformers={'RCtrl'}}},down=device_commands.AvarPusk,up=device_commands.AvarPusk,cockpit_device_id=devices.WEAPON_CONTROL,value_down=1.0,value_up=0.0,name='Emergency Missile/Rocket Launch',category='Weapons'},

{down = iCommandPlaneDropFlareOnce, up = iCommandPlaneDropChaffOnce, name='Drop Countermeasures (ASO and SPS-141)',category='SPRD or ASO Chaff/Flares'}

},

-- joystick axes
axisCommands={

{combos={{key='JOY_X'}},action=iCommandPlaneRoll,name='Roll'},
{combos={{key='JOY_Y'}},action=iCommandPlanePitch,name='Pitch'},
{combos={{key='JOY_RZ'}},action=iCommandPlaneRudder,name='Rudder'},
{combos={{key='JOY_SLIDER1'}},action=iCommandPlaneThrustCommon,name='Thrust'},
{combos={{key='JOY_Z'}},action=iCommandPlaneThrustCommon,name='Thrust'},
{combos={{key='JOY_SLIDER2'}},action=iCommandPlaneAirBrake,name='Wheel Brakes Lever'},

{action=iCommandViewHorizontalAbs,name='Horizontal View'},
{action=iCommandViewVerticalAbs,name='Vertical View'},
{action=iCommandViewZoomAbs,name='Zoom View'},
{action=iCommandViewRollAbs,name='Cockpit camera roll'},
{action=iCommandViewHorTransAbs,name='Cockpit camera move lateral'},
{action=iCommandViewVertTransAbs,name='Cockpit camera move vertical'},
{action=iCommandViewLongitudeTransAbs,name='Cockpit camera move forward/backward'},


--/N/ 20. sept 2014 ********************************* Kuky's axes *****************************************************
-- ASP + weapons *************
{cockpit_device_id=devices.ASP,action=device_commands.ASPtargetSize,name='Target Size'},

{cockpit_device_id=devices.ASP,action=device_commands.ASPinterceptAngle,name='Intercept Angle'},
{cockpit_device_id=devices.ASP,action=device_commands.ASPscaleLight,name='Scale Backlights control'},
{cockpit_device_id=devices.ASP,action=device_commands.ASPpipperLight,name='Pipper light control'},
{cockpit_device_id=devices.ASP,action=device_commands.ASPnetLight,name='Fix Net light control'},

{cockpit_device_id=devices.ASP,action=device_commands.RUDoblog_axis_stick,name='TDC Range / Pipper Span control'},

{cockpit_device_id=devices.SPO,action=device_commands.SPOvolume,name='SPO-10 Volume'},
{cockpit_device_id=devices.WEAPON_CONTROL,action=device_commands.MissileSound,name='Missile Seeker Sound'},

-- NAV related **************
{cockpit_device_id=devices.KSI,action=device_commands.NPPsetCourse,name='NPP Course set'},
{cockpit_device_id=devices.ARK,action=device_commands.ARKsound,name='ARK Sound'},
{cockpit_device_id=devices.RSBN,action=device_commands.RSBNsound,name='RSBN Sound'},
{cockpit_device_id=devices.RADIO,action=device_commands.RadioVolume,name='Radio Volume'},
{cockpit_device_id=devices.ALTIMETER,action=device_commands.AltimeterPressure,name='Altimeter pressure'},

-- LIGHTS *****************
{cockpit_device_id=devices.LIGHTS,action=device_commands.TextBacklight_axis,name='Cockpit Texts Back-light'},
{cockpit_device_id=devices.LIGHTS,action=device_commands.InstrumentsBacklight_axis,name='Instruments Back-light'},
{cockpit_device_id=devices.LIGHTS,action=device_commands.RedLightsMain_axis,name='Main Red Lights'},
{cockpit_device_id=devices.LIGHTS,action=device_commands.WhiteLightsMain_axis,name='Main White Lights'},

},

}