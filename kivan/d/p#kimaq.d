//Jozzi//

BEGIN  P#IHTIA

CHAIN
IF WEIGHT #0 ~CombatCounter(0)
InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#TalkedToSnake","GLOBAL",0)~ THEN P#IHTIA StartMalentiQuest
@0 
== P#KIVJ @1
== P#IHTIA @2  
== P#KIVJ @3
== P#IHTIA @4 
== P#KIVJ @5 
== P#IHTIA @6
= @7 
DO ~SetGlobal("P#TalkedToSnake","GLOBAL",1) SetGlobal("P#MeetJozzi","GLOBAL",1)~
END
++ @8 EXTERN P#KIVJ P#KIQUC1.2
++ @9 DO ~SetGlobal("P#KnowMalenti", "GLOBAL",1)~ + P#KIQUC1.1
++ @10 DO ~SetGlobal("P#KnowMalenti","GLOBAL",1)~ + P#KIQUC1.3
++ @11 DO ~SetGlobal("P#KnowMalenti", "GLOBAL",1)~ + P#KIQUC1.4

APPEND P#IHTIA

IF ~~ P#KIQUC1.1
SAY @12 
= @13 
= @14 
= @15 
= @16 
++ @17 + P#KIQUC1.7
++ @18 + P#KIQUC1.8
++ @19 + P#KIQUC1.9
END

IF ~~ P#KIQUC1.3
SAY @20
++ @17 + P#KIQUC1.7
++ @21 + P#KIQUC1.10
++ @19 + P#KIQUC1.9
++ @22 + P#KIQUC1.11
END

IF ~~  P#KIQUC1.4
SAY @23
= @24
= @25 
IF ~~ THEN DO ~SetGlobal("P#BetrayMalenti","GLOBAL",1)~ EXIT
END

IF ~~ P#KIQUC1.5
SAY @26 
++ @27 +  P#KIQUC1.13
++ @28 EXTERN P#KIVJ P#KIQUC1.12 
END

IF ~~ P#KIQUC1.6
SAY @29
= @13 
= @30 
= @15 
= @31 
++ @17 + P#KIQUC1.7
++ @32 + P#KIQUC1.8
++ @33 + P#KIQUC1.9
++ @34  + P#KIQUC1.7
END

IF ~~ P#KIQUC1.7
SAY @35
= @36
= @25 
IF ~~ THEN DO ~SetGlobal("P#BetrayMalenti","GLOBAL",1)~ EXIT
END

IF ~~ P#KIQUC1.8
SAY @37 
IF ~~ THEN DO ~SetGlobal("P#HelpMalenti","GLOBAL",1) SetGlobal("P#MalentiWaits","GLOBAL",1)~ EXIT
END

IF ~~ P#KIQUC1.9
SAY @38
= @39
++ @40 DO ~SetGlobal("P#MalentiReward","GLOBAL",1)~ + P#KIQUC1.14
++ @41 DO ~SetGlobal("P#MalentiReward","GLOBAL",1)~ + P#KIQUC1.15
++ @42 DO ~SetGlobal("P#MalentiReward","GLOBAL",1)~+ P#KIQUC1.16
++ @34 DO ~SetGlobal("P#MalentiReward","GLOBAL",1)~ + P#KIQUC1.7
END
    
IF ~~ P#KIQUC1.10
SAY @43
IF ~~ THEN DO ~ SetGlobal("P#MalentiReward","GLOBAL",2) SetGlobal("P#MalentiWaits","GLOBAL",1)~ EXIT
END

IF ~~ P#KIQUC1.11
SAY @15
=  @16 
++ @17 + P#KIQUC1.7
++ @44 + P#KIQUC1.10
++ @33 + P#KIQUC1.9
++ @34  + P#KIQUC1.7
END

IF ~~ P#KIQUC1.14
SAY @45 
= @46
++ @47 + P#KIQUC1.16 
++ @34  + P#KIQUC1.7
END

IF ~~ P#KIQUC1.15
SAY @48 
= @49 
++ @50 + P#KIQUC1.7 
++ @51 + P#KIQUC1.10 
+ ~!Alignment(Player1,MASK_GOOD)~ + @52 + P#KIQUC1.16
++ @34  + P#KIQUC1.7 
END

IF ~~ P#KIQUC1.16
SAY @53
IF ~~ THEN DO ~SetGlobal("P#MalentiReward","GLOBAL",3) SetGlobal("P#MalentiWaits","GLOBAL",1)~ EXIT
END

END

CHAIN P#KIVJ P#KIQUC1.12
@54 
== P#IHTIA @55 
= @56
= @57
END
++ @40 EXTERN P#IHTIA P#KIQUC1.14
++ @41 EXTERN P#IHTIA P#KIQUC1.15
++ @42 EXTERN P#IHTIA P#KIQUC1.16
++ @34 EXTERN P#IHTIA P#KIQUC1.7

CHAIN P#IHTIA  P#KIQUC1.13
 @58 
= @59
= @60 
= @61 
= @62 
= @63 
= @64 
= @65 
= @66
== P#KIVJ @67
= @68 
== P#IHTIA @69 
== P#KIVJ @70 
== P#IHTIA @71 
== P#KIVJ @72 
END P#IHTIA  P#KIQUC1.11


CHAIN P#KIVJ P#KIQUC1.2
@73
= @74
== P#IHTIA @75 
= @76 
== P#KIVJ @77 
== P#IHTIA @78 
END
++ @79 EXTERN P#IHTIA P#KIQUC1.5
++ @80 EXTERN P#IHTIA P#KIQUC1.6


// Once party has the item:


APPEND P#IHTIA

IF ~Global("P#MalentiWaits","GLOBAL",3)~ MalentyFinale
SAY @81 
++ @82 DO ~SetGlobal("P#MalentiWaits","GLOBAL",4)~ + P#KIQUC1.18
+ ~Global("P#MalentiReward","GLOBAL",3)~+ @83 DO ~SetGlobal("P#MalentiWaits","GLOBAL",4)~ + P#KIQUC1.19
++ @84 DO ~SetGlobal("P#MalentiWaits","GLOBAL",4)~ EXTERN P#KIVJ P#KIQUC1.20
END

IF ~~ P#KIQUC1.24
SAY @85 
IF ~~ THEN DO ~Enemy()~
EXIT
END

END

CHAIN  P#IHTIA  P#KIQUC1.18
@86  
== P#KIVJ @87
END
++ @88 EXTERN P#KIVJ P#KIQUC1.21
++ @89 EXTERN P#KIVJ P#KIQUC1.22
++ @90 + P#KIQUC1.23

CHAIN  P#IHTIA  P#KIQUC1.19
@91 
== P#KIVJ @87
END
++ @88 EXTERN P#KIVJ P#KIQUC1.21
++ @89 EXTERN P#KIVJ P#KIQUC1.22
++ @90 + P#KIQUC1.23

CHAIN P#KIVJ P#KIQUC1.20
@92
== P#IHTIA @93 
END
++ @94 EXTERN P#IHTIA P#KIQUC1.24
++ @95 EXTERN P#IHTIA P#KIQUC1.18
+ ~Global("P#MalentiReward","GLOBAL",3)~+ @96 EXTERN P#IHTIA P#KIQUC1.19

CHAIN P#KIVJ P#KIQUC1.21
@97 
= @98 
== P#IHTIA @99  
END
IF ~!Global("P#MalentiReward","GLOBAL",2)~ THEN DO ~AddexperienceParty(5000) TakePartyItem("P#IHTIA") GiveGoldForce(10000) GiveItemCreate("P#UL11",Player1,0,10,0) SetGlobal("P#MalentiReward","GLOBAL",5) ActionOverride("seasnake1",ApplySpell(Myself,DRYAD_TELEPORT))~ EXIT
IF ~Global("P#MalentiReward","GLOBAL",2)~ THEN DO ~AddexperienceParty(5000) TakePartyItem("P#IHTIA") GiveItemCreate("P#UL11",Player1,0,10,0) SetGlobal("P#MalentiReward","GLOBAL",5) ActionOverride("seasnake1",ApplySpell(Myself,DRYAD_TELEPORT))~ EXIT


CHAIN P#KIVJ P#KIQUC1.22
@100 // Joined the first two sentences, and reworded some for clarity.
= @101
== P#IHTIA @99 
END
IF ~!Global("P#MalentiReward","GLOBAL",2)~ THEN DO ~AddexperienceParty(10000) GiveGoldForce(10000) TakePartyItem("P#IHTIA") GiveItemCreate("P#UL11",Player1,0,10,0) SetGlobal("P#MalentiReward","GLOBAL",6) ActionOverride("seasnake1",ApplySpell(Myself,DRYAD_TELEPORT))~ EXIT
IF ~Global("P#MalentiReward","GLOBAL",2)~ THEN DO ~AddexperienceParty(10000) TakePartyItem("P#IHTIA") GiveItemCreate("P#UL11",Player1,0,10,0) SetGlobal("P#MalentiReward","GLOBAL",6) ActionOverride("seasnake1",ApplySpell(Myself,DRYAD_TELEPORT))~ EXIT

CHAIN  P#IHTIA  P#KIQUC1.23
@102 
= @103  
END
IF ~~ THEN DO ~AddexperienceParty(3000) TakePartyItem("P#IHTIA") SetGlobal("P#MalentiReward","GLOBAL",7) ActionOverride("seasnake1",ApplySpell(Myself,DRYAD_TELEPORT))~ EXIT

