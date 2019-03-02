BEGIN P#DEHJ

//news about Deheriana
I_C_T PPAPHRIL 1 P#DeherianaAphrilTalk
== BP#KIV IF ~InParty("P#KIVAN") Gender(Player1,FEMALE) GlobalGT("P#KivanLove","GLOBAL",3)~ THEN @0
== PPAPHRIL IF ~InParty("P#KIVAN") Gender(Player1,FEMALE) GlobalGT("P#KivanLove","GLOBAL",3)~ THEN @1
== BP#KIV IF ~InParty("P#KIVAN") Gender(Player1,FEMALE) GlobalGT("P#KivanLove","GLOBAL",3)~ THEN @2
== PPAPHRIL IF ~InParty("P#KIVAN") Gender(Player1,FEMALE) GlobalGT("P#KivanLove","GLOBAL",3)~ THEN @3
== BP#KIV IF ~InParty("P#KIVAN") Gender(Player1,FEMALE) GlobalGT("P#KivanLove","GLOBAL",3)~ THEN @4
== PPAPHRIL IF ~InParty("P#KIVAN") Gender(Player1,FEMALE) GlobalGT("P#KivanLove","GLOBAL",3)~ THEN @5
== BP#KIV IF ~InParty("P#KIVAN") Gender(Player1,FEMALE) GlobalGT("P#KivanLove","GLOBAL",3)~ THEN @6
DO ~SetGlobal("P#DeherianaDead","GLOBAL",1) SetGlobal("P#DeherianaLives","GLOBAL",0) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1800)~
END

I_C_T PPAPHRIL 1 P#DeherianaAphrilTalk
== BP#KIV IF ~InParty("P#KIVAN") OR(2) !GlobalGT("P#KivanLove","GLOBAL",3) Gender(Player1,MALE)~ THEN @0
== PPAPHRIL IF ~InParty("P#KIVAN") OR(2) !GlobalGT("P#KivanLove","GLOBAL",3) Gender(Player1,MALE)~ THEN @7
== BP#KIV IF ~InParty("P#KIVAN") OR(2) !GlobalGT("P#KivanLove","GLOBAL",3) Gender(Player1,MALE)~ THEN @2
== PPAPHRIL IF ~InParty("P#KIVAN") OR(2) !GlobalGT("P#KivanLove","GLOBAL",3) Gender(Player1,MALE)~ THEN @8
DO ~SetGlobal("P#DeherianaLives","GLOBAL",1) SetGlobal("P#DeherianaDead","GLOBAL",0)~
END

//Kivan departs
I_C_T SUELLE2 3 KivanDie1
== BP#KIV IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @9
== SUELLE2 IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @10
== BP#KIV IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @11
== SUELLE2 IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @12
== BP#KIV IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @13
== SUELLE2 IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @14
DO ~ActionOverride("P#KIVAN",GivePartyAllEquipment()) ActionOverride("P#KIVAN", LeaveParty()) ActionOverride("P#KIVAN",DestroySelf())~
END

I_C_T SUELLE2 6 KivanDie2
== BP#KIV IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @9
== SUELLE2 IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @10
== BP#KIV IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @11
== SUELLE2 IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @12
== BP#KIV IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @13
== SUELLE2 IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @14
DO ~ActionOverride("P#KIVAN",GivePartyAllEquipment()) ActionOverride("P#KIVAN", LeaveParty()) ActionOverride("P#KIVAN",DestroySelf())~
END

//Kivan+Deh depart
I_C_T SUELLE2 3 KivanDie3
== P#DEHJ IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) GlobalLT("P#PCSupport","GLOBAL",2) GlobalLT("P#CerndSupport","GLOBAL",2) GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @15
== BP#KIV IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) GlobalLT("P#PCSupport","GLOBAL",2) GlobalLT("P#CerndSupport","GLOBAL",2) GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @16
= @17
== SUELLE2 IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @14
DO ~ActionOverride("P#KIVAN",GivePartyAllEquipment()) ActionOverride("P#DEHER",GivePartyAllEquipment()) ActionOverride("P#KIVAN", LeaveParty()) ActionOverride("P#KIVAN",DestroySelf()) ActionOverride("P#DEHER", LeaveParty()) ActionOverride("P#DEHER",DestroySelf())~
END

//Kivan+Deh depart
I_C_T SUELLE2 6 KivanDie4
== P#DEHJ IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) GlobalLT("P#PCSupport","GLOBAL",2) GlobalLT("P#CerndSupport","GLOBAL",2) GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @15
== BP#KIV IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) GlobalLT("P#PCSupport","GLOBAL",2) GlobalLT("P#CerndSupport","GLOBAL",2) GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @16
= @18
== SUELLE2 IF ~InParty("P#KIVAN") OR(2) Global("P#DeherianaLives","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",5)~ THEN @14
DO ~ActionOverride("P#KIVAN",GivePartyAllEquipment()) ActionOverride("P#DEHER",GivePartyAllEquipment()) ActionOverride("P#KIVAN", LeaveParty()) ActionOverride("P#KIVAN",DestroySelf()) ActionOverride("P#DEHER", LeaveParty()) ActionOverride("P#DEHER",DestroySelf())~
END

//DehHealed
I_C_T SUELLE2 3 KivanHE1
== P#DEHJ IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @19
= @20
== BP#KIV IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @21
== P#DEHJ IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @22
== BP#KIV IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @23
== SUELLE2 IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @24
DO ~SetGlobal("P#DeherianaLives","GLOBAL",6)~
END

I_C_T SUELLE2 6 KivanHE2
== P#DEHJ IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @19
= @20
== BP#KIV IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @21
== P#DEHJ IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @22
== BP#KIV IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @23
== SUELLE2 IF ~InParty("P#KIVAN") InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) OR(3) !GlobalLT("P#PCSupport","GLOBAL",2) !GlobalLT("P#CerndSupport","GLOBAL",2) !GlobalLT("P#AerieSupport","GLOBAL",2)~ THEN @24
DO ~SetGlobal("P#DeherianaLives","GLOBAL",6)~
END

//resurrection possibility 1 proofed Mar05 //

EXTEND_BOTTOM SUDEMIN 45
IF ~Global("P#DeherianaLives","GLOBAL",1) InParty("P#KIVAN")~ THEN EXTERN BP#KIV AskDehLive
IF ~!Global("P#DeherianaLives","GLOBAL",1)InParty("P#KIVAN")~ THEN DO ~SetGlobal("DerminJob","GLOBAL",1)~ UNSOLVED_JOURNAL @25 EXIT
END

EXTEND_BOTTOM SUDEMIN 58
IF ~Global("P#DeherianaDead","GLOBAL",1) InParty("P#KIVAN")~ THEN SOLVED_JOURNAL @26 EXTERN BP#KIV AskDehDead
IF ~!Global("P#DeherianaDead","GLOBAL",1) InParty("P#KIVAN")~ THEN DO ~EscapeArea()~ SOLVED_JOURNAL @26 EXIT
END

CHAIN
IF ~~ THEN BP#KIV AskDehLive
@27
== SUDEMIN @28
== BP#KIV @29
== SUDEMIN @30
== BP#KIV @31
== SUDEMIN @32
END
++ @33 EXTERN BP#KIV KiDeparts
++ @34 EXTERN SUDEMIN KiRessurection
++ @35 EXTERN BP#KIV KiStay
+ ~Race(Player1,ELF)~ + @36 EXTERN BP#KIV KiArgumentE
+ ~!Race(Player1,ELF)~ + @36 EXTERN BP#KIV KiArgument

APPEND BP#KIV

IF ~~ KiArgument
SAY @37
++ @38 + KiARG1
++ @39 + KiARG2
++ @40 + KiDeparts
END

IF ~~ KiArgumentE
SAY @41
++ @42 + KiARG1
++ @39 + KiARG2
++ @40 + KiDeparts
END

IF ~~ KiARG1
SAY @43
++ @44 EXTERN SUDEMIN KiRessurection1
++ @45 + KiARG3
++ @46 + KiDeparts
END

IF ~~ KiARG2
SAY @47
++ @48 EXTERN SUDEMIN KiRessurection1
++ @49 + KiARG3
++ @46 + KiDeparts
END

IF ~~ KiARG3
SAY @50
++ @51 + KiStay
++ @52 + KiDeparts
END

END

CHAIN BP#KIV AskDehDead
@27
== SUDEMIN @28
== BP#KIV @53
== SUDEMIN @54
== BP#KIV @55
== SUDEMIN @56
= @57
== BP#KIV @58
== SUDEMIN @59
= @60
= @61
== BP#KIV @62
== SUDEMIN @63
DO ~EscapeArea()~
EXIT

CHAIN SUDEMIN KiRessurection1
@64
= @65
= @66
== BP#KIV @67
END SUDEMIN KiRessurection

CHAIN
IF ~~ THEN BP#KIV KiDeparts
@68
== SUDEMIN @69
== BP#KIV @70
== SUDEMIN @71
END
IF ~~ THEN DO ~ActionOverride("P#KIVAN", LeaveParty()) ActionOverride("P#KIVAN",DestroySelf()) SetGlobal("DerminJob","GLOBAL",1)~
UNSOLVED_JOURNAL @72 EXIT


CHAIN
IF ~~ THEN BP#KIV KiStay
@73
== SUDEMIN @74
END
IF ~~ THEN DO ~SetGlobal("DerminJob","GLOBAL",1)~ UNSOLVED_JOURNAL @75
EXIT

CHAIN
IF ~~ THEN SUDEMIN KiRessurection
@76
== BP#KIV @77
== SUDEMIN @78
END
IF ~~ THEN DO ~
DialogInterrupt(FALSE)
SetInterrupt(FALSE)
SetGlobal("P#DeherianaLives","GLOBAL",2)
SetGlobal("P#DehWelcome","GLOBAL",1)
SetGlobal("DerminJob","GLOBAL",1)
PlaySound("CAS_P06")
Wait(1)
CreateVisualEffectObject("SPGENHLB",Myself)
Wait(1)
CreateVisualEffectObject("SPFDEATH","P#Kivan")
Wait(1)
CreateCreature("P#DEHER", [-1.-1],0)
ActionOverride("P#DEHER",PlayDead(60))
CreateVisualEffectObject("SPFINODI","P#DEHER")
Wait(1)
DialogInterrupt(TRUE)
SetInterrupt(TRUE)
StartDialogueNoSet([PC])
~ UNSOLVED_JOURNAL @79
EXIT

CHAIN
IF WEIGHT #-1
~Global("P#DehWelcome","GLOBAL",1)~ THEN SUDEMIN JoinDeh
@80
== BP#KIV @81
= @82
END
IF ~~ THEN DO ~SetGlobal("P#DehWelcome","GLOBAL",2)~ EXTERN P#DEHER P#DehWelcome


//DeherianaHealed
CHAIN
IF WEIGHT #990
~Global("P#DeherianaLives","GLOBAL",4)~
THEN P#DEHJ DEPCHealed
@83 
== BP#KIV @21
== P#DEHJ @22
== BP#KIV @23
DO ~SetGlobal("P#DeherianaLives","GLOBAL",6)~
EXIT

///SupportTalks

APPEND P#DEHJ

IF WEIGHT #990 ~Global("P#DEPCTalk","GLOBAL",2)~ THEN BEGIN DEPC1
SAY @84
++ @85 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ EXIT
++ @86 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.1
++ @87 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.2
+ ~Gender(Player1, FEMALE)~ + @88 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.3
END

IF ~~ DEPC1.1
SAY @89
++ @90 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.4
++ @91 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.5
++ @92 EXIT
END

IF ~~ DEPC1.2
SAY @93
++ @94 EXIT
++ @90 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.4
++ @91 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.5
++ @92 EXIT
END


IF ~~ DEPC1.3
SAY @89
++ @95EXIT
++ @96 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.6
++ @97 + DEPC1.7
END

IF ~~ DEPC1.4
SAY @98
+~Race(Player1, ELF)~ + @99 + DEPC1.8E
+~!Race(Player1, ELF)~ + @99 + DEPC1.8NE
++ @100 + DEPC1.9
++ @101 EXIT
END

IF ~~ DEPC1.5
SAY @102
++ @103 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ EXIT
++ @104 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ EXIT
++ @105 EXIT
END

IF ~~ DEPC1.6
SAY @106
+ ~Gender(Player1,FEMALE)~ + @107 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ + DEPC1.10
+ ~Gender(Player1,MALE)~ + @103 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ EXIT
++ @104 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ EXIT
++ @105 EXIT
END


IF ~~ DEPC1.7
SAY @108
+ ~Gender(Player1,FEMALE)~ + @109 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ +DEPC1.10
+ ~Gender(Player1,MALE)~ + @110 DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ +DEPC1.14
++ @111 EXIT
++ @112 + DEPC1.6
END

IF ~~ DEPC1.8E
SAY @113
IF ~~ THEN EXIT
END

IF ~~ DEPC1.8NE
SAY @114
= @115
++ @116 EXIT
++ @117 EXIT
++ @118 EXIT
END

IF ~~ DEPC1.9
SAY @119
IF ~~ THEN GOTO DEPC1.5
END

IF ~~ DEPC1.10
SAY @120
++ @121 + DEPC1.11
++ @122 EXIT
++ @123 + DEPC1.12
++ @124 + DEPC1.13
END

IF ~~ DEPC1.11
SAY @125
IF ~~ THEN DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ EXIT
END

IF ~~ DEPC1.12
SAY @126
IF ~~ THEN EXIT
END

IF ~~ DEPC1.13
SAY @127
IF ~~ THEN DO ~IncrementGlobal("P#PCSupport","GLOBAL",1)~ EXIT
END

IF ~~ DEPC1.14
SAY @128
IF ~~ THEN EXIT
END

END

CHAIN
IF WEIGHT #990 ~InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
InParty("P#KIVAN")
Global("P#DEAETalk","GLOBAL",2)
Global("P#AEDE1","LOCALS",0)~ THEN AERIEJ P#AEDE1
@129
DO ~SetGlobal("P#AEDE1","LOCALS",1) IncrementGlobal("P#AerieSupport","GLOBAL",1)~
== BP#DEH @130
== BAERIE @131
== BP#DEH @132
== BAERIE @133
== BP#DEH @134
== BAERIE @135
== BP#DEH @136
== BAERIE @137
== BP#DEH @138
== BAERIE @139
== BP#DEH @140
== BAERIE @141
EXIT

CHAIN
IF WEIGHT #999 ~InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
InParty("P#KIVAN")
Global("P#DEAETalk","GLOBAL",4)
Global("P#AEDE2","LOCALS",0)~ THEN AERIEJ P#AEDE2
@142
DO ~SetGlobal("P#AEDE2","LOCALS",1) IncrementGlobal("P#AerieSupport","GLOBAL",1)~
== BP#DEH @143
== BAERIE @144
== BP#DEH @145
== BAERIE @146
EXIT

CHAIN
IF WEIGHT #999 ~InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
InParty("P#KIVAN")
Global("P#DEAETalk","GLOBAL",6)
Global("P#AEDE3","LOCALS",0)~ THEN AERIEJ P#AEDE3
@147
DO ~SetGlobal("P#AEDE3","LOCALS",1) IncrementGlobal("P#AerieSupport","GLOBAL",1)~
== BP#DEH @148
== BAERIE @149
== BP#DEH @150
== BAERIE @151
== BP#DEH @152
== BAERIE @153
== BP#DEH @154
== BAERIE @155
== BP#DEH @156
== BAERIE @157
== BP#DEH @158
EXIT

CHAIN
IF WEIGHT #999 ~InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
InParty("P#KIVAN")
Global("P#DECETalk","GLOBAL",2)
Global("P#CEDE1","LOCALS",0)~ THEN P#DEHJ P#CEDE1
@159
DO ~SetGlobal("P#CEDE1","LOCALS",1) IncrementGlobal("P#CerndSupport","GLOBAL",1)~
== BCERND @160
== BP#DEH @161
== BCERND @162
== BP#DEH @163
== BCERND @164
== BP#DEH @165
== BCERND @166
== BP#DEH @167
EXIT

CHAIN
IF WEIGHT #999 ~InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
InParty("P#KIVAN")
Global("P#DECETalk","GLOBAL",4)
Global("P#CEDE2","LOCALS",0)~ THEN P#DEHJ P#CEDE2
@168
DO ~SetGlobal("P#CEDE2","LOCALS",1) IncrementGlobal("P#CerndSupport","GLOBAL",1)~
== BCERND @169
== BP#DEH @170
== BCERND @171
== BP#DEH @172
== BCERND @173
= @174
== BP#DEH @175
EXIT

CHAIN
IF WEIGHT #999 ~InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
InParty("P#KIVAN")
Global("P#DECETalk","GLOBAL",6)
Global("P#CEDE3","LOCALS",0)~ THEN P#DEHJ CEDE3
@176
DO ~SetGlobal("CEDE3","LOCALS",1) IncrementGlobal("P#CerndSupport","GLOBAL",1)~
== BCERND @177
== BP#DEH @178
== BCERND @179
== BP#DEH @180
== BCERND @181
== BP#DEH @182
== BCERND @183
EXIT

CHAIN
IF WEIGHT #999 ~InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
Global("P#DEKITalk","GLOBAL",2)
Global("P#KIDE1","LOCALS",0)~ THEN P#KIVJ P#KIDE1
@184
DO ~SetGlobal("P#KIDE1","LOCALS",1)~
== BP#DEH @185 
== BP#KIV @186
== BP#DEH @187
== BP#KIV @188
EXIT

CHAIN
IF WEIGHT #999 ~InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
InParty("P#KIVAN")
Global("P#DEKITalk","GLOBAL",4)
Global("P#KIDE2","LOCALS",0)~ THEN P#KIVJ P#KIDE2
@189
= @389
DO ~SetGlobal("P#KIDE2","LOCALS",1)~
== BP#DEH @190 
== BP#KIV @191
= @192
== BP#DEH @193
== BP#KIV @194
== BP#DEH @195
== BP#KIV @196
== BP#DEH @197
EXIT

CHAIN
IF WEIGHT #999 ~InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
InParty("P#KIVAN")
Global("P#DEKITalk","GLOBAL",6)
Global("P#KIDE3","LOCALS",0)~ THEN P#KIVJ P#KIDE3
@198
DO ~SetGlobal("P#KIDE3","LOCALS",1)~
== BP#DEH @199
== BP#KIV @200
== BP#DEH @201
== BP#KIV @202
== BP#DEH @203
== BP#KIV @204
EXIT

//Deheriana Banter SoA

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEAEP1","LOCALS",0)~ THEN BP#DEH DEPAE1
@205
DO ~SetGlobal("P#DEAEP1","LOCALS",1)~
== BAERIE @206
== BP#DEH @207
== BAERIE @208
== BP#DEH @209
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEANP1","LOCALS",0)~ THEN BANOMEN DEANP1
@210
DO ~SetGlobal("P#DEANP1","LOCALS",1)~
== BP#DEH @211
== BANOMEN @212
== BP#DEH @213
= @214
== BANOMEN @215
== BP#DEH @216
== BANOMEN @217
== BP#DEH @218
== BANOMEN @219
== BP#DEH @220
== BANOMEN @221
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DECEP1","LOCALS",0)~ THEN BP#DEH DEPCE1
@222
DO ~SetGlobal("P#DECEP1","LOCALS",1)~
== BCERND @223
== BP#DEH @224
== BCERND @225
== BP#DEH @226
= @227
= @228
= @229
= @230
= @231
= @232
= @233
= @234
= @235
== BCERND @236
EXIT



CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])
InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEPED1","LOCALS",0)~ THEN BEDWIN DEPED1
@237
DO ~SetGlobal("P#DEPED1","LOCALS",1)~
== BP#DEH @238
== BEDWIN @239
== BP#DEH @240
== BEDWIN @241
== BP#DEH @242
== BEDWIN @243
== BP#DEH @244
== BEDWIN @245
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0)
InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEIMP1","LOCALS",0)~ THEN BP#DEH DEPIM1
@246
DO ~SetGlobal("P#DEIMP1","LOCALS",1)~
== IMOEN2J @247
== BP#DEH @248
== IMOEN2J @249
== BP#DEH @250
== IMOEN2J @251
== BP#DEH @252
== IMOEN2J @253
== BP#DEH @254
== IMOEN2J @255
= @256
== BP#DEH @257
== IMOEN2J @258
= @259
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEJAP1","LOCALS",0)~ THEN BP#DEH DEPJA1
@260
DO ~SetGlobal("P#DEJAP1","LOCALS",1)~
== BJAHEIR @261
== BP#DEH @262
== BJAHEIR @263
== BP#DEH @264
== BJAHEIR @265
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEPJAN1","LOCALS",0)~ THEN BJAN DEPJAN1
@266
DO ~SetGlobal("P#DEPJAN1","LOCALS",1)~
== BP#DEH @267
== BJAN @268
== BP#DEH @269
== BJAN @270
== BP#DEH @271
== BJAN @272
== BP#DEH @273
== BJAN @274
== BP#DEH @275
== BJAN @276
== BP#DEH @277
== BJAN @278
= @279
== BP#DEH @280
== BJAN @281
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEPHA1","LOCALS",0)~ THEN BHAERDA DEPHA1
@282
= @283
DO ~SetGlobal("P#DEPHA1","LOCALS",1)~
== BP#DEH @284
== BHAERDA @285
== BP#DEH @286
== BHAERDA @287
== BP#DEH @288
== BHAERDA @289
== BP#DEH @290
== BHAERDA @291
== BP#DEH @292
== BHAERDA @293
== BP#DEH @294
== BHAERDA @295
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("KELDORN")
See("KELDORN")
!StateCheck("KELDORN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEKEP1","LOCALS",0)~ THEN BP#DEH DEPKE1
@296
DO ~SetGlobal("P#DEKEP1","LOCALS",1)~
== BKELDOR @297
== BP#DEH @298
== BKELDOR @299
== BP#DEH @300
== BKELDOR @301
== BP#DEH @302
== BKELDOR @303
== BP#DEH @304
== BKELDOR @305
= @306
== BP#DEH @307
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("MAZZY")
See("MAZZY")
!StateCheck("MAZZY",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEMAP1","LOCALS",0)~ THEN BP#DEH DEPMA1
@308
DO ~SetGlobal("P#DEMAP1","LOCALS",1)~
== BMAZZY @309
== BP#DEH @310
== BMAZZY @311
== BP#DEH @312
== BMAZZY @313
== BP#DEH @314
EXIT


CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",STATE_SLEEPING)
InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEMIP1","LOCALS",0)~   THEN BP#DEH DEPMI1
@315
DO ~SetGlobal("P#DEMIP1","LOCALS",1)~
== BMINSC @316
== BP#DEH @317
== BMINSC @318
== BP#DEH @319
== BMINSC @320
== BP#DEH @321
= @322
== BP#KIV @323
== BMINSC @324
= @325
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("NALIA")
See("NALIA")
!StateCheck("NALIA",STATE_SLEEPING)
Global("NaliaKeepPlot","GLOBAL",1)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DENAP1","LOCALS",0)~  THEN BP#DEH DEPNA1
@326
DO ~SetGlobal("P#DENAP1","LOCALS",1)~
== BNALIA @327
== BP#DEH @328
== BNALIA @329
== BP#DEH @330
== BNALIA @331
== BP#DEH @332
== BNALIA @333
== BP#DEH @334
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("VALYGAR")
See("VALYGAR")
!StateCheck("VALYGAR",STATE_SLEEPING)
InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEVAP1","LOCALS",0)~ THEN BP#DEH DEPVA1
@335
= @336
DO ~SetGlobal("P#DEVAP1","LOCALS",1)~
== BVALYGA @337
== BP#DEH @338
== BVALYGA @339
== BP#DEH @340
== BVALYGA @341
== BP#DEH @342
== BVALYGA @343
== BP#DEH @344
== BVALYGA @345
== BP#DEH @346
== BVALYGA @347
== BP#DEH @348
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("VICONIA")
See("VICONIA")
!StateCheck("VICONIA",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEVIP1","LOCALS",0)~ THEN BP#DEH DEPVI1
@349
DO ~SetGlobal("P#DEVIP1","LOCALS",1)~
== BVICONI @350
== BP#DEH @351
== BVICONI @352
= @353
== BP#DEH @354
== BVICONI @355
== BP#DEH @356
== BVICONI @357
= @358
EXIT

CHAIN
IF ~~ THEN BP#KIV ResChain
@359
== SUDEMIN @360
= @361
= @362
== BP#KIV @363
END P#DEHER DehWelcome2

BEGIN P#DEHER

APPEND P#DEHER 

IF ~Global("P#DEHERIANA","GLOBAL",8)~ THEN BEGIN MyPain
SAY @364
IF ~~ THEN EXIT
END

IF ~InParty("P#KIVAN")~ P#DehWelcome
SAY @365 
IF ~~ THEN EXTERN BP#KIV ResChain
END

IF ~~ DehWelcome2
SAY @366 
++ @367 DO ~SetGlobal("P#DehWelcome","GLOBAL",3) ActionOverride("P#KIVAN",LeaveParty()) ActionOverride("P#KIVAN",EscapeArea()) ActionOverride("P#DEHER",EscapeArea())~ EXIT
++ @368 DO ~SetGlobal("P#DehWelcome","GLOBAL",3) SetGlobal("DeherJoined","GLOBAL",1)ActionOverride("P#DEHER",JoinParty())~ EXIT
++ @369 DO ~SetGlobal("P#DehWelcome","GLOBAL",3) SetGlobal("DeherJoined","GLOBAL",1) ActionOverride("P#DEHER",JoinParty())~ EXIT
++ @370 DO ~SetGlobal("P#DehWelcome","GLOBAL",3) SetGlobal("DeherJoined","GLOBAL",1)ActionOverride("P#DEHER",JoinParty())~ EXIT
++ @371 EXIT
END


END

BEGIN P#DEHP
APPEND P#DEHP
IF ~Global("DeherJoined","GLOBAL",1)~ THEN BEGIN KickOut
SAY @372 
IF ~~ THEN REPLY @373 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @374 GOTO LeaveWKivan
END

IF ~~ THEN BEGIN LeaveWKivan
SAY @375
IF ~~ THEN DO ~ActionOverride("P#Kivan",LeaveParty()) ActionOverride("P#KIVAN", EscapeArea()) LeaveParty() EscapeArea()~ EXIT
END

IF ~InParty("P#Kivan") NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDeheriana
SAY @376 
IF ~~ THEN REPLY @377 DO ~SetGlobal("DeherJoined","GLOBAL",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @378 GOTO RefusedToTake
IF ~~ THEN REPLY @379 GOTO DropKivan
END

IF ~Global("P#DehWelcome","GLOBAL",2)~ THEN BEGIN RefusedToTake
SAY @380
IF ~~ THEN EXIT
END

IF ~Global("P#DehWelcome","GLOBAL",2)~ DropKivan
SAY @381 
IF ~~ THEN DO ~ActionOverride("P#KIVAN",LeaveParty()) EscapeArea() ActionOverride("P#KIVAN",EscapeArea())~
EXIT
END

IF ~!InParty("P#Kivan") NumTimesTalkedToGT(0)~ THEN BEGIN NoKivan
SAY @382 
+ ~!Dead("P#Kivan") ~ + @383 + NoKivanJoin
+ ~Dead("P#Kivan")~ + @384 + KivDead
++ @385 + Thankyou
END

IF ~~ NoKivanJoin
SAY @386
IF ~~ THEN EXIT
END

IF ~~ KivDead
SAY @387
IF ~~ THEN DO ~DestroySelf()~
EXIT
END

IF ~~ Thankyou
SAY @388
IF ~~ THEN EXIT
END

END

//Deheriana Tree of Life

//Tree of Life
INTERJECT PLAYER1 33 P#TOLDeheriana
== PLAYER1 IF ~InParty("P#DEHER")
InMyArea("P#DEHER")
~ THEN @666
END
++ @667 EXTERN P#DEHJ ToLDeh1
++ @668 EXTERN P#DEHJ ToLDeh2
++ @669 EXTERN P#DEHJ ToLDeh3

APPEND P#DEHJ

IF ~~ THEN BEGIN ToLDeh1
SAY @663 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToLDeh2
SAY @664 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToLDeh3
SAY @665 COPY_TRANS PLAYER1 33
END
END

I_C_T HELLJON 7 P#DeherHellJon
== P#DEHJ IF ~InParty("P#Deher") !Dead("P#Deher")
InMyArea("P#Deher") ~ THEN @670
END

I_C_T HELLJON 8 P#DeherHellJon
== P#DEHJ IF ~InParty("P#Deher") !Dead("P#Deher")
InMyArea("P#Deher") ~ THEN @670
END

I_C_T HELLJON 9 P#DeherHellJon
== P#DEHJ IF ~InParty("P#Deher") !Dead("P#Deher")
InMyArea("P#Deher") ~ THEN @670
END

I_C_T HELLJON 10 P#DeherHellJon
== P#DEHJ IF ~InParty("P#Deher") !Dead("P#Deher")
InMyArea("P#Deher") ~ THEN @670
END
