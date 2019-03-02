//Master Wraith//

BEGIN ~P#DEH01~

EXTEND_BOTTOM HGWRA01 18
IF ~InParty("P#kivan") !Dead("P#Kivan") Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~ THEN GOTO P#KivanWraith
END

EXTEND_BOTTOM HGWRA01 24
IF ~Global("P#KiLovedOne","GLOBAL",1)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("P#KIMW")
~ EXIT
END

APPEND HGWRA01

IF ~~ P#KivanWraith
SAY @0 
IF ~~ THEN DO ~SetGlobal("P#KiLovedOne","GLOBAL",1)~ EXTERN P#KI25J P#KiWraith1
END

END

APPEND P#KI25J

IF ~~ P#KiWraith1
SAY @1
IF ~~ THEN EXTERN HGWRA01 24
END

IF ~~ KiWra1.1
SAY @2
IF ~~ THEN EXTERN HGWRA01 25
END 

IF ~~ KiWra1.2
SAY @3
IF ~~ THEN EXTERN HGWRA01 25
END
END

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN P#DEH01 P#DeherianaWraith
@4
= @5
== P#KI25J @6
END
++ @7 EXTERN P#KI25J KiWra1.1
++ @8 EXTERN P#KI25J KiWra1.2
++ @9 EXTERN P#KI25J KiWra1.1
++ @10 EXTERN P#KI25J KiWra1.1
++ @11 EXTERN P#KI25J KiWra1.1
++ @12 EXTERN P#KI25J KiWra1.2

