//Global("P#KivanLoversQuest","GLOBAL",3) - were directed to Quataris
//Global("P#KivanLoversQuest","GLOBAL",4) - directed to Jisstevs, kept the ring
//Global("P#KivanLoversQuest","GLOBAL",5) - directed to Jisstevs, sold the ring
//Global("P#KivanLoversQuest","GLOBAL",6) - sold the ring w/o info, quest is over
//Global("P#KivanLoversQuest","GLOBAL",7) - talked to Chislav, quest is over

APPEND P#KIVJ

IF WEIGHT #990 ~
Global("P#KivanLoversQuest","GLOBAL",2)~ KiRingQuest1
SAY @0
= @1
IF ~~ THEN UNSOLVED_JOURNAL @10001
DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",3)~ EXIT
END

END

EXTEND_BOTTOM HAQUAT 0
IF ~InParty("P#kivan") !Dead("P#kivan") !StateCheck("P#kivan",STATE_SLEEPING)
Global("P#KivanLoversQuest","GLOBAL",3) PartyHasItem("MISC5R")~ THEN REPLY @3 GOTO RingDial
END

ADD_STATE_TRIGGER HAQUAT 2 ~!Global("P#KivanLoversQuest","GLOBAL",3)~

APPEND HAQUAT

IF ~NumTimesTalkedToGT(0) Global("P#KivanLoversQuest","GLOBAL",3)~ THEN BEGIN P#KivQuest
  SAY @4
IF ~InParty("P#kivan") !Dead("P#kivan") !StateCheck("P#kivan",STATE_SLEEPING)
Global("P#KivanLoversQuest","GLOBAL",3) PartyHasItem("MISC5R")~ THEN REPLY @5 GOTO RingDial
++ @6 EXIT
END

IF ~~ RingDial
SAY @7
++ @8 + P#KIRI3.1
+ ~CheckStatGT(Player1,12,CHR)~+ @9 EXTERN P#KIVJ P#KIRI3.2
+ ~!CheckStatGT(Player1,12,CHR)~+ @10 EXTERN P#KIVJ P#KIRI3.3
++ @11 EXTERN P#KIVJ P#KIRI3.4
END

IF ~~ P#KIRI3.1
SAY @12
+ ~PartyGoldGT(25)~ + @13 DO ~TakePartyGold(20) SetGlobal("P#KivanLoversQuest","GLOBAL",4)~ + P#KIRI3.5
++ @14 EXIT 
END

IF ~~ P#KIRI3.5
SAY @15  //I broke up the sentences into their distinct phrases, since this gives the feeling that the merchant is speaking in bursts as the he recalls the info.
IF~~ THEN REPLY @16 UNSOLVED_JOURNAL @10004 EXIT
END

IF ~~ P#KIRI3.6
SAY @18
++ @19 + P#KIRI3.12
+ ~PartyGoldGT(25)~ + @20 DO ~TakePartyGold(20) SetGlobal("P#KivanLoversQuest","GLOBAL",4)~ + P#KIRI3.5
++ @21  + P#KIRI3.13 
END

IF ~~ P#KIRI3.7
SAY @22   
++ @23 + P#KIRI3.14
+ ~PartyGoldGT(25)~ + @24 + P#KIRI3.6
END

IF ~~ P#KIRI3.8
SAY @25
++ @26 + P#KIRI3.15
+ ~PartyGoldGT(25)~ + @20 DO ~TakePartyGold(20) SetGlobal("P#KivanLoversQuest","GLOBAL",4)~ + P#KIRI3.5
++ @27  + P#KIRI3.16 
END

IF ~~ P#KIRI3.9
SAY @28  
++ @23 + P#KIRI3.17
+ ~PartyGoldGT(25)~ + @24 + P#KIRI3.8
END

IF ~~ P#KIRI3.10
SAY @29 
++ @30 + P#KIRI3.18
+ ~PartyGoldGT(25)~ + @20 DO ~TakePartyGold(20) SetGlobal("P#KivanLoversQuest","GLOBAL",4)~ + P#KIRI3.5
++ @31  + P#KIRI3.19 
END

IF ~~ P#KIRI3.11
SAY @32  
++ @23 + P#KIRI3.20
+ ~PartyGoldGT(25)~ + @24 + P#KIRI3.10
END

IF ~~ P#KIRI3.12
SAY @33 
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",6) GiveGoldForce(1000) TakePartyItem("MISC5R")~ EXIT
END

IF ~~  P#KIRI3.14
SAY @33
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",6) GiveGoldForce(1000) TakePartyItem("MISC5R")~ EXIT
END

IF ~~  P#KIRI3.15
SAY @33
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",6) GiveGoldForce(800) TakePartyItem("MISC5R")~ EXIT
END

IF ~~  P#KIRI3.17
SAY @33
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",6) GiveGoldForce(800) TakePartyItem("MISC5R")~ EXIT
END

IF ~~  P#KIRI3.18
SAY @33
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",6) GiveGoldForce(500) TakePartyItem("MISC5R")~ EXIT
END

IF ~~  P#KIRI3.20
SAY @33
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",6) GiveGoldForce(500) TakePartyItem("MISC5R")~ EXIT
END

IF ~~ P#KIRI3.13
SAY @34
= @15
++ @16  DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",5) GiveGoldForce(900) TakePartyItem("MISC5R")~ EXIT
END

IF ~~ P#KIRI3.16
SAY @34
= @15
++ @16  DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",5) GiveGoldForce(700) TakePartyItem("MISC5R")~ EXIT
END

IF ~~ P#KIRI3.19
SAY @34
= @15
++ @16  DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",5) GiveGoldForce(400) TakePartyItem("MISC5R")~ EXIT
END

END

APPEND P#KIVJ

IF ~~ P#KIRI3.2
SAY @35
++ @36 EXTERN HAQUAT P#KIRI3.6
++ @37 DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXTERN HAQUAT P#KIRI3.7
END

IF ~~ P#KIRI3.3
SAY @35
++ @36 EXTERN HAQUAT P#KIRI3.8
++ @37 DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXTERN HAQUAT P#KIRI3.9
END

IF ~~ P#KIRI3.4
SAY @35
++ @38 EXTERN HAQUAT P#KIRI3.10
++ @37 DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXTERN HAQUAT P#KIRI3.11
END

END

//Jysstevs

EXTEND_BOTTOM SCLJYSS 1 4
+ ~PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @39 + P#KIRI4.1
+ ~!PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @40 + P#KIRI4.2
END

ADD_STATE_TRIGGER SCLJYSS 0  ~!Global("P#SummonChislav","GLOBAL",0) !Global("P#KivanLoversQuest","GLOBAL",4) !Global("P#KivanLoversQuest","GLOBAL",5)~ 3 13 14

APPEND SCLJYSS

IF WEIGHT #0 ~NumTimesTalkedTo(0)
Global("SarlesSpawn","GLOBAL",0)
!Global("JanLissaPlot","GLOBAL",8)
!Global("JanLissaPlot","GLOBAL",9)
GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)
Global("P#SummonChislav","GLOBAL",0)~ THEN BEGIN Lady1
  SAY @41
+ ~PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @39 DO ~SetNumTimesTalkedTo(0)~ + P#KIRI4.1
+ ~!PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @40 DO ~SetNumTimesTalkedTo(0)~ + P#KIRI4.2
++ @42 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF WEIGHT #5
~GlobalGT("SarlesSpawn","GLOBAL",0)
GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)
Global("P#SummonChislav","GLOBAL",0)~ THEN BEGIN Lady2
  SAY  @43
+ ~PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @39 + P#KIRI4.1
+ ~!PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @40 + P#KIRI4.2
++ @42 EXIT
END

IF WEIGHT #3 ~Global("SCLjyss","GLOBAL",1)
Global("SarlesSpawn","GLOBAL",0)
GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)
Global("P#SummonChislav","GLOBAL",0)~ THEN BEGIN Lady3
  SAY @44
+ ~PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @39 + P#KIRI4.1
+ ~!PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @40 + P#KIRI4.2
++ @42 EXIT
END

IF WEIGHT #4 ~Global("SarlesPissed","GLOBAL",1)
GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)
Global("P#SummonChislav","GLOBAL",0)~ THEN BEGIN Lady5
  SAY @45
+ ~PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @39 + P#KIRI4.1
+ ~!PartyHasItem("MISC5R") Global("P#SummonChislav","GLOBAL",0) GlobalGT("P#KivanLoversQuest","GLOBAL",3) GlobalLT("P#KivanLoversQuest","GLOBAL",6)~ + @40 + P#KIRI4.2
++ @42 EXIT
END

IF ~~ P#KIRI4.1
SAY @46
IF ~~ THEN DO ~SetGlobal("P#SummonChislav","GLOBAL",1)~
EXIT
END

IF ~~ P#KIRI4.2
SAY @47 
IF ~~ THEN DO ~SetGlobal("P#SummonChislav","GLOBAL",1)~ EXIT
END

END

BEGIN P#CHISL
APPEND P#CHISL

IF ~NumTimesTalkedTo(0)~ THEN BEGIN ChislavDialogue
SAY @48
++ @49 + P#KIRI5.1
++ @50 + P#KIRI5.2
++ @51+ P#KIRI5.3
++ @52 EXIT
END

IF ~~ P#KIRI5.1
SAY @53 
IF ~~ THEN GOTO P#KIRI5.4
END

IF ~~ P#KIRI5.2
SAY @54 
IF ~~ THEN GOTO P#KIRI5.4
END

IF ~~ P#KIRI5.3
SAY @55 
IF ~~ THEN GOTO P#KIRI5.4
END

IF ~~ P#KIRI5.4
SAY @56
= @57 
++ @58 + P#KIRI5.5
++ @59 + P#KIRI5.6
++ @60 + P#KIRI5.7
++ @61 + P#KIRI5.8
END

IF ~~  P#KIRI5.5
SAY @62
= @63
= @64
+ ~Global("P#KivanLoversQuest","GLOBAL",4) PartyHasItem("MISC5R")~+ @65 + P#KIRI5.9
+ ~Global("P#KivanLoversQuest","GLOBAL",4) !PartyHasItem("MISC5R")~+ @66 + P#KIRI5.9A
+ ~Global("P#KivanLoversQuest","GLOBAL",5)~+ @67 + P#KIRI5.10
END

IF ~~  P#KIRI5.6
SAY @68
= @64
+ ~Global("P#KivanLoversQuest","GLOBAL",4) PartyHasItem("MISC5R")~+ @65 + P#KIRI5.9
+ ~Global("P#KivanLoversQuest","GLOBAL",4) !PartyHasItem("MISC5R")~+ @66 + P#KIRI5.9A
+ ~Global("P#KivanLoversQuest","GLOBAL",5)~+ @67 + P#KIRI5.10
END

IF ~~  P#KIRI5.7
SAY @69
= @64
+ ~Global("P#KivanLoversQuest","GLOBAL",4) PartyHasItem("MISC5R")~+ @65 + P#KIRI5.9
+ ~Global("P#KivanLoversQuest","GLOBAL",4) !PartyHasItem("MISC5R")~+ @66 + P#KIRI5.9A
+ ~Global("P#KivanLoversQuest","GLOBAL",5)~+ @67 + P#KIRI5.10
END

IF ~~ P#KIRI5.8
SAY @70 
= @64
+ ~Global("P#KivanLoversQuest","GLOBAL",4) PartyHasItem("MISC5R")~+ @65 + P#KIRI5.9
+ ~Global("P#KivanLoversQuest","GLOBAL",4) !PartyHasItem("MISC5R")~+ @66 + P#KIRI5.9A
+ ~Global("P#KivanLoversQuest","GLOBAL",5)~+ @67 + P#KIRI5.10
END

IF ~~ P#KIRI5.9
SAY @71 
++ @72 + P#KIRI5.11
++ @73 + P#KIRI5.12
END

IF ~~ P#KIRI5.9A
SAY @74
++ @72 + P#KIRI5.11
++ @73 + P#KIRI5.12
END

IF ~~ P#KIRI5.10
SAY @75
++ @76 + P#KIRI5.13
++ @72 + P#KIRI5.11
++ @73 + P#KIRI5.12
END

IF ~~ P#KIRI5.11
SAY @77 
++ @78 + P#KIRI5.12
END

IF ~~ P#KIRI5.12
SAY @79 
++ @80 + P#KIRI5.14 
END

IF ~~ P#KIRI5.13
SAY @81 
= @82 
= @83
++ @84 + P#KIRI5.15
++ @85 + P#KIRI5.16
END

IF ~~ P#KIRI5.14
SAY @86 
++ @87 + P#KIRI5.17
++ @88 + P#KIRI5.18
END

IF ~~ P#KIRI5.15
SAY @89
= @90 
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",7) TakePartyItem("MISC5R") GiveItemCreate("SW2H14",Player1,0,0,0) EscapeArea()~ EXIT
END

IF ~~ P#KIRI5.16
SAY @91 
=@92
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",7) TakePartyItem("MISC5R") GiveItemCreate("SW2H14",Player1,0,0,0) EscapeArea()~ EXIT
END

IF ~~ P#KIRI5.17
SAY @93
= @94
= @95
= @96
= @90
= @97
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",7) TakePartyItem("MISC5R") GiveGoldForce(1000) GiveItemCreate("SW2H14",Player1,0,0,0) EscapeArea()~ EXIT
END

IF ~~ P#KIRI5.18
SAY @96
= @90
= @98
IF ~~ THEN DO ~SetGlobal("P#KivanLoversQuest","GLOBAL",7) TakePartyItem("MISC5R") GiveGoldForce(1000) GiveItemCreate("SW2H14",Player1,0,0,0) EscapeArea()~ EXIT
END

END





