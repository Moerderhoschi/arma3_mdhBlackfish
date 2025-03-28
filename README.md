![1](https://github.com/user-attachments/assets/661aa0b1-6ccb-4ee8-8054-6c11abd68fe0)

MDH Blackfish is a mod, created by Moerderhoschi for Arma 3. You are able to call an Blackfish Gunship and control it.

HOW THE ADDON WORKS?
The addon automatically add an Actionmenu entry to call in the Gunship.

IS THE ADDON MP COMPATIBLE?
Yes, call it and use it like in SP.

HOW TO ZEROING THE GUNSHIP WEAPONS?
Ingame go to "Options -> Controls -> Keyboard -> Weapons -> Laser Range" and the assigned key is for zeroing the weapons of the Blackfish Gunship.

Mod options with global variables at missionstart:
- see sample mission how to use -> [[SP/CO12] MDH Blackfish Gunship - Campraid](https://steamcommunity.com/sharedfiles/filedetails/?id=3412404493)

Gunship call in action menue only with specific item:
- mdhBlackFishModNeededItemToCall = "B_UavTerminal"

Gunship call in action menue entry only on specific object(use unit variable name or unit init)
(if the unit is a Blackfish Gunship then you will make a normal takeoff insted of instant spawning in the sky):
- mdhBlackFishModCallerObj1
- mdhBlackFishModCallerObj2
- mdhBlackFishModCallerObj3
- mdhBlackFishModCallerObj4
- mdhBlackFishModCallerObj5
(or if you want that only one specific player with the variable name p1 get the action)
- if(!isNil"p1" and {player == p1}) then {mdhBlackFishModCallerObj1 = player} else {mdhBlackFishModCallerObj1 = "logic" createVehicleLocal [0,0,-50]}

Gunship spawning and circle on specific position in map(use marker variable name):
- mdhBlackFishModCircleMarker1
- mdhBlackFishModCircleMarker2
- mdhBlackFishModCircleMarker3
- mdhBlackFishModCircleMarker4
- mdhBlackFishModCircleMarker5

Disable new gunship circle pos action entry:
- mdhBlackFishModChangePosDisable1 = true
- mdhBlackFishModChangePosDisable2 = true
- mdhBlackFishModChangePosDisable3 = true
- mdhBlackFishModChangePosDisable4 = true
- mdhBlackFishModChangePosDisable5 = true

Disable Exit Blackfish action entry:
- mdhBlackFishModExitDisable1 = true
- mdhBlackFishModExitDisable2 = true
- mdhBlackFishModExitDisable3 = true
- mdhBlackFishModExitDisable4 = true
- mdhBlackFishModExitDisable5 = true

Gunship seen as threat for enemies and will be attacked:
- mdhBlackFishModCaptiveDisable1 = true
- mdhBlackFishModCaptiveDisable2 = true
- mdhBlackFishModCaptiveDisable3 = true
- mdhBlackFishModCaptiveDisable4 = true
- mdhBlackFishModCaptiveDisable5 = true

Disable friendly IR Marker action entry:
- mdhBlackFishModIRdisable1 = true
- mdhBlackFishModIRdisable2 = true
- mdhBlackFishModIRdisable3 = true
- mdhBlackFishModIRdisable4 = true
- mdhBlackFishModIRdisable5 = true

Disable speed action entries:
- mdhBlackFishModSpeedDisable1 = true
- mdhBlackFishModSpeedDisable2 = true
- mdhBlackFishModSpeedDisable3 = true
- mdhBlackFishModSpeedDisable4 = true
- mdhBlackFishModSpeedDisable5 = true

Disable altitude action entries:
- mdhBlackFishModAltitudeDisable1 = true
- mdhBlackFishModAltitudeDisable2 = true
- mdhBlackFishModAltitudeDisable3 = true
- mdhBlackFishModAltitudeDisable4 = true
- mdhBlackFishModAltitudeDisable5 = true

Disable radius action entries:
- mdhBlackFishModRadiusDisable1 = true
- mdhBlackFishModRadiusDisable2 = true
- mdhBlackFishModRadiusDisable3 = true
- mdhBlackFishModRadiusDisable4 = true
- mdhBlackFishModRadiusDisable5 = true

Dowload on Steam: https://steamcommunity.com/sharedfiles/filedetails/?id=3407540432

CREDITS
Armed-Assault.de Crew - For many great ArmA moments in many years
BIS - For ArmA3

You like my mod? Check out my other Mods: [Arma 3 Mods created by Moerderhoschi](https://steamcommunity.com/sharedfiles/filedetails/?id=3408421250)
