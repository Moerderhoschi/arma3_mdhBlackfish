///////////////////////////////////////////////////////////////////////////////////////////////////
// MDH BLACKFISH GUNSHIP MOD(by Moerderhoschi) - v2025-03-25
// github: https://github.com/Moerderhoschi/arma3_mdhBlackfish
// steam mod version: https://steamcommunity.com/sharedfiles/filedetails/?id=3407540432
///////////////////////////////////////////////////////////////////////////////////////////////////
if (!hasInterface) exitWith {};
0 spawn
{
	///////////////////////////////////////////////////////////////////////////////////////////////////
	// DIARYRECORD
	///////////////////////////////////////////////////////////////////////////////////////////////////
	_diary =
	{
		waitUntil {!(isNull player)};
		_c = true;
		_t = "MDH Blackfish Gunship";
		if (player diarySubjectExists "MDH Mods") then
		{
			{
				if (_x#1 == _t) then {_c = false}
			} forEach (player allDiaryRecords "MDH Mods");
		}
		else
		{
			player createDiarySubject ["MDH Mods","MDH Mods"];
		};

		if(_c) then
		{
			player createDiaryRecord
			[
				"MDH Mods",
				[
					_t,
					(
						'<br/>MDH Blackfish Gunship is a mod created by Moerderhoschi for Arma 3.<br/>'
					  + '<br/>'
					  + 'you are able to call in and control an V-44X Blackfish Gunship.<br/>'
					  + '<br/>'
					  + 'If you have any question you can contact me at the steam workshop page.<br/>'
					  + '<br/>'
					  + '<img image="mdhBlackfish\mdhBlackfish.paa"/>'					  
					  + '<br/>'
					  + '<br/>'
					  + 'Credits and Thanks:<br/>'
					  + 'Armed-Assault.de Crew  for many great ArmA moments in many years<br/>'
					  + 'LurchiDerLurch for your Arma 2 AC-130 IR-Blink script<br/>'
					  + 'BIS For ArmA3<br/>'
					  + '<br/>'
					  + 'Mod options with global variables at missionstart.<br/>'
					  + '<br/>'
					  + 'Gunship call in action menue only with specific item:<br/>'
					  + '- mdhBlackFishModNeededItemToCall = "B_UavTerminal"<br/>'
					  + '<br/>'
					  + 'Gunship call in action menue entry only on specific object<br/>'
					  + '(use unit variable name or unit init)<br/>'
					  + '(if the unit is a Blackfish Gunship then you will make<br/>'
					  + 'a normal takeoff insted of instant spawning in the sky):<br/>'
					  + '- mdhBlackFishModCallerObj1<br/>'
					  + '- mdhBlackFishModCallerObj2<br/>'
					  + '- mdhBlackFishModCallerObj3<br/>'
					  + '- mdhBlackFishModCallerObj4<br/>'
					  + '- mdhBlackFishModCallerObj5<br/>'
					  + '(or if you want that only one specific player<br/>'
					  + 'with the variable name p1 get the action)<br/>'
					  + '- if(!isNil"p1" and {player == p1}) then {mdhBlackFishModCallerObj1 = player}<br/>'
					  + 'else {mdhBlackFishModCallerObj1 = "logic" createVehicleLocal [0,0,-50]}<br/>'
					  + '<br/>'
					  + 'Gunship spawning and circle on specific position in map<br/>'
					  + '(use marker variable name):<br/>'
					  + '- mdhBlackFishModCircleMarker1<br/>'
					  + '- mdhBlackFishModCircleMarker2<br/>'
					  + '- mdhBlackFishModCircleMarker3<br/>'
					  + '- mdhBlackFishModCircleMarker4<br/>'
					  + '- mdhBlackFishModCircleMarker5<br/>'
					  + '<br/>'
					  + 'Disable new gunship circle pos action entry:<br/>'
					  + '- mdhBlackFishModChangePosDisable1 = true<br/>'
					  + '- mdhBlackFishModChangePosDisable2 = true<br/>'
					  + '- mdhBlackFishModChangePosDisable3 = true<br/>'
					  + '- mdhBlackFishModChangePosDisable4 = true<br/>'
					  + '- mdhBlackFishModChangePosDisable5 = true<br/>'
					  + '<br/>'
					  + 'Disable Exit Blackfish action entry:<br/>'
					  + '- mdhBlackFishModExitDisable1 = true<br/>'
					  + '- mdhBlackFishModExitDisable2 = true<br/>'
					  + '- mdhBlackFishModExitDisable3 = true<br/>'
					  + '- mdhBlackFishModExitDisable4 = true<br/>'
					  + '- mdhBlackFishModExitDisable5 = true<br/>'
					  + '<br/>'
					  + 'Gunship seen as threat for enemies and will be attacked:<br/>'
					  + '- mdhBlackFishModCaptiveDisable1 = true<br/>'
					  + '- mdhBlackFishModCaptiveDisable2 = true<br/>'
					  + '- mdhBlackFishModCaptiveDisable3 = true<br/>'
					  + '- mdhBlackFishModCaptiveDisable4 = true<br/>'
					  + '- mdhBlackFishModCaptiveDisable5 = true<br/>'
					  + '<br/>'
					  + 'Disable friendly IR Marker action entry:<br/>'
					  + '- mdhBlackFishModIRdisable1 = true<br/>'
					  + '- mdhBlackFishModIRdisable2 = true<br/>'
					  + '- mdhBlackFishModIRdisable3 = true<br/>'
					  + '- mdhBlackFishModIRdisable4 = true<br/>'
					  + '- mdhBlackFishModIRdisable5 = true<br/>'
					  + '<br/>'
					  + 'Disable speed action entries:<br/>'
					  + '- mdhBlackFishModSpeedDisable1 = true<br/>'
					  + '- mdhBlackFishModSpeedDisable2 = true<br/>'
					  + '- mdhBlackFishModSpeedDisable3 = true<br/>'
					  + '- mdhBlackFishModSpeedDisable4 = true<br/>'
					  + '- mdhBlackFishModSpeedDisable5 = true<br/>'
					  + '<br/>'
					  + 'Disable altitude action entries:<br/>'
					  + '- mdhBlackFishModAltitudeDisable1 = true<br/>'
					  + '- mdhBlackFishModAltitudeDisable2 = true<br/>'
					  + '- mdhBlackFishModAltitudeDisable3 = true<br/>'
					  + '- mdhBlackFishModAltitudeDisable4 = true<br/>'
					  + '- mdhBlackFishModAltitudeDisable5 = true<br/>'
					  + '<br/>'
					  + 'Disable radius action entries:<br/>'
					  + '- mdhBlackFishModRadiusDisable1 = true<br/>'
					  + '- mdhBlackFishModRadiusDisable2 = true<br/>'
					  + '- mdhBlackFishModRadiusDisable3 = true<br/>'
					  + '- mdhBlackFishModRadiusDisable4 = true<br/>'
					  + '- mdhBlackFishModRadiusDisable5 = true<br/>'
					)
				]
			]
		};
		true
	};

	_mdhFnc =
	{
		_t = "call MDH Blackfish Gunship";
		_a = [];
		if (!isNil"mdhBlackFishModCallerObj1" && {alive mdhBlackFishModCallerObj1}) then {_a pushBackUnique mdhBlackFishModCallerObj1};
		if (!isNil"mdhBlackFishModCallerObj2" && {alive mdhBlackFishModCallerObj2}) then {_a pushBackUnique mdhBlackFishModCallerObj2};
		if (!isNil"mdhBlackFishModCallerObj3" && {alive mdhBlackFishModCallerObj3}) then {_a pushBackUnique mdhBlackFishModCallerObj3};
		if (!isNil"mdhBlackFishModCallerObj4" && {alive mdhBlackFishModCallerObj4}) then {_a pushBackUnique mdhBlackFishModCallerObj4};
		if (!isNil"mdhBlackFishModCallerObj5" && {alive mdhBlackFishModCallerObj5}) then {_a pushBackUnique mdhBlackFishModCallerObj5};

		_f = false;
		if (count _a < 1) then {_a = [player]};
		{
			_f = false;
			_b = _x;
			{
				if ((_b actionParams _x select 0) find _t >= 0) then
				{
					_f = true;
				};																
			} forEach (actionIDs _b);

			if (!_f) then
			{
				_hoschisBlackfishCode =
				{
					params ["_target"];
					[_target] spawn 
					{
						params ["_target"];
						if (!hasInterface) exitWith {};
						scriptName "mdhSpawnBlackfish";
						_p = 0;
						_v = 0;
						_u = player;
						_pos = [getPos _u#0, getPos _u#1, 1];
						_posX = _pos;
						_pos2 = [0, 0];
						_normalTakeoff = false;
						if (typeof _target == "B_T_VTOL_01_armed_F") then {_normalTakeoff = true};
						if (!_normalTakeoff) then
						{
							_v = [[(0 + (ceil random 20)*10),(0 + (ceil random 20)*10), (2000+(ceil random 20)*10)], 0, "B_T_VTOL_01_armed_F", side group player] call BIS_fnc_spawnVehicle;
							_v = _v#0;
							_v lockInventory true;
						}
						else
						{
							_v = _target;
							if (count crew _v < 1) then {(side group player) createVehicleCrew _v};
						};
						if (!isNil "mdhBlackFishModCallerObj1" && {mdhBlackFishModCallerObj1 == _v}) then {_pos2 = getMarkerPos "mdhBlackFishModCircleMarker1"};
						if (!isNil "mdhBlackFishModCallerObj2" && {mdhBlackFishModCallerObj2 == _v}) then {_pos2 = getMarkerPos "mdhBlackFishModCircleMarker2"};
						if (!isNil "mdhBlackFishModCallerObj3" && {mdhBlackFishModCallerObj3 == _v}) then {_pos2 = getMarkerPos "mdhBlackFishModCircleMarker3"};
						if (!isNil "mdhBlackFishModCallerObj4" && {mdhBlackFishModCallerObj4 == _v}) then {_pos2 = getMarkerPos "mdhBlackFishModCircleMarker4"};
						if (!isNil "mdhBlackFishModCallerObj5" && {mdhBlackFishModCallerObj5 == _v}) then {_pos2 = getMarkerPos "mdhBlackFishModCircleMarker5"};
						if (_pos2#0 != 0 && {_pos2#1 != 0}) then {_pos = [_pos2#0, _pos2#1, 1]};
						if (!_normalTakeoff) then
						{
							_v setpos [(_pos#0 + (ceil random 20)*10), (_pos#1 + 200 + (ceil random 20)*10), (1000+(ceil random 20)*10)];
							_v setVelocityModelSpace [0, 100, 0];
						};
						sleep 0.1;
						{if (!(_x == driver _v) && !(_x == _v turretUnit [0])) then {deleteVehicle _x}} forEach crew _v;
						{_x setSkill 1; _x disableAI "WEAPONAIM"; _x disableAI "RADIOPROTOCOL"; _x disableAI "TARGET"; _x disableAI "AUTOTARGET"} forEach crew _v;
						sleep 0.1;
						_v engineOn true;
						_h = 1000;
						_v flyInHeight 200;
						_v flyInHeightASL [_h,_h,_h];
						_g = group driver _v;
						_d = driver _v;
						_g setBehaviour "CARELESS";
						_d setCaptive true;
						if (!isNil "mdhBlackFishModCallerObj1" && {mdhBlackFishModCallerObj1 == _v} && {!isNil"mdhBlackFishModCaptiveDisable1"}) then {_d setCaptive false};
						if (!isNil "mdhBlackFishModCallerObj2" && {mdhBlackFishModCallerObj2 == _v} && {!isNil"mdhBlackFishModCaptiveDisable2"}) then {_d setCaptive false};
						if (!isNil "mdhBlackFishModCallerObj3" && {mdhBlackFishModCallerObj3 == _v} && {!isNil"mdhBlackFishModCaptiveDisable3"}) then {_d setCaptive false};
						if (!isNil "mdhBlackFishModCallerObj4" && {mdhBlackFishModCallerObj4 == _v} && {!isNil"mdhBlackFishModCaptiveDisable4"}) then {_d setCaptive false};
						if (!isNil "mdhBlackFishModCallerObj5" && {mdhBlackFishModCallerObj5 == _v} && {!isNil"mdhBlackFishModCaptiveDisable5"}) then {_d setCaptive false};
						sleep 0.2;
						_w = _g addWaypoint [_pos, 5];
				
						while {sleep 0.1 ; waypointLoiterType _w != "CIRCLE_L"} do
						{
							_w setWaypointBehaviour "CARELESS";
							_w setWaypointType "LOITER";
							_w setWaypointLoiterAltitude _h;
							_w setWaypointLoiterRadius 1500;
							_w setWaypointLoiterType "CIRCLE_L";
							_w setWaypointSpeed "NORMAL";
							_v flyInHeight 200;
							_v flyInHeightASL [_h,_h,_h];
						};
				
						moveOut _u;
						_u moveInGunner _v;
				
						_v setVehicleLock "LOCKED";
						if (viewDistance < 4005) then {setViewDistance 4005; setObjectViewdistance 4005};
						if (!isNil "mdhAC130irArray") then
						{
							{deTach _x; _x setPos [0,0,-100]} forEach mdhAC130irArray;
							sleep 1;
							{deleteVehicle _x} forEach mdhAC130irArray;
						};
						mdhAC130irArray = [];
						_colorR="#FF0000";
						_colorG="#00FF00";
						_colorB="#0000FF";
						_colorO="#FF8200";

						_c = true;
						if (!isNil "mdhBlackFishModCallerObj1" && {mdhBlackFishModCallerObj1 == _v} && {!isNil"mdhBlackFishModExitDisable1"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj2" && {mdhBlackFishModCallerObj2 == _v} && {!isNil"mdhBlackFishModExitDisable2"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj3" && {mdhBlackFishModCallerObj3 == _v} && {!isNil"mdhBlackFishModExitDisable3"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj4" && {mdhBlackFishModCallerObj4 == _v} && {!isNil"mdhBlackFishModExitDisable4"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj5" && {mdhBlackFishModCallerObj5 == _v} && {!isNil"mdhBlackFishModExitDisable5"}) then {_c = false};
						if (_c) then
						{
							_aC=_colorR; _v addAction[("<t color="""+_aC+""">- Exit Blackfish</t>"),
							{
								_pos = _this#3#0;
								_g = _this#3#1;
								_u = _this#3#2;
								_p = _this#3#3;
								if (viewDistance == 4005) then {setViewDistance -1; setObjectViewdistance -1};
								moveOut _u;
								_u setVelocity [0,0,0];
								_u setPos _pos;
								_d = units _g#0;
								_v = vehicle _d;
								_h = 2500;
								[_g, 1] setWaypointSpeed "FULL";
								[_g, 1] setWaypointPosition [[0,0,0], 0];
								_v flyInHeight _h;
								_v flyInHeightASL [_h,_h,_h];
								{deTach _x; _x setPos [0,0,-100]} forEach mdhAC130irArray;
								sleep 1;
								{deleteVehicle _x} forEach mdhAC130irArray;
								sleep 120;
								{deleteVehicle _x} forEach Crew _v;
								deleteVehicle _v;
							},[_posX, _g, _u, _p],1.5,false,true,"","alive _target"];
						};
				
						_aC=_colorG; _v addAction[("<t color="""+_aC+""">- SwitchTurret</t>"),
						{
							_v = _this#3#0;
							_u = _this#3#1;
							if (_u == gunner _v) then
							{
								moveOut _u;
								_u moveInTurret[_v, [2]]
							}
							else
							{
								moveOut _u;
								_u moveinGunner _v
							};
							_u switchCamera "Gunner"
						},[_v, _u],1.5,false,true,"","alive _target && {isNull(vehicle player turretUnit [1]) OR (isNull(vehicle player turretUnit [2]))}"];
				
						_irBlink =
						{
							// copied from LurchiDerLurch Arma 2 AC-130 Mod. Thank you Lurchi
							sleep (random 0.5);
							_position = _this#0;
							_mode = _this#1;
							_vel = _this#2;
							_color = [[1,1,1,1],[1,1,1,1],[1,1,1,1]];
							_size = [1 * 3];
							_glowSize = [(1 * 3)/5];
							_fa = 1.5;
							_vel = [(_vel#0)*_fa, (_vel#1)*_fa, (_vel#2)*_fa];
							_lifeTime = 0.05;
							_weight = 0.006;
							_volume = 0.005;
							_drag = 0.02;
				
							_z="lightBall visible in Normal, NV, FLIR";
							if (_mode == 2) then {drop ["\A3\data_f\kouleSvetlo","","Billboard",1,_lifeTime,_position,_vel,0,_weight,_volume,_drag,_size,_color,[0,1],0,0,"","",""]};
				
							_z="bigShape visible only in FLIR";
							if (_mode == 1) then {drop ["\A3\data_f\halfLight","","SpaceObject",1,_lifeTime,_position,_vel,0,_weight,_volume,_drag,_glowSize,_color,[0,1],0,0,"","",""]};
						};

						_c = true;
						if (!isNil "mdhBlackFishModCallerObj1" && {mdhBlackFishModCallerObj1 == _v} && {!isNil"mdhBlackFishModIRdisable1"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj2" && {mdhBlackFishModCallerObj2 == _v} && {!isNil"mdhBlackFishModIRdisable2"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj3" && {mdhBlackFishModCallerObj3 == _v} && {!isNil"mdhBlackFishModIRdisable3"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj4" && {mdhBlackFishModCallerObj4 == _v} && {!isNil"mdhBlackFishModIRdisable4"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj5" && {mdhBlackFishModCallerObj5 == _v} && {!isNil"mdhBlackFishModIRdisable5"}) then {_c = false};
						if (_c) then
						{
							_aC=_colorG; _v addAction[("<t color="""+_aC+""">- Switch IR Markers</t>"),
							{
								_u = _this#3#0;
								_irBlink = _this#3#1;
								if (count mdhAC130irArray == 0) then
								{
									_ir = "Land_Can_Dented_F" createVehicleLocal [0,0,-50];
									mdhAC130irArray pushBack _ir;
						
									0 = [_u, _irBlink] spawn
									{
										_u = _this#0;
										_v = vehicle _u;
										_irBlink = _this#1;
										while {sleep 1.5 + random 0.5; count mdhAC130irArray > 0 && {vehicle _u == _v}} do
										{
											{
												if (!(_x in crew _v) && {side group _x == side group player}) then
												{
													[_x modelToWorld (_x selectionPosition "neck"), 2, velocity _x] spawn _irBlink;
												};
											} forEach allUnits;
										}
									};
									systemChat("IR Markers Detection activated");
								}
								else
								{
									{deTach _x; _x setPos [0,0,-100]} forEach mdhAC130irArray;
									sleep 1;
									{deleteVehicle _x} forEach mdhAC130irArray;
									mdhAC130irArray = [];
									systemChat("IR Markers Detection deactivated");
								};
							},[_u, _irBlink],1.5,false,true,"","alive _target"];
						};

						_c = true;
						if (!isNil "mdhBlackFishModCallerObj1" && {mdhBlackFishModCallerObj1 == _v} && {!isNil"mdhBlackFishModChangePosDisable1"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj2" && {mdhBlackFishModCallerObj2 == _v} && {!isNil"mdhBlackFishModChangePosDisable2"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj3" && {mdhBlackFishModCallerObj3 == _v} && {!isNil"mdhBlackFishModChangePosDisable3"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj4" && {mdhBlackFishModCallerObj4 == _v} && {!isNil"mdhBlackFishModChangePosDisable4"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj5" && {mdhBlackFishModCallerObj5 == _v} && {!isNil"mdhBlackFishModChangePosDisable5"}) then {_c = false};
						if (_c) then
						{
							_aC=_colorG; _v addAction[("<t color="""+_aC+""">- Change Gunship Circle Pos on Map</t>"),
							{
								_g = _this#3#0;
								_u = _this#3#1;
								systemChat("Open Map an Click for new Location");
								if (isNil"mdhAc130FlyInHeightASL") then {mdhAc130FlyInHeightASL = 1000};
								onMapSingleClick
								"
									[group driver vehicle player, 1] setWaypointPosition [_pos , 5];
									onMapSingleClick """";
									systemChat(""New Location Set"");
									0 = [(vehicle player),mdhAc130FlyInHeightASL] spawn {params [""_v"",""_h""]; _v flyInHeightASL [_h,_h,_h];sleep 5;_v flyInHeightASL [_h,_h,_h]};
								";
							},[_g, _u, 1000],1.5,false,true,"","alive _target"];
						};

						_c = true;
						if (!isNil "mdhBlackFishModCallerObj1" && {mdhBlackFishModCallerObj1 == _v} && {!isNil"mdhBlackFishModSpeedDisable1"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj2" && {mdhBlackFishModCallerObj2 == _v} && {!isNil"mdhBlackFishModSpeedDisable2"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj3" && {mdhBlackFishModCallerObj3 == _v} && {!isNil"mdhBlackFishModSpeedDisable3"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj4" && {mdhBlackFishModCallerObj4 == _v} && {!isNil"mdhBlackFishModSpeedDisable4"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj5" && {mdhBlackFishModCallerObj5 == _v} && {!isNil"mdhBlackFishModSpeedDisable5"}) then {_c = false};
						if (_c) then
						{
							_aC=_colorO; _v addAction[("<t color="""+_aC+""">- Speed Limited</t>"),{_g = _this#3; [_g, 1] setWaypointSpeed "LIMITED"; [_g, 1] setWaypointPosition [waypointPosition [_g, 1], 5]},_g,1.5,false,true,"","alive _target"];
							_aC=_colorG; _v addAction[("<t color="""+_aC+""">- Speed Normal</t>"),{_g = _this#3; [_g, 1] setWaypointSpeed "NORMAL"; [_g, 1] setWaypointPosition [waypointPosition [_g, 1], 5]},_g,1.5,false,true,"","alive _target"];
							_aC=_colorG; _v addAction[("<t color="""+_aC+""">- Speed Full</t>"),{_g = _this#3; [_g, 1] setWaypointSpeed "FULL"; [_g, 1] setWaypointPosition [waypointPosition [_g, 1], 5]},_g,1.5,false,true,"","alive _target"];
						};

						_c = true;
						if (!isNil "mdhBlackFishModCallerObj1" && {mdhBlackFishModCallerObj1 == _v} && {!isNil"mdhBlackFishModAltitudeDisable1"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj2" && {mdhBlackFishModCallerObj2 == _v} && {!isNil"mdhBlackFishModAltitudeDisable2"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj3" && {mdhBlackFishModCallerObj3 == _v} && {!isNil"mdhBlackFishModAltitudeDisable3"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj4" && {mdhBlackFishModCallerObj4 == _v} && {!isNil"mdhBlackFishModAltitudeDisable4"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj5" && {mdhBlackFishModCallerObj5 == _v} && {!isNil"mdhBlackFishModAltitudeDisable5"}) then {_c = false};
						if (_c) then
						{
							_aC=_colorO; _v addAction[("<t color="""+_aC+""">- Altitude 500</t>"),{params["_v"]; mdhAc130FlyInHeightASL = 500; _v flyInHeightASL [500,500,500]},_v,1.5,false,true,"","alive _target"];
							_aC=_colorG; _v addAction[("<t color="""+_aC+""">- Altitude 1.000</t>"),{params["_v"]; mdhAc130FlyInHeightASL = 1000; _v flyInHeightASL [1000,1000,1000]},_v,1.5,false,true,"","alive _target"];
							_aC=_colorO; _v addAction[("<t color="""+_aC+""">- Altitude 1.500</t>"),{params["_v"]; mdhAc130FlyInHeightASL = 1500; _v flyInHeightASL [1500,1500,1500]},_v,1.5,false,true,"","alive _target"];
						};

						_c = true;
						if (!isNil "mdhBlackFishModCallerObj1" && {mdhBlackFishModCallerObj1 == _v} && {!isNil"mdhBlackFishModRadiusDisable1"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj2" && {mdhBlackFishModCallerObj2 == _v} && {!isNil"mdhBlackFishModRadiusDisable2"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj3" && {mdhBlackFishModCallerObj3 == _v} && {!isNil"mdhBlackFishModRadiusDisable3"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj4" && {mdhBlackFishModCallerObj4 == _v} && {!isNil"mdhBlackFishModRadiusDisable4"}) then {_c = false};
						if (!isNil "mdhBlackFishModCallerObj5" && {mdhBlackFishModCallerObj5 == _v} && {!isNil"mdhBlackFishModRadiusDisable5"}) then {_c = false};
						if (_c) then
						{
							_aC=_colorO; _v addAction[("<t color="""+_aC+""">- Radius 1.000</t>"),{_g = _this#3; [_g, 1] setWaypointLoiterRadius 1000},_g,1.5,false,true,"","alive _target"];
							_aC=_colorG; _v addAction[("<t color="""+_aC+""">- Radius 1.500</t>"),{_g = _this#3; [_g, 1] setWaypointLoiterRadius 1500},_g,1.5,false,true,"","alive _target"];
							_aC=_colorO; _v addAction[("<t color="""+_aC+""">- Radius 2.000</t>"),{_g = _this#3; [_g, 1] setWaypointLoiterRadius 2000},_g,1.5,false,true,"","alive _target"];
						};

						waitUntil{sleep 1 ; !alive _v};
						{deTach _x; _x setPos [0,0,-100]} forEach mdhAC130irArray;
						sleep 1;
						{deleteVehicle _x} forEach mdhAC130irArray;
						if (vehicle _u == _v) then
						{
							if (viewDistance == 4005) then {setViewDistance -1; setObjectViewdistance -1};
							moveOut _u;
							_u setvelocity [0,0,0];
							_u setPos _pos;
						};
					};
				};
	
				[
					_b
					,_t
					,"mdhBlackfish\mdhBlackfishSmall.paa"
					,"mdhBlackfish\mdhBlackfishSmall.paa"
					,"alive _target && {vehicle player == player} && {if (!isNil'mdhBlackFishModNeededItemToCall')then{mdhBlackFishModNeededItemToCall in 
					(itemsWithMagazines player + assignedItems [player, true, true] + weapons player + primaryWeaponItems player + secondaryWeaponItems player + handgunItems player)}else{true}}"
					,"true"
					,{}
					,{}
					,_hoschisBlackfishCode
					,{}
					,[0]
					,3
					,-1
					,false
					,false
					,false
				] call BIS_fnc_holdActionAdd;
			};
		} forEach _a;
	};

	///////////////////////////////////////////////////////
	// loop
	///////////////////////////////////////////////////////
	while {hasInterface} do
	{
		uiSleep 1.8;
		call _diary;
		sleep 2;
		call _mdhFnc;
		sleep 3;
		sleep random 1;
	};
};