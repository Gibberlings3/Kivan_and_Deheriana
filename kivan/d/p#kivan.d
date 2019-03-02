BEGIN P#DEHJ
BEGIN BP#DEH

APPEND BP#DEH

//Deheriana dies
IF WEIGHT #999 ~Global("P#DeherianaLives","GLOBAL",3)~ THEN BEGIN DEPCDeath
SAY @0 
++ @1 DO ~SetGlobal("P#DeherianaLives","GLOBAL",5) ActionOverride("P#DEHER", LeaveParty()) ActionOverride("P#DEHER",DestroySelf())~EXIT
END
END

BEGIN P#KIVAN
APPEND P#KIVAN
IF ~NumTimesTalkedTo(0)~ THEN BEGIN P#MeetKivan
SAY @2
IF ~~ THEN DO ~SetGlobal("X#TalkedToKivan","GLOBAL",1)~ EXTERN P#KIVAN KivanStartChain
END

IF ~~ THEN BEGIN Refuse
SAY @3
IF ~~ THEN REPLY @4 GOTO ComeAlong
IF ~~ THEN REPLY @5 GOTO PoliteRefuse
IF ~~ THEN REPLY @6 GOTO GetLost
END

IF ~~ THEN BEGIN ComeAlong
SAY @7
IF~~ THEN DO ~SetGlobal("P#KivanJoined","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN PCComplains
SAY @8
IF ~Race(Player1,ELF)~ THEN REPLY @9 GOTO PoliteRefuse
IF ~~ THEN REPLY @10 GOTO ComeAlong
IF ~!Race(Player1,ELF)~ THEN REPLY @11 GOTO PoliteRefuse
IF ~~ THEN REPLY @6 GOTO GetLost
END

IF ~~ THEN BEGIN PoliteRefuse
SAY @12
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN GetLost
SAY @13
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END

BEGIN P#KIVP
APPEND P#KIVP

IF ~Global("P#KivanJoined","GLOBAL",1)~ THEN BEGIN KickOut
SAY @14
IF ~~ THEN REPLY @15 DO ~JoinParty()~ EXIT
IF ~InParty("P#DEHER") 
!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR3000") //Watcher's Keep//
!AreaCheck("AR3001") //Watcher’s Keep -- Altar level//
!AreaCheck("AR3003") //Watcher’s Keep -- Compass level //
!AreaCheck("AR3004") //Watcher’s Keep  //
!AreaCheck("AR3005") //Watcher’s Keep -- tieflings//
!AreaCheck("AR3006") //Watcher’s Keep -- Succubus
!AreaCheck("AR3007") //Watcher’s Keep --Cambion
!AreaCheck("AR3008") //Watcher’s Keep -- Balor (Paladin Sword)
!AreaCheck("AR3009") //Watcher’s Keep --") //Wild Magic ?
!AreaCheck("AR3010") //Watcher’s Keep -- Tanar’ri -- Obelisk
!AreaCheck("AR3011") //Watcher’s Keep -- Bard’s Gloves, Manman’s Journal
!AreaCheck("AR3012") //Watcher’s Keep -- Tahazzar
!AreaCheck("AR3013") //Watcher’s Keep -- Ka’rashur
!AreaCheck("AR3014") //Watcher’s Keep --") //White Dragon Scales
!AreaCheck("AR3015") //Watcher’s Keep -- Aesgareth
!AreaCheck("AR3016") //Watcher’s Keep -- Chromatic Demon; Elementalist Level
!AreaCheck("AR3017") //Watcher’s Keep -- Carston and the machine
!AreaCheck("AR3018") //Watcher’s Keep -- Saladrex (Dragon)
!AreaCheck("AR3019") //Watcher’s Keep -- Helmite Level -- Last Seals
!AreaCheck("AR3020") //Watcher’s Keep -- Imprisoned One
!AreaCheck("AR3021") //Watcher’s Keep -- Ilithids
!AreaCheck("AR3022") //Watcher’s Keep -- Anti-Paladins
!AreaCheck("AR3023") //Watcher’s Keep -- "Adventure Level" (Mini Map!!!)
!AreaCheck("AR3024") //Watcher’s Keep -- Dragon -- Fear Challenge
!AreaCheck("AR3025") //Watcher’s Keep -- Orcs -- Ixil’s Nail
!AreaCheck("AR3026") //Watcher’s Keep -- Imp -- Game
!AreaCheck("AR3027") //Watcher’s Keep -- Crypt -- Demi-Lich
~ THEN REPLY @16 DO ~SetGlobal("P#KivanJoined","GLOBAL",0) LeaveParty() SetGlobal("DeherJoined","GLOBAL",0) ActionOverride("P#DEHER",LeaveParty()) ~ EXIT
IF ~!InParty("P#DEHER")
!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR3000") //Watcher's Keep
!AreaCheck("AR3001") //Watcher’s Keep -- Altar level
!AreaCheck("AR3003") //Watcher’s Keep -- Compass level
!AreaCheck("AR3004") //Watcher’s Keep
!AreaCheck("AR3005") //Watcher’s Keep -- tieflings
!AreaCheck("AR3006") //Watcher’s Keep -- Succubus
!AreaCheck("AR3007") //Watcher’s Keep --Cambion
!AreaCheck("AR3008") //Watcher’s Keep -- Balor (Paladin Sword)
!AreaCheck("AR3009") //Watcher’s Keep --") //Wild Magic ?
!AreaCheck("AR3010") //Watcher’s Keep -- Tanar’ri -- Obelisk
!AreaCheck("AR3011") //Watcher’s Keep -- Bard’s Gloves, Manman’s Journal
!AreaCheck("AR3012") //Watcher’s Keep -- Tahazzar
!AreaCheck("AR3013") //Watcher’s Keep -- Ka’rashur
!AreaCheck("AR3014") //Watcher’s Keep --") //White Dragon Scales
!AreaCheck("AR3015") //Watcher’s Keep -- Aesgareth
!AreaCheck("AR3016") //Watcher’s Keep -- Chromatic Demon; Elementalist Level
!AreaCheck("AR3017") //Watcher’s Keep -- Carston and the machine
!AreaCheck("AR3018") //Watcher’s Keep -- Saladrex (Dragon)
!AreaCheck("AR3019") //Watcher’s Keep -- Helmite Level -- Last Seals
!AreaCheck("AR3020") //Watcher’s Keep -- Imprisoned One
!AreaCheck("AR3021") //Watcher’s Keep -- Ilithids
!AreaCheck("AR3022") //Watcher’s Keep -- Anti-Paladins
!AreaCheck("AR3023") //Watcher’s Keep -- "Adventure Level" (Mini Map!!!)
!AreaCheck("AR3024") //Watcher’s Keep -- Dragon -- Fear Challenge
!AreaCheck("AR3025") //Watcher’s Keep -- Orcs -- Ixil’s Nail
!AreaCheck("AR3026") //Watcher’s Keep -- Imp -- Game
!AreaCheck("AR3027") //Watcher’s Keep -- Crypt -- Demi-Lich
~ THEN REPLY @16 DO ~SetGlobal("P#KivanJoined","GLOBAL",0) LeaveParty()~ EXIT
IF ~!InParty("P#DEHER")~ THEN REPLY @17 GOTO PoliteRefuse
IF ~InParty("P#DEHER")~ THEN REPLY @17 GOTO PoliteRefuseD
IF ~OR(2) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaDead","GLOBAL",1)
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @18 DO ~SetGlobal("P#KivanJoined","GLOBAL",0) ~ + KivanWindSpear
END

IF ~~  KivanWindSpear
SAY @19
= @20
IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR1200",894,3209,0) ~ EXIT
END

IF ~~ THEN BEGIN PoliteRefuse
SAY @12
IF ~~ THEN DO ~ LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN PoliteRefuse1
SAY @12
IF ~~ THEN DO ~ LeaveParty() EscapeArea()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDialogue
SAY @21
IF ~!InParty("P#DEHER")~ THEN REPLY @22 DO ~SetGlobal("P#KivanJoined","GLOBAL",1)
JoinParty()~ EXIT
IF ~InParty("P#DEHER")~ THEN REPLY @23 DO ~SetGlobal("P#KivanJoined","GLOBAL",1)
JoinParty() ActionOverride("P#DEHER",JoinParty())~ EXIT
IF ~~ THEN REPLY @24 GOTO RefusedAgain
IF ~!Global("P#DeherianaLives","GLOBAL",2) !Global("P#DeherianaLives","GLOBAL",6)~ THEN REPLY @17 GOTO PoliteRefuse1
IF ~OR(2) Global("P#DeherianaLives","GLOBAL",2) Global("P#DeherianaLives","GLOBAL",6)~ THEN REPLY @17 GOTO PoliteRefuse1D
END

IF ~~ THEN BEGIN RefusedAgain
SAY @25
IF ~~ THEN EXIT
END
END

CHAIN IF ~~ THEN P#KIVP PoliteRefuseD
@26
== P#KIVP @27
END
IF ~~ THEN DO ~ActionOverride("P#DEHER",LeaveParty()) ActionOverride("P#DEHER", EscapeArea()) LeaveParty() EscapeArea()~ EXIT


CHAIN IF ~~ THEN P#KIVP PoliteRefuse1D
@26
== P#KIVP @27
END
IF ~~ THEN DO ~ActionOverride("P#DEHER",LeaveParty()) ActionOverride("P#DEHER", EscapeArea()) LeaveParty() EscapeArea()~ EXIT


BEGIN P#KIVJ
APPEND P#KIVJ

END

CHAIN P#KIVAN KivanStartChain
@28
== MINSCJ IF ~InParty("minsc") !Dead("minsc") !StateCheck("minsc",STATE_SLEEPING)~ THEN @29
== JAHEIRAJ IF ~InParty("jaheira") !Dead("jaheira")
!StateCheck("jaheira",STATE_SLEEPING)~ THEN @30
== P#KIVAN IF ~InParty("jaheira") !Dead("jaheira") 
!StateCheck("jaheira",STATE_SLEEPING)~ THEN @31
== JAHEIRAJ IF ~InParty("jaheira") !Dead("jaheira")
!StateCheck("jaheira",STATE_SLEEPING)~ THEN @32
== P#KIVAN IF ~InParty("jaheira") !Dead("jaheira") 
!StateCheck("jaheira",STATE_SLEEPING)~ THEN @33
== JAHEIRAJ IF ~InParty("jaheira") !Dead("jaheira")
!StateCheck("jaheira",STATE_SLEEPING)~ THEN @34
END
IF ~~ THEN REPLY @35 GOTO Refuse
IF ~~ THEN REPLY @36 GOTO ComeAlong
IF ~Race(Player1,ELF)~ THEN REPLY @37 GOTO ComeAlong
IF ~~ THEN REPLY @38 GOTO PCComplains
IF ~~ THEN REPLY @39 GOTO ComeAlong
IF ~Race(Player1,ELF)~ THEN REPLY @40 GOTO PoliteRefuse
IF ~!Race(Player1,ELF)~ THEN REPLY @11 GOTO PoliteRefuse

