//Neiros Gellantara//

BEGIN P#NEIR

APPEND P#NEIR

IF WEIGHT #1
~Global("P#NEIRMakesBow","LOCALS",2) Global("P#NEIREmerald","GLOBAL",1)
PartyHasItem("MISC43") ~ THEN BEGIN NeirosCio5
SAY @0
++ @1 DO ~SetGlobal("P#NEIREmerald","GLOBAL",2)~ + NeirosCio5.1
++ @2 DO ~TakePartyItem("MISC43")
DestroyItem("MISC43")~ + NeirosCio5.2
END

IF WEIGHT #2
~ Global("P#NEIRMakesBow","LOCALS",2) Global("P#NEIREmerald","GLOBAL",1) !PartyHasItem("MISC43") GlobalLT("P#NEIRReturn","GLOBAL",5)~ THEN BEGIN NeirosCio3
SAY @3
IF ~~ THEN DO ~IncrementGlobal("P#NEIRReturn","GLOBAL",1)~ EXIT
END

IF WEIGHT #2
~Global("P#NEIRMakesBow","LOCALS",2) Global("P#NEIREmerald","GLOBAL",1) !PartyHasItem("MISC43") Global("P#NEIRReturn","GLOBAL",5)~ THEN BEGIN NeirosCio4
SAY @4
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #1 ~Global("P#NEIRMakesBow","LOCALS",1) !Global("P#NEIREmerald","GLOBAL",1)~ THEN BEGIN NeirosCio1
SAY @5
IF ~~ THEN DO ~SetGlobal("P#NEIRMakesBow","LOCALS",2)
TakePartyItem("P#KISTR")
DestroyItem("P#KISTR")
TakePartyItem("P#BOW")
DestroyItem("P#BOW") 
GiveItemCreate("P#BOW01",Player1,0,0,0) EscapeArea()~ EXIT
END

IF WEIGHT #1
~Global("P#NEIRMakesBow","LOCALS",1) Global("P#NEIREmerald","GLOBAL",1)~ THEN BEGIN NeirosCio2
SAY @6
IF ~~ THEN DO ~SetGlobal("P#NEIRMakesBow","LOCALS",2)
TakePartyItem("P#KISTR")
DestroyItem("P#KISTR") 
TakePartyItem("P#BOW")
DestroyItem("P#BOW")
GiveItemCreate("P#BOW01",Player1,0,0,0)~ EXIT
END

IF ~~ NeirosCio5.2
SAY @7
IF ~~ THEN DO ~AddexperienceParty(5000)~ GOTO NeirosCio5.1
END

IF ~~ NeirosCio5.1
SAY @8
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~NumTimesTalkedToGT(0) OR(3) !InParty("P#Kivan")  Dead("P#kivan")
StateCheck("P#kivan",STATE_SLEEPING)~ THEN BEGIN NeirosGreets3
SAY @3
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0) OR(3) !InParty("P#Kivan")  Dead("P#kivan")
StateCheck("P#kivan",STATE_SLEEPING) ~ THEN BEGIN NeirosGreets2
SAY @9
= @10
++ @11 EXIT
++ @12 + NeirosGreets2.1
++ @13 + NeirosGreets2.2
++ @14 + NeirosGreets2.3
END

IF ~~ NeirosGreets2.3
SAY @15
= @16
IF ~OR(2) !Race(Player1,ELF) Gender(Player1,MALE)~ THEN EXIT
IF ~Gender(Player1,FEMALE) Race(Player1,ELF)~ THEN GOTO  NeirosGreets2.1.1
END

IF ~~ NeirosGreets2.2
SAY @17
IF ~~ THEN GOTO NeirosGreets2.1
END

IF ~~ NeirosGreets2.1
SAY @18
= @16
IF ~OR(2) !Race(Player1,ELF) Gender(Player1,MALE)~ THEN EXIT
IF ~Gender(Player1,FEMALE) Race(Player1,ELF)~ THEN GOTO  NeirosGreets2.1.1
END

IF ~~ NeirosGreets2.1.1
SAY @19
++ @20  + NeirosGreets2.1.1A
++ @21  + NeirosGreets2.1.1B
++ @22  + NeirosGreets2.1.1C
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @23 + NeirosGreets2.1.1D
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @24 + NeirosGreets2.1.1E
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @25 + NeirosGreets2.1.1F
END

IF ~~ NeirosGreets2.1.1F
SAY @26
IF ~~ THEN EXIT
END

IF ~~ NeirosGreets2.1.1E
SAY @27
IF ~~ THEN EXIT
END

IF ~~ NeirosGreets2.1.1D
SAY @28
IF ~~ THEN EXIT
END

IF ~~ NeirosGreets2.1.1C
SAY @29
IF ~~ THEN EXIT
END

IF ~~ NeirosGreets2.1.1A
SAY @30
IF ~~ THEN EXIT
END

IF ~~ NeirosGreets2.1.1B
SAY @31
IF ~~ THEN EXIT
END

END

CHAIN
IF WEIGHT #2 ~NumTimesTalkedTo(0) Gender(Player1,FEMALE)
InParty("P#kivan") !Dead("P#kivan")
!StateCheck("P#kivan",STATE_SLEEPING)~ THEN P#NEIR NeirosGreets1
@9
== P#KIVJ @32
END
++ @33 EXTERN P#KIVJ NeirosGreets1.1K
++ @34 EXTERN P#KIVJ NeirosGreets1.2K
++ @35 EXTERN P#KIVJ NeirosGreets1.3K

CHAIN P#KIVJ NeirosGreets1.1K
@36
== P#NEIR @37
END
++ @11 EXIT
++ @12 EXTERN P#NEIR NeirosGreets1.1
++ @13 EXTERN P#NEIR NeirosGreets1.2
++ @14 EXTERN P#NEIR NeirosGreets1.3

CHAIN P#KIVJ NeirosGreets1.2K
@38
== P#NEIR @39
END
++ @11 EXIT
++ @12 EXTERN P#NEIR NeirosGreets1.1
++ @13 EXTERN P#NEIR NeirosGreets1.2
++ @14 EXTERN P#NEIR NeirosGreets1.3

CHAIN P#KIVJ NeirosGreets1.3K
@40
== P#NEIR @41
END
++ @11 EXIT
++ @12 EXTERN P#NEIR NeirosGreets1.1
++ @13 EXTERN P#NEIR NeirosGreets1.2
++ @14 EXTERN P#NEIR NeirosGreets1.3


CHAIN
IF WEIGHT #2 ~NumTimesTalkedTo(0) Gender(Player1,MALE)
InParty("P#kivan") !Dead("P#kivan")
!StateCheck("P#kivan",STATE_SLEEPING)~ THEN P#NEIR NeirosGreets1.0
@9

END
++ @11 EXIT
++ @12 + NeirosGreets1.1
++ @13 + NeirosGreets1.2
++ @14 + NeirosGreets1.3


APPEND P#NEIR

IF ~NumTimesTalkedToGT(0)
InParty("P#kivan") !Dead("P#kivan")
!StateCheck("P#kivan",STATE_SLEEPING)~ NeirosGreets1.1.1G
SAY @43
IF ~OR(2) !PartyHasItem("P#BOW") !PartyHasItem("P#KISTR")~ THEN EXIT
IF ~PartyHasItem("P#BOW")  PartyHasItem("P#KISTR")~ THEN GOTO NeirosMakesBow
END

IF ~~ NeirosGreets1.3
SAY @15
= @19
++ @20  + NeirosGreets1.1.1A
+ ~Gender(Player1,FEMALE)~ + @21  + NeirosGreets1.1.1B
+ ~Gender(Player1,FEMALE)~ + @22  + NeirosGreets1.1.1C
+ ~Gender(Player1,MALE)~ + @22  + NeirosGreets1.1.1M
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @23 + NeirosGreets1.1.1D
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @24 + NeirosGreets1.1.1E
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @25 + NeirosGreets1.1.1F
END

IF ~~ NeirosGreets1.2
SAY @17
IF ~~ THEN GOTO NeirosGreets1.1
END

IF ~~ NeirosGreets1.1
SAY @18
= @19
++ @20  + NeirosGreets1.1.1A
++ @21  + NeirosGreets1.1.1B
++ @22  + NeirosGreets1.1.1C
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @23 + NeirosGreets1.1.1D
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @24 + NeirosGreets1.1.1E
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @25 + NeirosGreets1.1.1F
END

IF ~~ NeirosMakesBow
SAY @44
++ @45  + NeirosMakesBow1
++ @46 + NeirosMakesBow3
++ @47 + NeirosMakesBow2
END

IF ~~ NeirosMakesBow2
SAY @48
IF ~~ THEN DO ~SetGlobal("P#NEIREmerald","GLOBAL",1) ~ + NeirosMakesBow1
END

IF ~~ NeirosMakesBow1
SAY @49
IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetInterrupt(FALSE)
SetGlobal("P#NEIRMakesBow","LOCALS",1)
CreateVisualEffectObject("SPCRTWPN",Myself)
Wait(3)
DialogInterrupt(TRUE)
SetInterrupt(TRUE)
StartDialogueNoSet([PC])~ EXIT
END

IF ~~ NeirosMakesBow3
SAY @50
IF ~~ THEN GOTO NeirosCio5.1
END

IF ~~ NeirosGreets1.1.1F
SAY @26
IF ~~ THEN EXIT
END

IF ~~ NeirosGreets1.1.1E
SAY @27
IF ~OR(2) !PartyHasItem("P#BOW")  !PartyHasItem("P#KISTR")~ THEN EXIT
IF ~PartyHasItem("P#BOW")  PartyHasItem("P#KISTR")~ THEN GOTO NeirosMakesBow
END

IF ~~ NeirosGreets1.1.1D
SAY @51
IF ~OR(2) !PartyHasItem("P#BOW")  !PartyHasItem("P#KISTR")~ THEN EXIT
IF ~PartyHasItem("P#BOW")  PartyHasItem("P#KISTR")~ THEN GOTO NeirosMakesBow
END

IF ~~ NeirosGreets1.1.1C
SAY @29
IF ~OR(2) !PartyHasItem("P#BOW")  !PartyHasItem("P#KISTR")~ THEN EXIT
IF ~PartyHasItem("P#BOW")  PartyHasItem("P#KISTR")~ THEN GOTO NeirosMakesBow
END

IF ~~ NeirosGreets1.1.1M
SAY @52
IF ~OR(2) !PartyHasItem("P#BOW")  !PartyHasItem("P#KISTR")~ THEN EXIT
IF ~PartyHasItem("P#BOW")  PartyHasItem("P#KISTR")~ THEN GOTO NeirosMakesBow
END

IF ~~ NeirosGreets1.1.1A
SAY @30
IF ~OR(2) !PartyHasItem("P#BOW")  !PartyHasItem("P#KISTR")~ THEN EXIT
IF ~PartyHasItem("P#BOW")  PartyHasItem("P#KISTR")~ THEN GOTO NeirosMakesBow
END

IF ~~ NeirosGreets1.1.1B
SAY @31
IF ~~ THEN EXIT
END

END

