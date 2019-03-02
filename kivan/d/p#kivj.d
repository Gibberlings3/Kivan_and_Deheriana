//Added in May 2008

//Set Global after PC tells Anomen she loves him in Saerk's house: BANOMEN 560

ADD_TRANS_ACTION BANOMEN BEGIN 560 END BEGIN
END
~SetGlobal("P#KivanAnomenLovedSaerk","GLOBAL",1)~

//proofread additionally in Jan 2006//

//Kivan Tree of Life

APPEND P#KIVJ

IF ~~ THEN BEGIN ToLKiv1
SAY @0 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToLKiv2
SAY @1 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToLKiv3
SAY @2 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToLKiv4
SAY @3
= @4
= @5
++ @6 + KILTA10.1
++ @7 + KILTA10.2
++ @8 + KILTA10.3
++ @9 + KILTA10.4
END

IF ~~ KILTA10.1
SAY @10
++ @11 + KILTA10.5
++ @12 + KILTA10.6
++ @7 + KILTA10.2
++ @8 + KILTA10.3
END

IF ~~  KILTA10.2
SAY @13
COPY_TRANS PLAYER1 33
END

IF ~~ KILTA10.3
SAY @14
++ @15 + KILTA10.6
++ @16 + KILTA10.2
END

IF ~~ KILTA10.4
SAY @17
++ @18 EXTERN P#KIVJ ToLKiv1
++ @19 EXTERN P#KIVJ ToLKiv2
++ @20 EXTERN P#KIVJ ToLKiv3
END

IF ~~ KILTA10.5
SAY @21
++ @22 + KILTA10.7
++ @23+ KILTA10.8
++ @24 + KILTA10.2
END

IF ~~  KILTA10.6
SAY @25
++ @18 EXTERN P#KIVJ ToLKiv1
++ @19 EXTERN P#KIVJ ToLKiv2
++ @20 EXTERN P#KIVJ ToLKiv3
END

IF ~~ KILTA10.7
SAY @26
++ @27+ KILTA10.8
++ @28+ KILTA10.8
++ @29+ KILTA10.8
++ @24 + KILTA10.2
END

IF ~~ KILTA10.8
SAY @30
= @31
= @32
COPY_TRANS PLAYER1 33
END

END

//Tree of Life, where Kivan is not adored beyond all measure

INTERJECT PLAYER1 33 P#TreeofLifeForKivan
== PLAYER1 IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") 
OR(3) GlobalLT("P#KivanLove","GLOBAL",10)
Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",0)~ THEN @33
END
++ @18 EXTERN P#KIVJ ToLKiv1
++ @34 EXTERN P#KIVJ ToLKiv2
++ @20 EXTERN P#KIVJ ToLKiv3

//Tree of Life where we love Kivan to distraction

INTERJECT PLAYER1 33 P#TreeofLifeForKivan
== PLAYER1 IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") 
GlobalGT("P#KivanLove","GLOBAL",9)
!Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1)
~ THEN @35
END
++ @36 EXTERN P#KIVJ ToLKiv4

//Kivan's Viconia scene//

INTERJECT VICONI 0 P#KivanViconia
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @37
END
++ @38 EXTERN P#KIVJ KiVicRes1
++ @39 EXTERN P#KIVJ KiVicRes2
++ @40 EXTERN P#KIVJ KiVicRes3
++ @41 EXTERN P#KIVJ KiVicRes4
++ @42 EXTERN P#KIVJ KiVicRes5
++ @43 EXTERN P#KIVJ KiVicRes5

//Interjections

//Suldanessellar

I_C_T HELLJON 7 P#KivanHellJon
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @44
END

I_C_T HELLJON 8 P#KivanHellJon
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @44
END

I_C_T HELLJON 9 P#KivanHellJon
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @44
END

I_C_T HELLJON 10 P#KivanHellJon
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @44
END

I_C_T SUAVATAR 6 P#KivanAvatarWonder3
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @45
END

I_C_T SUAVATAR 0 P#KivanAvatarWonder2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @46
END

I_C_T2 SUDEMIN 42 P#KivanAvatarWonder1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @47
END

//Trademeet

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
    Name("P#KIVAN",LastTalkedToBy)~ THEN GOTO P#KivanFortune
END

APPEND TRGYP02
IF ~~ THEN BEGIN P#KivanFortune
SAY @48 
IF ~~ THEN EXTERN P#KIVJ P#KivanFortune1
END
END

APPEND P#KIVJ
	IF ~~ THEN BEGIN P#KivanFortune1
		SAY @49 
		IF ~~ THEN EXIT
	END
END

I_C_T2 TRGYP02 12 P#KivanGypsyCharname
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @50
END

I_C_T2 TRGYP02 8 P#KivanGypsyCharname
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @50
END

I_C_T2 CERND 6 P#KivanRangerComment
== CERND IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @51
END

//Temple District

I_C_T2 RIFTM01 24 P#KivanRift
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @52
== RIFTM01 IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @53
END

I_C_T2 HAERDA 109 P#KivanHDCharmed
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @54
END

//Bridge District

I_C_T2 PBHUNT01 5 P#KivanNobleFools
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @55
== PBHUNT01 IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @56
END

ADD_TRANS_ACTION BOUNHA BEGIN 5 END BEGIN
END
~SetGlobal("P#RaelisArrested","GLOBAL",1)~

ADD_TRANS_ACTION BOUNHA BEGIN 6 END BEGIN
END
~SetGlobal("P#RaelisArrested","GLOBAL",1)~

APPEND P#KIVJ

IF WEIGHT #990
~Global("P#KivanDrowReversal","GLOBAL",1)~ THEN BEGIN KivanNoDrow
SAY @659
IF ~~ THEN DO ~SetGlobal("P#KivanDrowReversal","GLOBAL",2)~ EXIT
END

IF WEIGHT #990
~Global("P#KivanSulLiberated","GLOBAL",1)~ THEN BEGIN KivanSulLiberated
SAY @57
IF ~~ THEN DO ~SetGlobal("P#KivanSulLiberated","GLOBAL",2)~ EXIT
END


IF WEIGHT #990
~Global("P#KivanKilledDragon","GLOBAL",1)~ THEN BEGIN KivanFirkraag
SAY @58
++ @59 DO ~SetGlobal("P#KivanKilledDragon","GLOBAL",2)~ + KivanDragon1.1
++ @60 DO ~SetGlobal("P#KivanKilledDragon","GLOBAL",2)~ + KivanDragon1.2
++ @61 DO ~SetGlobal("P#KivanKilledDragon","GLOBAL",2)~ + KivanDragon1.3
END

IF ~~ KivanDragon1.1
SAY @62
IF ~~ THEN EXIT
END

IF ~~ KivanDragon1.2
SAY @63
IF ~~ THEN EXIT
END

IF ~~ KivanDragon1.3
SAY @64
IF ~~ THEN EXIT
END

IF WEIGHT #990
~Global("P#RaelisArrested","GLOBAL",2)~ THEN BEGIN KivanRaelis
SAY @65
++ @66 DO ~SetGlobal("P#RaelisArrested","GLOBAL",3)~ + KiRaelis1.1
++ @67 DO ~SetGlobal("P#RaelisArrested","GLOBAL",3)~ + KiRaelis1.2
++ @68 DO ~SetGlobal("P#RaelisArrested","GLOBAL",3)~ + KiRaelis1.3
++ @69 DO ~SetGlobal("P#RaelisArrested","GLOBAL",3)~ + KiRaelis1.4
END

IF ~~ KiRaelis1.5
SAY @70
IF ~~ THEN EXIT
END

IF ~~ KiRaelis1.4
SAY @71
++ @72 + KiRaelis1.5
++ @73 + KiRaelis1.5
++ @74 + KiRaelis1.3
END

IF ~~ KiRaelis1.3
SAY @75
IF ~~ THEN EXIT
END

IF ~~ KiRaelis1.2
SAY @76
++ @72 + KiRaelis1.5
++ @77 + KiRaelis1.5
++ @74 + KiRaelis1.3
END

IF ~~ KiRaelis1.1
SAY @78
++ @79 + KiRaelis1.5
++ @72 + KiRaelis1.5
++ @80 + KiRaelis1.5
++ @74 + KiRaelis1.3
END

END

I_C_T2 INSPECT 29 P#KivanLeuitenant
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @81
END

INTERJECT TANWIZ1 1 P#KivanVellin
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @82
END
++ @83 EXTERN P#KIVJ P#KiTanner1.1
++ @84 EXTERN P#KIVJ P#KiTanner1.2
++ @85 EXTERN P#KIVJ P#KiTanner1.3

INTERJECT TANWIZ1 2 P#KivanVellin
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @82
END
++ @83 EXTERN P#KIVJ P#KiTanner1.1
++ @86 EXTERN P#KIVJ P#KiTanner1.2
++ @85 EXTERN P#KIVJ P#KiTanner1.3

INTERJECT TANWIZ1 3 P#KivanVellin
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @82
END
++ @83 EXTERN P#KIVJ P#KiTanner1.1
++ @86 EXTERN P#KIVJ P#KiTanner1.2
++ @85 EXTERN P#KIVJ P#KiTanner1.3

INTERJECT TANWIZ1 4 P#KivanVellin
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @82
END
++ @83 EXTERN P#KIVJ P#KiTanner1.1
++ @86 EXTERN P#KIVJ P#KiTanner1.2
++ @85 EXTERN P#KIVJ P#KiTanner1.3

APPEND P#KIVJ

IF ~~ P#KiTanner1.1
SAY @87
IF ~~ THEN DO ~ChangeEnemyAlly("P#Kivan",ALLY)
ActionOverride("tanwiz1",Enemy())
~ UNSOLVED_JOURNAL @88 EXIT
END

IF ~~ P#KiTanner1.2
SAY @89
IF ~~ THEN DO ~ChangeEnemyAlly("P#Kivan",ALLY)
ActionOverride("tanwiz1",Enemy())
~ UNSOLVED_JOURNAL @88 EXIT
END

IF ~~ P#KiTanner1.3
SAY @90
IF ~~ THEN DO ~ChangeEnemyAlly("P#Kivan",ALLY)
ActionOverride("tanwiz1",Enemy())
~ UNSOLVED_JOURNAL @88 EXIT
END

END


I_C_T2 AMSI 6 P#KivanAmsin
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @91
END

I_C_T2 AMSI 7 P#KivanAmsin
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @91
END

I_C_T2 ELGEA 6 P#KivanElgea
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @92
DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~
END

I_C_T2 ELGEA 7 P#KivanElgea
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @92
DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~
END

I_C_T2 ELGEA 4 P#KivanElgea1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @93
END

//Exit from Underdark

ADD_TRANS_ACTION DRELLE BEGIN 8 END BEGIN
END
~SetGlobal("P#KivanElleDream","GLOBAL",1)~

I_C_T2 C6ELHAN2 8 P#KivanElhan
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")  Race(Player1,ELF)~ THEN @94
== C6ELHAN2 IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")  Race(Player1,ELF)~ THEN @95
END

I_C_T2 C6ELHAN2 8 P#KivanElhan
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")  !Race(Player1,ELF)~ THEN @96
== C6ELHAN2 IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")  Race(Player1,ELF)~ THEN @97
END

//Ust-Natha and Underdark

INTERJECT DADROW21 4 P#KivanDrowNight
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") Gender(Player1,FEMALE) Global("P#KivanRomanceActive","GLOBAL",1)  !Global("P#KivanRomanceInactive","GLOBAL",1) ~ THEN @98
END 
++ @99 EXTERN P#KIVJ P#KiDroNi1.1
++ @100 EXTERN P#KIVJ P#KiDroNi1.2
++ @101 EXTERN P#KIVJ P#KiDroNi1.3
++ @102 EXTERN P#KIVJ P#KiDroNi1.4

APPEND P#KIVJ

IF ~~ P#KiDroNi1.1
SAY @103
COPY_TRANS DADROW21 4
END

END

CHAIN P#KIVJ P#KiDroNi1.4
@104
= @105
== DADROW21 @106
COPY_TRANS DADROW21 3

CHAIN P#KIVJ P#KiDroNi1.3
@107
== DADROW21 @106
COPY_TRANS DADROW21 3

 
CHAIN P#KIVJ P#KiDroNi1.2
@108
== DADROW21 @109
COPY_TRANS DADROW21 4


I_C_T2 DAABOL 28 P#KivanAboleth
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @110
END


INTERJECT UDSILVER 34 P#KivanAdalon4
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @111
END 
++ @112 EXTERN P#KIVJ P#KiDra1.1
++ @113 EXTERN P#KIVJ P#KiDra1.2
++ @114 EXTERN P#KIVJ P#KiDra1.3
+ ~Gender(Player1,FEMALE)~ + @115 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~  EXTERN P#KIVJ P#KiDra1.4

APPEND P#KIVJ

IF ~~ P#KiDra1.1
SAY @116
COPY_TRANS UDSILVER 34
END
 
IF ~~ P#KiDra1.2
SAY @117
= @118
COPY_TRANS UDSILVER 34
END

IF ~~ P#KiDra1.3
SAY @119
COPY_TRANS UDSILVER 34
END

IF ~~ P#KiDra1.4
SAY @120
= @121
COPY_TRANS UDSILVER 34
END

END

I_C_T2 UDSILVER 15 P#KivanAdalon2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @122
END

I_C_T2 UDSILVER 12 P#KivanAdalon1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @123
END

ADD_TRANS_ACTION DADROW3 BEGIN 0 END BEGIN
END
~RealSetGlobalTimer("P#KivanSpeakUstNatha","GLOBAL",10)~

ADD_TRANS_ACTION UDSOLA01 BEGIN 0 END BEGIN
END
~RealSetGlobalTimer("P#KivanSpeakUstNatha","GLOBAL",10)~

//Brynnlaw & Spellhold

INTERJECT YOSHIMOX 2 P#KivanYoshimoBetrayal
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @124
END 
++ @125 EXTERN YOSHIMOX YoTamoko2.1
++ @126 EXTERN YOSHIMOX YoTamoko2.2
++ @127 EXTERN YOSHIMOX YoTamoko2.3

APPEND YOSHIMOX

IF ~~ YoTamoko2.1
SAY @128
COPY_TRANS YOSHIMOX 2
END
 
IF ~~ YoTamoko2.2
SAY @129
COPY_TRANS YOSHIMOX 2
END

IF ~~ YoTamoko2.3
SAY @130
COPY_TRANS YOSHIMOX 2
END

END

INTERJECT YOSHIMOX 13 P#KivanYoshimoBetrayal
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @124
END 
++ @125 EXTERN YOSHIMOX YoTamoko1.1
++ @126 EXTERN YOSHIMOX YoTamoko1.2
++ @127 EXTERN YOSHIMOX YoTamoko1.3

APPEND YOSHIMOX

IF ~~ YoTamoko1.1
SAY @128
COPY_TRANS YOSHIMOX 13
END
 
IF ~~ YoTamoko1.2
SAY @129
COPY_TRANS YOSHIMOX 13
END

IF ~~ YoTamoko1.3
SAY @130
COPY_TRANS YOSHIMOX 13
END

END

I_C_T2 PPSAEM2 20 P#KivanSaemonAfter1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @131
END

I_C_T2 PPIRENI2 39 P#KivanNotOver
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @132
END

I_C_T ELEARB10 2 P#KivanAparition1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @133
END

I_C_T2 PPNALJ 6 P#KivanNaljier
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @134
END

I_C_T2 PPDRADEE 3 P#Dradeel1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @135
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")  Global("P#KivanImoenMad1","GLOBAL",1)~ THEN @136
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @137
END

//Imoen dismissed//

INTERJECT IMOEN2 24 P#KivanImoenDismissed
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @138
END 
++ @139 DO ~GiveGoldForce(-1000)~ EXTERN IMOEN2 ImMon1.1
++ @140 EXTERN P#KIVJ ImMon1.2
++ @141 EXTERN P#KIVJ ImMon1.3

APPEND P#KIVJ

IF ~~ ImMon1.3
SAY @142
COPY_TRANS IMOEN2 24
END
 
IF ~~ ImMon1.2
SAY @143
COPY_TRANS IMOEN2 24
END

END

APPEND IMOEN2 

IF ~~ ImMon1.1
SAY @144
COPY_TRANS IMOEN2 24
END

END

INTERJECT PPIMOEN 2 P#KivanImoenMad1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @145
END
++ @146 EXTERN P#KIVJ P#KiIMSp1.1
++ @147 EXTERN P#KIVJ P#KiIMSp1.2
++ @148 EXTERN P#KIVJ P#KiIMSp1.3
++ @149 EXTERN P#KIVJ P#KiIMSp1.4
++ @150 EXTERN P#KIVJ P#KiIMSp1.5
++ @151 EXTERN P#KIVJ P#KiIMSp1.5

APPEND P#KIVJ

IF ~~ P#KiIMSp1.5
SAY @152
COPY_TRANS PPIMOEN 2
END

IF ~~ P#KiIMSp1.4
SAY @153
COPY_TRANS PPIMOEN 2
END

IF ~~ P#KiIMSp1.3
SAY @154
COPY_TRANS PPIMOEN 2
END

IF ~~ P#KiIMSp1.2
SAY @155
COPY_TRANS PPIMOEN 2
END

IF ~~ P#KiIMSp1.1
SAY @156
COPY_TRANS PPIMOEN 2
END

IF ~Global("P#KivanSeesAphril","GLOBAL",1)~ THEN BEGIN P#KivanSeesAphril
SAY @663
IF ~~ THEN DO ~SetGlobal("P#KivanSeesAphril","GLOBAL",2)~ EXIT
END

END

I_C_T2 PPDUEL2 2 P#KivanMinscBrynnlaw1
== MINSCJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") InParty("minsc") !Dead("minsc")
!StateCheck("minsc",STATE_SLEEPING)~ THEN @157
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") InParty("minsc") !Dead("minsc")
!StateCheck("minsc",STATE_SLEEPING)~ THEN @158
== MINSCJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") InParty("minsc") !Dead("minsc")
!StateCheck("minsc",STATE_SLEEPING)~ THEN @159
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") InParty("minsc") !Dead("minsc")
!StateCheck("minsc",STATE_SLEEPING)~ THEN @160
== MINSCJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") InParty("minsc") !Dead("minsc")
!StateCheck("minsc",STATE_SLEEPING)~ THEN @161
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") InParty("minsc") !Dead("minsc")
!StateCheck("minsc",STATE_SLEEPING)~ THEN @162
END

I_C_T PPSAEM 58 P#KivanSaemonAranArrival1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @163
END

I_C_T HAERDAJ 105 P#KivanSaemonBodhiArrival1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @164
END

I_C_T2 PPSAEM 14 P#KivanSaemonBodhiArrival2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @165
END

I_C_T2 PPSAEM 19 P#KivanSaemonBodhiArrival3
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @166
END

I_C_T2 PPSAEM 32 P#KivanSaemonBodhiArrival4
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")
OR(3) !InParty("haerdalis") Dead("haerdalis")
!StateCheck("haerdalis",STATE_SLEEPING) ~ THEN @167
END

//Graveyard

I_C_T2 C6DRIZZ2 2 P#KivanDrizztHelped
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @168
END

I_C_T2 BODHIAMB 5 P#KivanBodhiAbduction
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @169
END

I_C_T C6BODHI 20 P#KivanBodhiLastMeeting
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @170
== C6BODHI IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @171
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @172
== C6BODHI IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @173
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @174
== C6BODHI IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @175
END

I_C_T2 SPPAIN 18 P#KivanPaiNA1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @176
END

I_C_T2 SPPAIN 25 P#KivanPaiNA2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @176
END

I_C_T2 ARENTHIS 16 P#KivanArenthis
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @177
== ANOMENJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") 
InParty("anomen") !Dead("anomen")
!StateCheck("anomen",STATE_SLEEPING) !Alignment("Anomen",CHAOTIC_NEUTRAL)
~ THEN @178
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") 
InParty("anomen") !Dead("anomen")
!StateCheck("anomen",STATE_SLEEPING) !Alignment("Anomen",CHAOTIC_NEUTRAL)
~ THEN @179
END

I_C_T2 WELLYN 8 P#KivanWellyn1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @180
== MINSCJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")
InParty("minsc") !Dead("minsc")
!StateCheck("minsc",STATE_SLEEPING) ~ THEN @181
END

I_C_T2 BODHI 77 P#KivanBodhiOffer7
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @182
END

I_C_T2 BODHI 50 P#KivanBodhiOffer6
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @183
DO ~IncrementGlobal("P#KivanOffence","GLOBAL",2)~
END

I_C_T2 BODHI 49 P#KivanBodhiOffer5
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @184
END

I_C_T2 BODHI 45 P#KivanBodhiOffer4
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @185
END

I_C_T2 BODHI 114 P#KivanBodhiOffer3
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @186
END

I_C_T2 BODHI 18 P#KivanBodhiOffer2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @187
END

I_C_T2 BODHI 21 P#KivanBodhiOffer1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @188
END

I_C_T2 BODHI 6 P#KivanBodhiOffer
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") Global("P#TalkedAboutBodhiAran","GLOBAL",1)~ THEN @189
END

I_C_T2 BODHI 6 P#KivanBodhiOffer
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") !Global("P#TalkedAboutBodhiAran","GLOBAL",1)~ THEN @190
END

//Shadow Temple

I_C_T2 RIGEN01 20 P#KivanIgen
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @191
== JAHEIRAJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")
InParty("jaheira") !Dead("jaheira")
!StateCheck("jaheira",STATE_SLEEPING)
~ THEN @192  
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")
InParty("jaheira") !Dead("jaheira")
!StateCheck("jaheira",STATE_SLEEPING)
~ THEN @193
END

I_C_T2 RNGWLF03 0 P#KivanAnath
== HAERDAJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") 
InParty("haerdalis") !Dead("haerdalis")
!StateCheck("haerdalis",STATE_SLEEPING)~ THEN @194
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") 
InParty("haerdalis") !Dead("haerdalis")
!StateCheck("haerdalis",STATE_SLEEPING)~ THEN  @195
END

I_C_T2 SHAAVA01 3 P#KivanTest
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @196
END

APPEND P#KIVJ

IF WEIGHT #990 
~Global("P#KivanAmuana","GLOBAL",1)~ THEN BEGIN P#KivanAmuana
SAY @197
+ ~Alignment(Player1,MASK_GOOD)~ + @198 DO ~SetGlobal("P#KivanAmuana","GLOBAL",2)~ + P#KiShDra1
++ @199 DO ~SetGlobal("P#KivanAmuana","GLOBAL",2)~ + P#KiShDra1
++ @200 DO ~SetGlobal("P#KivanAmuana","GLOBAL",2)~ + P#KiShDra3
++ @201 DO ~SetGlobal("P#KivanAmuana","GLOBAL",2)~ + P#KiShDra2
++ @202 DO ~SetGlobal("P#KivanAmuana","GLOBAL",2)~ + P#KiShDra4
++ @203 DO ~SetGlobal("P#KivanAmuana","GLOBAL",2)~ + P#KiShDra1
END

IF ~~ P#KiShDra1
SAY @204
IF ~~ THEN EXIT
END

IF ~~ P#KiShDra2
SAY @205
IF ~~ THEN EXIT
END

IF ~~ P#KiShDra3
SAY @206
IF ~~ THEN EXIT
END

IF ~~ P#KiShDra4
SAY @207
IF ~~ THEN EXIT
END

END


//Imnesvale

//Madulf

INTERJECT UHOGRE01 0 P#KivanMadulf1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @208
END
++ @209 EXTERN P#KIVJ KIOGR1.1
++ @210 EXTERN P#KIVJ KIOGR1.2
++ @211 EXTERN P#KIVJ KIOGR1.3
++ @212 EXTERN P#KIVJ KIOGR1.4

APPEND P#KIVJ

IF ~~ KIOGR1.1
SAY @213
COPY_TRANS UHOGRE01 0
END

IF ~~ KIOGR1.2
SAY @214
= @215
COPY_TRANS UHOGRE01 0
END

IF ~~ KIOGR1.3
SAY @216
= @215
COPY_TRANS UHOGRE01 0
END

IF ~~ KIOGR1.4
SAY @217
= @215
COPY_TRANS UHOGRE01 0
END

END

I_C_T2 UHOGRE01 10 P#KivanMadulf2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") Global("P#KivanMadulf1","GLOBAL",1) ~ THEN @218
= @219
= @220
== CERNDJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") 
InParty("cernd") !Dead("cernd")
!StateCheck("cernd",STATE_SLEEPING)~ THEN @221
END 

I_C_T VALYGAR 5 P#KivanValIntro
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")
!Global("RangerProtector","GLOBAL",1)~ THEN @222
END

I_C_T VALYGAR 5 P#KivanValIntro
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")
Global("RangerProtector","GLOBAL",1)~ THEN @223
END

I_C_T2 UHMAY01 60 P#KivanMayor2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @224
== UHMAY01 @225
== P#KIVJ @226
== UHMAY01 @227
END

I_C_T2 UHMAY01 34 P#KivanRangerStronghold
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") Global("P#RangerWantsHold","GLOBAL",1)~ THEN @228
END

I_C_T2 UHMAY01 34 P#KivanRangerStronghold
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") !Global("P#RangerWantsHold","GLOBAL",1)~ THEN @229
END

I_C_T UHMAY01 19 P#KivanMayor1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @230
END

I_C_T JUGDAR01 4 P#KivanDaar1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @231
END

//In merella's cabin//

APPEND P#KIVJ

IF WEIGHT #990 
~Global("P#KivanCabin","GLOBAL",1)~ THEN BEGIN P#KivanCabin
SAY @232
IF ~~ THEN DO ~SetGlobal("P#KivanCabin","GLOBAL",2)~ EXIT
END

END

//De'Arnise Keep

ADD_TRANS_ACTION DALESON BEGIN 10 23 45 END BEGIN
END
~SetGlobal("P#KivanFlailOA","GLOBAL",1)~ 

//Dog's Stew//

CHAIN
IF WEIGHT #990
~Global("P#KivanDogStew","GLOBAL",1)~ THEN P#KIVJ KIAerieDogStew
@233
DO ~SetGlobal("P#KivanDogStew","GLOBAL",2)~
== BAERIE @234
== P#KIVJ @235
== BAERIE @236
== P#KIVJ @237
== BAERIE @238 
EXIT

APPEND P#KIVJ

//Bow of Elven Court//

IF WEIGHT #990 
~Global("P#KivanCoolBow","GLOBAL",1)~ THEN BEGIN P#KivanCoolBow
SAY @239
IF ~~ THEN DO ~SetGlobal("P#KivanCoolBow","GLOBAL",2)~ EXIT
END

IF WEIGHT #990 
~Global("P#KivanFlailOA","GLOBAL",2)~ THEN BEGIN P#KivanFlailOA
SAY @240
IF ~PartyHasItem("BLUN14I")~ THEN DO ~SetGlobal("P#KivanFlailOA","GLOBAL",3)~ GOTO P#KivanFlailOAAcid
IF ~PartyHasItem("BLUN14H")~ THEN DO ~SetGlobal("P#KivanFlailOA","GLOBAL",3)~ GOTO P#KivanFlailOAFire
IF ~PartyHasItem("BLUN14G")~ THEN DO ~SetGlobal("P#KivanFlailOA","GLOBAL",3)~ GOTO P#KivanFlailOACold
END

IF ~~ P#KivanFlailOAAcid
SAY @241
IF ~~ THEN EXIT
END

IF ~~ P#KivanFlailOAFire
SAY @242
IF ~~ THEN EXIT
END

IF ~~ P#KivanFlailOACold
SAY @243
IF ~~ THEN EXIT
END

END


INTERJECT DALESON 9 P#KivanDaleson1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @244
END
++ @245 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson1.1
++ @246 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson1.2
++ @247 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson1.3
++ @248 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson1.4

INTERJECT DALESON 12 P#KivanDaleson1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @244
END
++ @245 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson2.1
++ @246 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson2.2
++ @247 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson2.3
++ @248 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson2.4

INTERJECT DALESON 24 P#KivanDaleson1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @244
END
++ @245 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson3.1
++ @246 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson3.2
++ @247 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson3.3
++ @248 DO ~SetGlobal("P#KivanDaleson1","GLOBAL",1)~ EXTERN P#KIVJ KiDaleson3.4

APPEND P#KIVJ

IF ~~ KiDaleson1.1
SAY @249
COPY_TRANS DALESON 9
END

IF ~~ KiDaleson1.2
SAY @250
COPY_TRANS DALESON 9
END

IF ~~ KiDaleson1.3
SAY @251
COPY_TRANS DALESON 9
END

IF ~~ KiDaleson1.4
SAY @252
COPY_TRANS DALESON 9
END

IF ~~ KiDaleson2.1
SAY @249
COPY_TRANS DALESON 12
END

IF ~~ KiDaleson2.2
SAY @250
COPY_TRANS DALESON 12
END

IF ~~ KiDaleson2.3
SAY @253
COPY_TRANS DALESON 12
END

IF ~~ KiDaleson2.4
SAY @252
COPY_TRANS DALESON 12
END

IF ~~ KiDaleson3.1
SAY @249
COPY_TRANS DALESON 24
END

IF ~~ KiDaleson3.2
SAY @250
COPY_TRANS DALESON 24
END

IF ~~ KiDaleson3.3
SAY @253
COPY_TRANS DALESON 24
END

IF ~~ KiDaleson3.4
SAY @252
COPY_TRANS DALESON 24
END

END

//AR0300 == Docks//

I_C_T EDWIN 34 P#KivanRenalJob2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @254
== EDWIN IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @255
END

I_C_T2 RENAL 23 P#KivanRenalJob1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @256
END

I_C_T2 RENAL 44 P#KivanRenalJob1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @256
END

ADD_TRANS_ACTION LASSAL BEGIN 4 END BEGIN END ~SetGlobal("P#LassalCurse","GLOBAL",1)~

APPEND P#KIVJ

IF WEIGHT #990
~Global("P#KivanLassal","GLOBAL",1)~  THEN BEGIN KivanLassalDeath
SAY @257
++ @258 DO ~SetGlobal("P#KivanLassal","GLOBAL",2)~ + KiLassalDead1.1
+ ~Gender(Player1,FEMALE)~ + @259 DO ~SetGlobal("P#KivanLassal","GLOBAL",2)~ + KiLassalDead1.2
++ @260 DO ~SetGlobal("P#KivanLassal","GLOBAL",2)~ + KiLassalDead1.3
++ @261 DO ~SetGlobal("P#KivanLassal","GLOBAL",2)~ + KiLassalDead1.1
++ @262 DO ~SetGlobal("P#KivanLassal","GLOBAL",2)~ + KiLassalDead1.4
END

IF ~~ KiLassalDead1.1
SAY @263
IF ~~ THEN EXIT
END

IF ~~ KiLassalDead1.3
SAY @264
IF ~~ THEN EXIT
END

IF ~~ KiLassalDead1.4
SAY @265
IF ~~ THEN GOTO KiLassalDead1.3
END

IF ~~ KiLassalDead1.5
SAY @266
IF ~~ THEN EXIT
END

IF ~~ KiLassalDead1.6
SAY @267
IF ~~ THEN EXIT
END

IF ~~ KiLassalDead1.7
SAY @268
IF ~~ THEN EXIT
END

IF ~~ KiLassalDead1.2
SAY @269
++ @270 + KiLassalDead1.6
++ @271 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KiLassalDead1.7
++ @272 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~+ KiLassalDead1.5
END

END

I_C_T2 ARAN 14 P#KivanAranJob3
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @273
END

I_C_T2 ARAN 20 P#KivanAranJob2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @274
END

I_C_T ARAN 4 P#KivanAranJob1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")  Global("P#KivanAranTorture","GLOBAL",1)~ THEN @275
== ARAN IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")  Global("P#KivanAranTorture","GLOBAL",1)~ THEN @276
END

INTERJECT ARNMAN07 2 P#KivanAranTorture
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @277
END
++ @278 EXTERN P#KIVJ P#KiArTo1.1
++ @279 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXTERN P#KIVJ P#KiArTo1.2
++ @280 EXTERN P#KIVJ P#KiArTo1.3
++ @281 EXTERN P#KIVJ P#KiArTo1.4
+ ~Gender(Player1,FEMALE)~ + @282 EXTERN P#KIVJ P#KiArTo1.5

APPEND P#KIVJ

IF ~~ P#KiArTo1.5
SAY @283
COPY_TRANS ARNMAN07 2
END

IF ~~ P#KiArTo1.4
SAY @284
COPY_TRANS ARNMAN07 2
END

IF ~~ P#KiArTo1.3
SAY @285
COPY_TRANS ARNMAN07 2
END

IF ~~ P#KiArTo1.2
SAY @286
COPY_TRANS ARNMAN07 2
END

IF ~~ P#KiArTo1.1
SAY @287
COPY_TRANS ARNMAN07 2
END

END

I_C_T2 JAHEIRAJ 364 P#KivanJaheiraMitsu
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")
InParty("jaheira") !Dead("jaheira")
!StateCheck("jaheira",STATE_SLEEPING)
 ~ THEN @288
== JAHEIRAJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") 
InParty("jaheira") !Dead("jaheira")
!StateCheck("jaheira",STATE_SLEEPING)
~ THEN @289
END

I_C_T2 ARNMAN05 6 P#KivanArchon
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @290
END


I_C_T ARNWAR08 3 P#KivanTizzane
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @291
== ARNWAR08 IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @292
END

////Everything above is proofread additonally in Jan 2006//

////Everything below is proofread additonally in Jan 2006//

I_C_T2 ANOMENJ 199 P#KivanBooterAnomen
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @293 
== ANOMENJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @294 
END

I_C_T2 BOOTER 3 P#KivanBooter2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @295
END

I_C_T2 BOOTER02 0 P#KivanBooter1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @296
END

I_C_T2 MAEVAR 42 P#KivanMaeVarKill
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") ~ THEN @658
END

APPEND CELVAN

IF WEIGHT #0
~See("P#KIVAN")
InParty("P#KIVAN")
InMyArea("P#KIVAN")
RandomNum(2,1)
Global("P#KivanCelvan","AR0300",0)
~ THEN BEGIN P#KivanCelvanusLimerick
  SAY @297
  IF ~~ THEN DO ~SetGlobal("P#KivanCelvan","AR0300",1)~ EXTERN ~P#KIVJ~ P#KivanCelvanusLimerick1
END

END

APPEND P#KIVJ

IF ~~ THEN BEGIN P#KivanCelvanusLimerick1
  SAY @298
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

END

INTERJECT HERVO 12 P#KivanHervo1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") Global("P#KivanTolger1","GLOBAL",1)~ THEN @299
END
++ @300 EXTERN P#KIVJ KiHervo1.1
++ @301 EXTERN P#KIVJ KiHervo1.2
++ @302 EXTERN P#KIVJ KiHervo1.3
++ @303  EXTERN P#KIVJ KiHervo1.4
++ @304 EXTERN P#KIVJ KiHervo1.5
++ @305 EXTERN P#KIVJ KiHervo1.6
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_3%)~+ @306 EXTERN P#KIVJ KiHervo1.7



APPEND P#KIVJ

IF ~~ KiHervo1.1
SAY @307
COPY_TRANS HERVO 12
END

IF ~~ KiHervo1.2
SAY @308
COPY_TRANS HERVO 12
END

IF ~~ KiHervo1.3
SAY @309
COPY_TRANS HERVO 12
END

IF ~~ KiHervo1.4
SAY @310
COPY_TRANS HERVO 12
END

IF ~~ KiHervo1.5
SAY @311
COPY_TRANS HERVO 12
END

IF ~~ KiHervo1.6
SAY @312
COPY_TRANS HERVO 12
END

IF ~~ KiHervo1.7
SAY @313
COPY_TRANS HERVO 12
END

END

I_C_T2 DCLERIC 0 P#KivanCyricPriest1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @314
END

I_C_T2 DCLERIC 4 P#KivanCyricPriest2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") !Alignment(Player1,MASK_EVIL) OR(3) !InParty("aerie")
Dead("aerie")
StateCheck("aerie",STATE_SLEEPING)~ THEN @315
END

//lyros is actually Xzar//

I_C_T LYROS 16 P#KivanXzar2
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @316
END

I_C_T LYROS 11 P#KivanXzar1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") Global("P#KivanCyricPriest1","GLOBAL",1)~ THEN @317
END

I_C_T2 RYLOCK 19 P#KivanRylock1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @318
END

//AR1000 - Governement//

I_C_T2 TOLGER 8 P#KivanTolger1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ THEN @319
END

I_C_T2 DELON 6 P#KivanDelon1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @320
END

//Viconia's fun//

I_C_T2 VICONI 2 P#KivanViconiaJoin
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @321
END

I_C_T2 VICONI 23 P#KivanViconiaJoinAerie
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN") Global("P#KivanViconiaJoin","GLOBAL",1)~ THEN @322
END

APPEND P#KIVJ

IF ~~ KiVicRes1
SAY @323
COPY_TRANS VICONI 0
END

IF ~~ KiVicRes2
SAY @324
COPY_TRANS VICONI 0
END

IF ~~ KiVicRes3
SAY @325
= @326
COPY_TRANS VICONI 0
END

IF ~~ KiVicRes4
SAY @327
COPY_TRANS VICONI 0
END

IF ~~ KiVicRes5
SAY @328
COPY_TRANS VICONI 0
END

IF ~~ KivanKillViconia
SAY @329
IF ~~ THEN DO ~DialogueInterrupt(FALSE)
SetGlobal("ViconiaDeath","AR1000",1)
TriggerActivation("ViconiaStake",FALSE)
ActionOverride("P#Kivan",JumpToPoint([1884.1079]))
ActionOverride("P#Kivan",EquipMostDamagingMelee())
ActionOverride("P#Kivan",Attack("viconia")
Wait(1)
ActionOverride("Viconia",Kill(Myself))~ EXIT
END
END

EXTEND_BOTTOM VICONI 11
IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN EXTERN P#KIVJ KivanKillViconia
END


//AR0700 == Wakeen's Promenade//

I_C_T2 BOY1 1 P#KivanGiran
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @330
END

I_C_T2 TOUR1 5 P#KivanHarrold
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @331
= @332
END

I_C_T2 CIRCG1 2 P#KivanCircusGuard1
== P#KIVJ IF ~InParty("P#kivan") !Dead("P#kivan")
InMyArea("P#KIVAN")~ THEN @333
END

I_C_T2 BOY1 4 P#KivanGiran3
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @334
END

I_C_T2 CIRCG1 3 P#KivanCircusGuard2
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @335
END

I_C_T2 TRAINER1 4 X#KivanFearghus
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @336
== TRAINER1 IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @337
END

I_C_T2 GENIE1 7 P#KivanCircusGenie1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @338
== GENIE1 IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @339
END

I_C_T2 AERIE 29 P#KivanAerie1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @340
END

I_C_T2 AERIE 1 P#KivanAerie3
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @341
== AERIE IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @342
END

I_C_T2 KSLAVE01 0 P#KivanSlave
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN") InParty("aerie") !Dead("aerie")~ THEN @343
== AERIEJ IF ~InParty("P#kivan") InMyArea("P#KIVAN") InParty("aerie") !Dead("aerie")~ THEN @344
END

I_C_T2 KALAH 2 P#KivanKalah1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @345
END

I_C_T2 KALAH 4 P#KivanKalah2
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @345
END

I_C_T2 KALAH2 6 P#KivanKalah3
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @346
END

I_C_T QUAYLE 0 P#KivanQuayle1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @347
== QUAYLE IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @348
END

I_C_T QUAYLE 10 P#KivanQuayle2
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @347
== QUAYLE IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @348
END

I_C_T2 AERIEJ 3 P#KivanAerieQuayleDead
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @349
END

//Slums and Planar Sphere

I_C_T2 VALYGARJ 113 P#KivanValygarJoins1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @662
END

I_C_T2 VALYGARJ 114 P#KivanValygarJoins1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @662
END

I_C_T2 OBSSOL01 10 P#KivanReyna
== P#KIVJ IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @660
END

I_C_T2 TOLGER2 0 P#KivanTolgeriasBetrayed
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @661
END

I_C_T2 GAELAN 3 P#KivanGaelan2
== P#KIVJ IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @350
END

I_C_T2 GAELAN 4 P#KivanGaelan3
== P#KIVJ IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @351
END

I_C_T2 GAELAN 13 P#KivanGaelan4
== P#KIVJ IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @352
END

I_C_T2 GAELAN 25 P#KivanGaelan5
== P#KIVJ IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @353
END

I_C_T2 ANOMEN 0 P#KivanAnomen0
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @354
== ANOMEN IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @355
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @356
== ANOMEN IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @357
 = @358
END

I_C_T2 ANOMEN 12 P#KivanAnomen1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @359
== ANOMEN IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @355
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @356
== ANOMEN IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @357
 = @358
END

I_C_T2 NALIA 2 P#KivanNalia1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @360
END

EXTEND_BOTTOM KORGANA 2
IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN EXTERN P#KIVJ KivanKorganChain1
END

CHAIN P#KIVJ KivanKorganChain1
@361
== KORGANA IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @362
DO ~SetGlobal("NoStory","GLOBAL",1)~
EXIT

I_C_T2 FIRKRA01 4 P#KivanFirkra
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @363
== BANOMEN  IF ~ InParty("anomen")  InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @364
== FIRKRA01  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @365 
END

I_C_T2 AERIEJ 24 P#KivanSalvanAerie1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @366
== SALVANAS  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @367
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @368
== SALVANAS  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @369
DO ~SetGlobal("P#SalvanusMistake","GLOBAL",1)~
END

ADD_TRANS_ACTION SALVANAS BEGIN 20 END BEGIN
END
~SetGlobal("P#NoticedSalvanas","GLOBAL",1)~

ADD_TRANS_ACTION SALVANAS BEGIN 25 END BEGIN
END
~SetGlobal("P#NoticedSalvanas1","GLOBAL",1)~

APPEND P#KIVJ

IF WEIGHT #990
~Global("P#NoticedSalvanas","GLOBAL",2)~ THEN BEGIN P#KivanSalvanusReaction
SAY @370
+ ~Global("P#KivanSalvanAerie1","GLOBAL",1)~ + @371 DO ~SetGlobal("P#NoticedSalvanas","GLOBAL",3) SetGlobal("P#NoticedSalvanas1","GLOBAL",1)~  + P#KiSaScene1.1
++ @372 DO ~SetGlobal("P#NoticedSalvanas","GLOBAL",3) SetGlobal("P#NoticedSalvanas1","GLOBAL",1)~ +  P#KiSaScene1.2
++ @373 DO ~SetGlobal("P#NoticedSalvanas","GLOBAL",3) SetGlobal("P#NoticedSalvanas1","GLOBAL",1)~ EXIT
++ @374 DO ~SetGlobal("P#NoticedSalvanas","GLOBAL",3) SetGlobal("P#NoticedSalvanas1","GLOBAL",1)~ EXTERN SALVANAS P#KiSaScene1.3
+ ~!Dead("coran")~ + @375 DO ~SetGlobal("P#NoticedSalvanas","GLOBAL",3) SetGlobal("P#NoticedSalvanas1","GLOBAL",1)~ + P#KiSaScene1.4
END

IF ~~ P#KiSaScene1.4
SAY @376
IF ~~ THEN EXIT
END

IF ~~ P#KiSaScene1.1
SAY @377
++ @378 + P#KiSaScene1.1.1
++ @379 + P#KiSaScene1.2
++ @380  + P#KiSaScene1.1.1
++ @381  + P#KiSaScene1.1.3
++ @382  + P#KiSaScene1.1.4
++ @383 DO ~SetGlobal("P#NoticedSalvanas","GLOBAL",2)~ EXIT
END

IF ~~ P#KiSaScene1.1.4
SAY @384
IF ~~ THEN EXIT
END

IF ~~ P#KiSaScene1.1.3
SAY @385
IF ~~ THEN EXIT
END

IF ~~ P#KiSaScene1.2
SAY @386
IF ~~ THEN EXIT
END

IF ~~ P#KiSaScene1.1.1
SAY @387
IF ~~ THEN EXIT
END

END

CHAIN SALVANAS P#KiSaScene1.3
@388
== P#KIVJ @389
END SALVANAS 24

APPEND SALVANAS
IF WEIGHT #-1 ~Global("P#SalvanusMistake","GLOBAL",0) !InPartySlot(LastTalkedToBy,0)
Name("p#kivan",LastTalkedToBy)~ THEN BEGIN P#SalvKivan
SAY @390
IF ~~ THEN DO ~SetGlobal("P#SalvanusMistake","GLOBAL",1)~ EXTERN P#KIVJ KivanSalvanasChain1
END
END

CHAIN P#KIVJ KivanSalvanasChain1
@391
== SALVANAS  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @392
= @393
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @394
EXIT

I_C_T2 BEAST 1 P#KivanBeastmaster
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @395  
END

I_C_T2 BEAST 5 P#KivanBeastmaster
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @395  
END

I_C_T2 BEAST 6 P#KivanBeastmaster
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @395  
END

EXTEND_BOTTOM BEAST 2
IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN EXTERN P#KIVJ KivanBeastChain1
END

CHAIN P#KIVJ KivanBeastChain1
@396
== BEAST @397
= @398
= @399 
END
  IF ~~ THEN DO ~OpenDoor("DOOR19")
OpenDoor("DOOR20")
OpenDoor("DOOR21")
OpenDoor("DOOR22")
OpenDoor("DOOR23")
OpenDoor("DOOR24")
ActionOverride("Tabitha",Enemy())
Enemy()
~ EXIT

EXTEND_BOTTOM BEAST 4
IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN EXTERN P#KIVJ KivanBeastChain1
END

EXTEND_BOTTOM BEAST 7
IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN EXTERN P#KIVJ KivanBeastChain1
END

I_C_T ESCORT1 0 P#KivanEscort1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @400
== KORGANJ   IF ~InParty("korgan") InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @401
END

I_C_T ESCORT1 4 P#KivanEscort2
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @402
END

I_C_T ESCORT1 6 P#KivanEscort3
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @403
END

I_C_T ESCORT2 0 P#KivanEscort1
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @400
== KORGANJ   IF ~InParty("korgan") InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @401
END

I_C_T ESCORT2 3 P#KivanEscort2
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @404
END

I_C_T ESCORT2 5 P#KivanEscort3
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @403
END

I_C_T ESCORT3 0 P#KivanEscort1
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @400
== KORGANJ   IF ~InParty("korgan") InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @401
END

I_C_T ESCORT3 3 P#KivanEscort2
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @405
END

I_C_T ESCORT3 5 P#KivanEscort3
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @403
END


I_C_T2 HENDAK 4 P#KivanHendak1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @406  
END

I_C_T2 HENDAK 5 P#KivanHendak2
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @407  
END

I_C_T2 HENDAK 7 P#KivanHendak3
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @408  
END

I_C_T2 HENDAK 12 P#KivanHendak4
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @409  
END

I_C_T2 HENDAK 14 P#KivanHendak5
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @410  
END

I_C_T2 HENDAK 17 P#KivanHendak6
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @411  
END

I_C_T2 HENDAK 18 P#KivanHendak7
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @412  
END

I_C_T2 HIST1 10 P#KivanHist1
== P#KIVJ  IF ~Global("P#EnteredAR0411","GLOBAL",0) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @413
== HIST1   IF ~Global("P#EnteredAR0411","GLOBAL",0) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @414
== P#KIVJ  IF ~Global("P#EnteredAR0411","GLOBAL",0) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN  @415
== HIST1   IF ~Global("P#EnteredAR0411","GLOBAL",0) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @416
END

I_C_T2 LLYNIS 2 P#KivanLlynus1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @417 
END

//Area AR0404  (The riddle of the sewers) - not PR'd

//Sewers

I_C_T SEWERM1 1 P#KivanQuallo1
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @418
END

I_C_T SEWERM1 2 P#KivanQuallo2
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @419
END

I_C_T SEWERM1 4 P#KivanQuallo3
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @420
END

INTERJECT SEWERM1 8 P#KivanQuallo4
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @421
END
+~Gender(Player1,MALE)~+ @422 EXTERN P#KIVJ KiToad1
+~Gender(Player1, FEMALE)~+ @423 EXTERN P#KIVJ KiToad2
++ @424 EXTERN P#KIVJ KiToad3
++ @425 EXTERN P#KIVJ KiToad4


APPEND P#KIVJ

IF ~~ KiToad1
SAY @426
COPY_TRANS SEWERM1 8
END


IF ~~ KiToad2
SAY @427
COPY_TRANS SEWERM1 8
END

IF ~~ KiToad3
SAY @428 COPY_TRANS SEWERM1 8
END

IF ~~ KiToad4
SAY @429 COPY_TRANS SEWERM1 8
END

IF WEIGHT #990 ~
Global("P#RiddleSewer","GLOBAL",1)~ KivsnSewerRiddle
SAY @430
= @431
IF ~~ THEN DO ~SetGlobal("P#RiddleSewer","GLOBAL",2)~ EXIT
END

IF WEIGHT #990 ~
Global("P#HandSewer","GLOBAL",1)~ KiHandSewer
SAY @432
++ @433 DO ~SetGlobal("P#HandSewer","GLOBAL",2)~ EXIT
++ @434 DO ~SetGlobal("P#HandSewer","GLOBAL",2)~ EXIT
++ @435 DO ~SetGlobal("P#HandSewer","GLOBAL",2)~ EXIT
++ @436 DO ~SetGlobal("P#HandSewer","GLOBAL",2)~ EXIT
++ @437 DO ~SetGlobal("P#HandSewer","GLOBAL",2)~ EXIT
END

IF WEIGHT #990 ~
Global("P#LoverRing","GLOBAL",1)~ KiRingLovers
SAY @438
= @439
++ @440
DO ~SetGlobal("P#LoverRing","GLOBAL",2)
AddExperienceParty(5000) ActionOverride(Player1,DestroyItem("MISC5R"))
ActionOverride(Player2,DestroyItem("MISC5R"))
ActionOverride(Player3,DestroyItem("MISC5R"))
ActionOverride(Player4,DestroyItem("MISC5R"))
ActionOverride(Player5,DestroyItem("MISC5R"))
ActionOverride(Player6,DestroyItem("MISC5R"))~ EXIT
++ @441 DO ~SetGlobal("P#LoverRing","GLOBAL",2)~ EXIT
++ @442 DO ~SetGlobal("P#LoverRing","GLOBAL",2)~ EXIT
++ @443 + KivanLovers2
END

IF ~~ KivanLovers2
SAY @444
IF ~~ THEN DO ~SetGlobal("P#LoverRing","GLOBAL",2) SetGlobal("P#KivanLoversQuest","GLOBAL",1)~ EXIT
END

IF ~Global("P#LoverRing","GLOBAL",3)~ KiRingLoversRebuff
SAY @445
++ @446 DO ~ SetGlobal("P#LoverRing","GLOBAL",4)~ EXIT
++ @447 DO ~ SetGlobal("P#LoverRing","GLOBAL",4)~  + KivanLovers3
END

IF ~~ KivanLovers3
SAY @448
IF ~~ THEN EXIT
END

END

I_C_T2 SEWERM1 22 P#KivanQuallo5
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @449
END

I_C_T2 SEWERM1 23 P#KivanQuallo6
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @450
END

I_C_T2 SWSHAMAN 4 P#KivanKoSham1
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @451
END

I_C_T2 SWSHAMAN 5 P#KivanKoSham2
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @452
END

I_C_T2 SWSHAMAN 7 P#KivanKoSham2
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @452
END

I_C_T2 SWSHAMAN 8 P#KivanKoSham2
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @452
END

I_C_T2 SEWSW 2 P#KivanPool1
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN") !InParty("O#Xan")~ THEN @453
END

I_C_T2 SEWSW 6 P#KivanPool2
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @454
END

//Slaver's Stockade - AR0405 non-pr'd

I_C_T BOY3 0  P#KivanSlaveChild1
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @455
END

I_C_T GIRL2 1  P#KivanSlaveChildMoney
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN") PartyGoldGT(99) ~ THEN @456
= @457
= @458
END

I_C_T HAEGAN 0  P#KivanHaegan
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @459
END

I_C_T SLAVERM 0  P#KivanSlaverM
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @460
== SLAVERM IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @461
END

I_C_T2 HENDAK 31  P#KivanHendak
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @462
== HENDAK IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @463
END

//AR0020 - City Gates - not PR'd

I_C_T2 AESOLD 10  P#KivanBlackLotus
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @464
= @465
END

I_C_T MESSEN 2  P#KivanFlydian1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") Global("Chapter","GLOBAL",%bg2_chapter_2%)~ THEN @466
END

I_C_T MESSEN 15  P#KivanFlydian2
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") Global("Chapter","GLOBAL",%bg2_chapter_2%)~ THEN @467
== JAHEIRAJ  IF ~ InParty("jaheira")  InParty("P#kivan") InMyArea("P#KIVAN") Global("Chapter","GLOBAL",%bg2_chapter_2%)~ THEN @468
END

I_C_T2 CROTHF01 13  P#KivanAulava1
== P#KIVJ  IF ~RandomNum(2,1) InParty("P#kivan") InMyArea("P#KIVAN")~
THEN @469
= @470
END


//Lilarcor

I_C_T2 SW2H14 3  P#KivanLilarcor2
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @471
END

EXTEND_BOTTOM SW2H14 4
IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN DO ~CreateCreatureObject("P#LILCO","P#kivan",0,0,0)~ EXTERN P#KIVJ KivanPouting
END

CHAIN P#KIVJ KivanPouting
@472
== SW2H14 @473
DO ~ActionOverride("p#lilarcor",DestroySelf())~
EXIT

I_C_T2 SW2H14 5  P#KivanLilarcor4
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @474
END

I_C_T2 SW2H14 9  P#KivanLilarcor5
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @475
END


APPEND P#KIVJ

IF WEIGHT #990 
~Global("P#KivanLilEquiped","GLOBAL",1)~ Lil0
SAY @476 
IF ~~ THEN DO ~SetGlobal("P#KivanLilEquiped","GLOBAL",4)~ EXTERN  SW2H14 KivanNo
END

IF WEIGHT #990
~Global("P#KivanLilEquiped","GLOBAL",3)~ Lil1
SAY @477
IF ~~ THEN DO ~SetGlobal("P#KivanLilEquiped","GLOBAL",4)~ EXTERN  SW2H14 KivanPat
END

IF WEIGHT #990 ~Global("P#KivanLilEquiped","GLOBAL",5)~ Lil2
SAY @478
IF ~~ THEN DO ~SetGlobal("P#KivanLilEquiped","GLOBAL",6)~ EXTERN  SW2H14 KivanOgres
END

IF WEIGHT #990 
~Global("P#KivanLilEquiped","GLOBAL",7)~ Lil3
SAY @479 
++ @480 DO ~ SetGlobal("P#KivanLilEquiped","GLOBAL",8) ~ + KivanPutDown
++ @481 DO ~ SetGlobal("P#KivanLilEquiped","GLOBAL",8) ~ + KivanExcuse
++ @482 DO ~ SetGlobal("P#KivanLilEquiped","GLOBAL",8) ~ + KivanLate
++ @483 DO ~ SetGlobal("P#KivanLilEquiped","GLOBAL",8) ~ + KivanImportant
END

END

CHAIN SW2H14 KivanNo
@484
DO ~ActionOverride("p#lilarcor",DestroySelf())~
EXIT

CHAIN SW2H14 KivanPat
@485
== P#KIVJ @486
== SW2H14 @487
== P#KIVJ @488 
== SW2H14 @489 
DO ~ActionOverride("p#lilarcor",DestroySelf())~
EXIT

CHAIN SW2H14 KivanOgres
@490
== P#KIVJ @491
== SW2H14 @492
== P#KIVJ @493
== SW2H14 @494
DO ~ActionOverride("p#lilarcor",DestroySelf())~
EXIT

CHAIN P#KIVJ KivanPutDown
@495
== SW2H14 @496
== P#KIVJ @497
== SW2H14 @498 DO ~ActionOverride("p#lilarcor",DestroySelf())~
EXIT

CHAIN P#KIVJ KivanExcuse
@495
== SW2H14 @499
== P#KIVJ @500
== SW2H14 @501
DO ~ActionOverride("p#lilarcor",DestroySelf())~
EXIT

CHAIN P#KIVJ KivanLate
@495
== SW2H14 @502
DO ~ ActionOverride("p#lilarcor",DestroySelf())~  
EXIT


CHAIN P#KIVJ KivanImportant
@495
== SW2H14 @503
DO ~ ActionOverride("p#lilarcor",DestroySelf())~  
EXIT

// Acorns

APPEND P#KIVJ

IF WEIGHT #990 
~Global("P#KivanAcorns","GLOBAL",1)~ KivanDryads
SAY @504
++ @505 DO ~SetGlobal("P#KivanAcorns","GLOBAL",2)~ EXIT
+ ~Gender(Player1,MALE)~ + @506  DO ~ SetGlobal("P#KivanAcorns","GLOBAL",2)~ + KivanDryads1
+ ~Gender(Player1, FEMALE)~ + @506 DO ~ SetGlobal("P#KivanAcorns","GLOBAL",2)~ + KivanDryads2
++ @507 DO ~SetGlobal("P#KivanAcorns","GLOBAL",2)~ EXIT
END

IF ~~ KivanDryads1
SAY @508
++ @509 + KivanDryads3
++ @510 + KivanDryads4
++ @511 + KivanDryads5
END

IF ~~ KivanDryads2
SAY @508
++ @512 + KivanDryads3
++ @513 + KivanDryads6
++ @511 + KivanDryads5
END

IF ~~ KivanDryads3
SAY @514
++ @515 EXIT
++ @516 + KivanDryads5
++ @517 EXIT
END

IF ~~ KivanDryads4
SAY @518
= @519
++ @520 EXIT
++ @521 + KivanDryads3
+~CheckStatGT(Player1,9,INT)~+ @522 + KivanDryads7
END

IF ~~ KivanDryads5
SAY @523
IF ~~ EXIT
END

IF ~~ KivanDryads6
SAY @524
++ @525 DO ~IncrementGlobal("P#KivanLove","GLOBAL",-1)~ EXIT
++ @526 + KivanDryads8
++ @527 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KivanDryads9
++ @528 + KivanDryads10
END

IF ~~ KivanDryads7
SAY @529
= @530
= @531
++ @515 EXIT
++ @516 + KivanDryads5
++ @517 EXIT
END

IF ~~ KivanDryads8
SAY @518
= @519
++ @520 EXIT
++ @521 + KivanDryads3
+~CheckStatGT(Player1,9,INT)~+ @522 + KivanDryads7
END

IF ~~ KivanDryads9
SAY @532
++ @533 EXIT
++ @534 EXIT
++ @535 + KivanDryads5
END

IF ~~ KivanDryads10
SAY @536
++ @533 EXIT
++ @537 EXIT
++ @535 + KivanDryads5
END

END

//In PLAYER1.DLG proofed Mar05

I_C_T PLAYER1 0 P#KivanPlayer1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @538
END

I_C_T PLAYER1 5 P#KivanPlayer2
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @539 
END

I_C_T PLAYER1 7 P#KivanPlayer3
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @540 
END

I_C_T PLAYER1 10 P#KivanPlayer4
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @541 
END

I_C_T2 PLAYER1 12 P#KivanPlayer5
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @542 
END

I_C_T2 PLAYER1 14 P#KivanPlayer5
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @542 
END

I_C_T PLAYER1 15 P#KivanPlayer6
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @543 
END

I_C_T PLAYER1 16 P#KivanPlayer7
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @544 
END

I_C_T PLAYER1 19 P#KivanPlayer8
== P#KIVJ  IF ~RandomNum(4,1) InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @545
END

I_C_T PLAYER1 25 P#KivanPlayer9
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") Global("P#DeherianaLives","GLOBAL",1) ~ THEN @546
= @547
= @548
END

I_C_T PLAYER1 25 P#KivanPlayer9
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") Global("P#DeherianaDead","GLOBAL",1) OR(3) GlobalLT("P#KivanLove","GLOBAL",10)
Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",0)~ THEN @549
END

I_C_T PLAYER1 25 P#KivanPlayer9
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") OR(2) Global("P#DeherianaDead","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",0)
OR(3) GlobalLT("P#KivanLove","GLOBAL",10)
Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",0)~ THEN @549
END

I_C_T PLAYER1 25 P#KivanPlayer9Love
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") 
OR(2) Global("P#DeherianaDead","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",0)
GlobalGT("P#KivanLove","GLOBAL",9)
!Global("P#KivanRomanceInactive","GLOBAL",1)
~ THEN @550
= @551
DO ~SetGlobal("P#KivanRomanceComplete","GLOBAL",1)~
END

I_C_T PLAYER1 25 P#KivanPlayer9
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") GlobalGT("P#DeherianaLives","GLOBAL",1)  InParty("P#DEHER")~
THEN @552
== P#DEHJ @553
== P#KIVJ  @554
== P#DEHJ @555
== P#KIVJ  @556
== P#DEHJ @557
== P#KIVJ  @558
END

I_C_T PLAYER1 25 P#KivanPlayer9
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") GlobalGT("P#DeherianaLives","GLOBAL",1)  !InParty("P#DEHER")~
THEN @546
= @548
END

//In other NPC talks

I_C_T2 BJAHEIR 95 P#KIVJahB1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @559
END

I_C_T2 BJAHEIR 5 P#KIVJahB2
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @560 
== BJAHEIR IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @561
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @562
== BAERIE IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @563
END

I_C_T2 BJAHEIR 8 P#KIVJahB3
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @564
END

I_C_T2 BJAHEIR 14 P#KIVJahB4
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @565
END

I_C_T2 BJAHEIR 24 P#KIVJahB5
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @566
END

I_C_T2 BJAHEIR 59 P#KIVJaheirB6
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @567 
== BJAHEIR IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @568
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @569
== BJAHEIR IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @570
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @571 
= @572
END

I_C_T2 BJAHEIR 61 P#KIVJaheirB7
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @573
== BVALYGA  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @574
== BJAHEIR  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @575
END

I_C_T2 BAERIE 55 P#KivanAerieB1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @576
== BJAHEIR IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @577
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @578
== BAERIE IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @579
== BJAHEIR IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @580
== BAERIE IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @581
== BJAHEIR IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @582
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @583
== BJAHEIR IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @584
END

I_C_T2 BMINSC 1 P#KivanMinB1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @585
END

I_C_T2 BMINSC 34 P#KivanMinB2
== BMINSC IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @586
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @587
== BMINSC IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @588
= @589
== BAERIE IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @590 
== BMINSC IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @591
= @592
END

I_C_T2 BMINSC 51 P#KivanMinB3
== BMINSC IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @593
END

I_C_T2 BKELDOR 15 P#KivanKeldorB1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN") Global("P#DeherianaLives","GLOBAL",0) ~ THEN @594
== BMINSC IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @595
END

I_C_T2 BCERND 16 P#KivanCerndB1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @596
END

I_C_T2 BCERND 19 P#KivanCerndB2
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @597
END

I_C_T2 BCERND 26 P#KivanCerndB3
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @598
END

I_C_T2 BCERND 72 P#KivanCerndB4
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @599
== BCERND  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @600
END

I_C_T2 BKELDOR 17 P#KivanKeldorB2
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN") Global("P#DeherianaLives","GLOBAL",0) ~ THEN @601
== BMINSC  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @602
END

I_C_T2 BKELDOR 68 P#KivanKeldorB4
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @603
END

I_C_T2 BKELDOR 124 P#KivanKeldorB5
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @604
END

I_C_T YOSHJ 38  P#KivanYoshiSlave
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @605
== YOSHJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @606
END

I_C_T YOSHJ 133  P#KivanYoshiRenal
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @607
END

I_C_T BANOMEN 89  P#KivanAnomenLT1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @608
END

I_C_T BANOMEN 101  P#KivanAnomenLT1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @609
== BANOMEN IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @610 
END

I_C_T BANOMEN 110 P#KivanAnomenLT2
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN") Global("P#KivanAnomenLT1","GLOBAL",1)~ THEN @611
END

I_C_T BANOMEN 160 P#KivanAnomenLT5
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @612
== BANOMEN IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @613
END

I_C_T2 BANOMEN 7  P#KivanAnomenCNAerie
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @614
END

I_C_T BANOMEN 47  P#KivanAnomenVicon
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @615
END

I_C_T2 ANOMENJ 25 P#KivanAnomen25
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @616
END

I_C_T ANOMENJ 52 P#KivanAnomen52
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @617
END

I_C_T2 ANOMENJ 71 P#KivanAnomen71
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @618
END

I_C_T2 ANOMENJ 129 P#KivanAnomen129
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @619
END

I_C_T2 ANOMENJ 135 P#KivanAnomen135
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @620
END

I_C_T2 ANOMENJ 176 P#KivanAnomen176
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @621
== BANOMEN IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @622
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @623
END

I_C_T2 BANOMEN 338 P#KivanAnomen338
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @624
END

//Anomen' test check

ADD_TRANS_ACTION BANOMEN BEGIN 563 END BEGIN END
~SetGlobal("P#AnomenSaerk","GLOBAL",1)~

I_C_T BMAZZY 2  P#KivanAnomenMazzy1
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @625
== BANOMEN IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @626
= @627
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @628
== BMAZZY  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @629
END

//Windspear

//We get the Dryad's Braid

APPEND P#KIVJ

IF WEIGHT #990
~Global("P#FirkraagChallenge","GLOBAL",1)~ THEN BEGIN KivanChallenge
SAY @630
++ @631 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#FirkraagChallenge","GLOBAL",2)~ + KiChallenge0.1
++ @632 DO ~SetGlobal("P#FirkraagChallenge","GLOBAL",2)~ + KiChallenge0
++ @633 DO ~SetGlobal("P#FirkraagChallenge","GLOBAL",2)~ + KiChallenge0.2
END

IF ~~ KiChallenge0.1
SAY @634
IF ~~ THEN EXIT
END

IF ~~ KiChallenge0.2
SAY @635
= @636
++ @637 + KiChallenge1.1
++ @638 + KiChallenge1.2
++ @639 + KiChallenge1.3
++ @640 + KiChallenge1.4
END

IF ~~ KiChallenge0
SAY @641
= @636
++ @637 + KiChallenge1.1
++ @638 + KiChallenge1.2
++ @639 + KiChallenge1.3
++ @640 + KiChallenge1.4
END

IF ~~ KiChallenge1.4
SAY @642
IF ~~ THEN EXIT
END

IF ~~ KiChallenge1.3
SAY @643
IF ~~ THEN EXIT
END

IF ~~ KiChallenge1.2
SAY @644
IF ~~ THEN EXIT
END

IF ~~ KiChallenge1.1
SAY @645
IF ~~ THEN EXIT
END

END

I_C_T IDRYAD1 13 P#DryadBraidMale
== IDRYAD1 IF ~Gender(Player1,MALE) InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @646
DO ~GiveItemCreate("P#KISTR",Player1,0,0,0)~
END

I_C_T IDRYAD1 13 P#DryadBraidFemale
== IDRYAD1 IF ~Gender(Player1,FEMALE) InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @647
DO ~GiveItemCreate("P#KISTR",Player1,0,0,0)~
END

I_C_T TAZOK 3 P#Again
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @648
== TAZOK IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @649
END

//After Grove was poisoned Kivan turns enemy like all good guys

I_C_T2 CEFALD04 4 P#DruidEvil
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @650
DO ~ActionOverride("P#KIVAN",LeaveParty()) ActionOverride("P#KIVAN",Enemy())~
END

//Captain Arat gave us arrows

I_C_T2 KPCAPT01 11 P#KivanArat
== P#KIVJ  IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @651
END


APPEND ~BELMIN~

IF ~See("p#kivan")
InParty("P#kivan")
InMyArea("P#KIVAN")
RandomNum(2,1)
Global("P#BelminKivan","AR0700",0)~ THEN BEGIN P#BelmKiv
  SAY @652
  IF ~~ THEN DO ~SetGlobal("P#BelminKivan","AR0700",1)~ EXTERN ~P#KIVJ~ KivBelm1
END

IF ~~ THEN BEGIN KivBelm2
  SAY @653 
  IF ~~ THEN EXTERN ~P#KIVJ~ KivBelm3
END

IF ~~ THEN BEGIN KivBelm4
  SAY @654
  IF ~~ THEN EXTERN ~P#KIVJ~ KivBelm5
END
END

APPEND ~P#KIVJ~

IF ~~ KivBelm1
SAY @655 
IF ~~ THEN EXTERN BELMIN KivBelm2
END

IF ~~ KivBelm3
SAY @656 
IF ~~ THEN EXTERN BELMIN KivBelm4
END

IF ~~ KivBelm5
SAY @657 
IF ~~ THEN EXIT
END
END


