//Banters

BEGIN BP#KIV

//All Scripted Banter

//Aerie: after you have taken a helmet from sniferblin//

CHAIN
IF WEIGHT #900 ~
Global("P#KIAerieUD","GLOBAL",1)~ THEN AERIEJ KIAerieUD1
@0
DO ~SetGlobal("P#KIAerieUD","GLOBAL",2)~
== BP#KIV @1
== BAERIE @2
== BP#KIV @3
== BAERIE @4
== BP#KIV @5
== BAERIE @6
== BP#KIV @7
== BAERIE @8
== BP#KIV @9
== BAERIE @10
== BP#KIV @11
EXIT

//Edwin - Dream Scripts

CHAIN
IF WEIGHT #999 ~
Global("P#KIPED1","LOCALS",1)~ THEN EDWINJ P#ED1
@12
DO ~SetGlobal("P#KIPED1","LOCALS",2) RealSetGlobalTimer("P#KivanRestTimer","GLOBAL",1800)~
== P#KIVJ @13
== EDWINJ @14
== P#KIVJ @15
== EDWINJ @16
== P#KIVJ @17
== EDWINJ @18
== P#KIVJ @19
== EDWINJ @20 DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #999 ~
Global("P#KIPED1","LOCALS",3)~ THEN EDWINJ P#ED2
@21
DO ~SetGlobal("P#KIPED1","LOCALS",4) RealSetGlobalTimer("P#KivanRestTimer","GLOBAL",1800)~
== P#KIVJ @22
== EDWINJ @23
== P#KIVJ @24
== EDWINJ @25
== P#KIVJ @26
== EDWINJ @27
== P#KIVJ @28
== EDWINJ @29 DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #999 ~
Global("P#KIPED1","LOCALS",5)~ THEN EDWINJ P#ED3
@30
DO ~SetGlobal("P#KIPED1","LOCALS",6) RealSetGlobalTimer("P#KivanRestTimer","GLOBAL",1800)~
== P#KIVJ @31
== EDWINJ @32
== P#KIVJ @33
== EDWINJ @34 DO ~RestParty()~
EXIT

//At the sight of the guardian golems in Nalia's castle

CHAIN
IF WEIGHT #999 ~
Global("P#EdwinGolem","GLOBAL",1)~ THEN EDWINJ P#ED4
@35
DO ~SetGlobal("P#EdwinGolem","GLOBAL",2)~
== BP#KIV @36
== BEDWIN @37
== BEDWIN IF ~!InParty("minsc")~ THEN @38
== BEDWIN @39
== BP#KIV @40
== BEDWIN @41
== BP#KIV @42
== BEDWIN @43
= @44
== BP#KIV @45
== BEDWIN @46
EXIT

//Jaheira, after SD warning

CHAIN
IF WEIGHT #990 ~
Global("P#JaheiraSD","GLOBAL",1)~ THEN P#KIVJ KIJA7
@47
DO ~SetGlobal("P#JaheiraSD","GLOBAL",2)~
== BJAHEIR @48
== BP#KIV @49
== BJAHEIR @50
== BP#KIV @51
== BJAHEIR @52
== BP#KIV @53
== BJAHEIR @54
== BP#KIV @55
= @56
== BJAHEIR @57
EXIT

///Mazzy - Dream Script

CHAIN
IF WEIGHT #999 ~CombatCounter(0) !See([ENEMY])InParty("MAZZY")
See("MAZZY")
!StateCheck("MAZZY",STATE_SLEEPING)
OR(2)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#DeherianaLives","GLOBAL",5)
Global("P#MazzyTost","GLOBAL",1)~ THEN P#KIVJ P#MazzyTost
@58
DO ~SetGlobal("P#MazzyTost","GLOBAL",2) RealSetGlobalTimer("P#KivanRestTimer","GLOBAL",1800)~
== BMAZZY @59
== BP#KIV @60
== BMAZZY @61
== BP#KIV @62
== BMAZZY @63
== BP#KIV @64
== BMAZZY @65
== BP#KIV @66
== BJAHEIR IF ~InParty("JAHEIRA")~ THEN @67
END
++ @68 DO ~RestParty()~ EXIT
++ @69 EXTERN BP#KIV MazzyTost1
++ @70 EXTERN BP#KIV MazzyTost2
++ @71 DO ~RestParty()~ EXIT

APPEND BP#KIV 

IF ~~ MazzyTost1
SAY @72
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ MazzyTost2
SAY @73
IF ~~ THEN DO ~RestParty()~ EXIT
END
END

//Nalia's

CHAIN
IF WEIGHT #999 ~
Global("P#KINA2","LOCALS",1)
InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)~ THEN P#KIVJ P#KINA2
@74
DO ~SetGlobal("P#KINA2","LOCALS",2) RealSetGlobalTimer("P#KivanRestTimer","GLOBAL",1800)~
== BNALIA @75
== BP#KIV @76
== BNALIA @77
= @78
== BP#KIV @79
== BNALIA @80
DO ~RestParty()~
EXIT

CHAIN
IF WEIGHT #999 ~
Global("P#NaliaTorgalDies","GLOBAL",1)
Global("P#KINA1","LOCALS",0)
InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)~ THEN BP#KIV P#KINA1
@81
DO ~SetGlobal("P#KINA1","LOCALS",1) SetGlobal("P#NaliaTorgalDies","GLOBAL",2)~
== BNALIA @82
= @83
== BP#KIV @84
== BNALIA @85
== BP#KIV @86
EXIT

//Korgan

CHAIN
IF WEIGHT #999 ~
Global("P#KorganCellar","GLOBAL",1)~ THEN KORGANJ P#KIKO2
@87
DO ~SetGlobal("P#KorganCellar","GLOBAL",2)~
== BNALIA IF ~InParty("Nalia")~ THEN @88
== BP#KIV @89
== BKORGAN @90
== BP#KIV @91
== BKORGAN @92
== BP#KIV @93
== BKORGAN @94
== BP#KIV @95
== BNALIA IF ~InParty("Nalia")~ THEN @96
= @97
== BP#KIV IF ~InParty("Nalia")~ THEN @98
== BNALIA IF ~InParty("Nalia")~ THEN @99
== BKORGAN IF ~InParty("Nalia")~ THEN @100
EXIT

CHAIN
IF WEIGHT #999 ~
Global("P#KorganTor","GLOBAL",1)~ THEN KORGANJ P#KIKO3
@101
DO ~SetGlobal("P#KorganTor","GLOBAL",2)~
== BP#KIV @102
== BKORGAN @103
== BP#KIV @104
== BKORGAN @105
== BP#KIV @106
== BKORGAN @107
EXIT

CHAIN
IF WEIGHT #999 ~
Global("P#KIKO4","GLOBAL",1)~ THEN KORGANJ P#KIKO4
@108
DO ~SetGlobal("P#KIKO4","GLOBAL",2) RealSetGlobalTimer("P#KivanRestTimer","GLOBAL",1800)~
== BP#KIV @109
== BKORGAN @110
== BP#KIV @111
== BKORGAN @112
== BP#KIV @113
== BKORGAN @114
END
++ @115 DO ~ActionOverride("P#KIVAN", LeaveParty()) ActionOverride("korgan", LeaveParty()) ActionOverride("P#KIVAN", EscapeArea()~ EXIT
++ @116 EXTERN BKORGAN P#KIKO5
++ @117 DO ~ActionOverride("P#KIVAN", LeaveParty()) ActionOverride("P#KIVAN", EscapeArea()~ EXIT
++ @118 DO ~RestParty()~ EXIT


APPEND BKORGAN

IF ~~ P#KIKO5
SAY @119
IF ~~ THEN DO ~ActionOverride("korgan", LeaveParty()) ActionOverride("korgan", Enemy())~
EXIT
END
END

///////////////////////////////////////////////
/////Non-Scripted Banter///////////////////////
///////////////////////////////////////////////

//////////////////////////////////////////////Aerie

CHAIN
IF WEIGHT #1000 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIAE1","LOCALS",0)~ THEN BAERIE KIAE1
@120 
DO ~SetGlobal("P#KIAE1","LOCALS",1)~
== BAERIE IF ~Race(Player1,ELF)~ THEN @121
== BP#KIV @122
== BAERIE @123
== BP#KIV @124
== BAERIE IF ~!Race(Player1,ELF)~ THEN @125
== BAERIE IF ~Race(Player1,ELF)~ THEN @126
== BP#KIV IF ~!Race(Player1,ELF)~ THEN @127
== BP#KIV IF ~Race(Player1,ELF)~ THEN @128
== BAERIE IF ~Race(Player1,ELF) Gender(Player1, MALE)~ THEN @129
== BP#KIV IF ~Race(Player1,ELF) Gender(Player1, MALE)~ THEN @130
EXIT

CHAIN
IF WEIGHT #1001 ~
!InParty("P#DEHER")
CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIAENM1","LOCALS",0)~ THEN BAERIE KIAENM1
@131 
DO ~SetGlobal("P#KIAENM1","LOCALS",1)~
== BP#KIV @132
== BAERIE @133
== BP#KIV @134
== BAERIE @135
== BP#KIV @136
== BAERIE @137
== BP#KIV @138
EXIT


CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIAE3","LOCALS",0)~ THEN BAERIE KIAE3
@139 
DO ~SetGlobal("P#KIAE3","LOCALS",1)~
== BP#KIV @140
== BAERIE @141
== BP#KIV @142
== BAERIE @143
== BP#KIV IF ~!Dead("tazok")~ THEN @144 
== BP#KIV IF ~Dead("tazok")~ THEN @145
== BAERIE @146
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)  Global("P#DeherianaLives","GLOBAL",0)
Global("P#KIAE4","LOCALS",0)~ THEN BAERIE KIAE4
@147 
DO ~SetGlobal("P#KIAE4","LOCALS",1)~
== BP#KIV @148
== BAERIE @149
== BP#KIV @150
== BAERIE @151
== BP#KIV @152 /*Do you want these to both be plural, or does Kivan have a sister somewhere to whom he is referring?*/
== BAERIE @153
== BP#KIV @154
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
Global("P#KIAE5","LOCALS",0)~ THEN BP#KIV KIAE5
@155 
DO ~SetGlobal("P#KIAE5","LOCALS",1)~
== BAERIE @156
== BP#KIV @157
== BAERIE @158
== BP#KIV @159
== BAERIE @160
== BP#KIV @161
== BAERIE @162
== BP#KIV @163
== BAERIE @164
== BP#KIV @165
== BAERIE @166
EXIT

CHAIN
IF WEIGHT #1005 ~CombatCounter(0) !See([ENEMY])InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
Global("P#KIAE8","LOCALS",0)~ THEN BP#KIV KIAE5
@167 
DO ~SetGlobal("P#KIAE8","LOCALS",1)~
== BAERIE @168
== BP#KIV @169
== BAERIE @170
== BP#KIV @171
== BAERIE @172
== BP#KIV @173
EXIT

CHAIN
IF WEIGHT #1006 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)  Global("P#DeherianaDead","GLOBAL",1)
Global("P#KIAENM2","LOCALS",0)~ THEN BAERIE KIAENM2
@174 
DO ~SetGlobal("P#KIAENM2","LOCALS",1)~
== BP#KIV @175
= @176
== BAERIE @177
== BP#KIV @178
== BAERIE @179
== BP#KIV @180
== BAERIE @181
EXIT

CHAIN
IF WEIGHT #1006 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",2) InParty("P#DEHER")
Global("P#KIAE6","GLOBAL",0)~ THEN BAERIE KIAE6
@182 
DO ~SetGlobal("P#KIAE6","GLOBAL",1)~
== BP#KIV @183
== BAERIE @184
== BP#KIV @148
== BAERIE @185
== BP#KIV @186
== BAERIE @187
== BP#KIV @188
== BAERIE @189
== BP#KIV @190
EXIT

CHAIN
IF WEIGHT #1007 ~CombatCounter(0) !See([ENEMY])InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",2) InParty("X#DEHER")
Global("P#KIAE6","GLOBAL",1)
Global("P#KIAE7","LOCALS",0)~ THEN BP#KIV KIAE5
@191 
DO ~SetGlobal("P#KIAE7","LOCALS",1)~
== BAERIE @192
== BP#KIV @193
== BAERIE @194
== BP#KIV @195
EXIT




////////////////////////////////////////////////////////Anomen


//Anomen

CHAIN
IF WEIGHT #1000 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Alignment("ANOMEN", LAWFUL_NEUTRAL)
Global("P#KIAN1.1","LOCALS",0)~ THEN BANOMEN KIAN1.1
@196
DO ~SetGlobal("P#KIAN1.1","LOCALS",1)~
== BP#KIV @197
== BANOMEN @198
== BP#KIV @199
== BANOMEN @200
== BP#KIV @201
== BANOMEN @202
== BP#KIV @203
== BANOMEN @204 
= @205
= @206
== BP#KIV @207
== BANOMEN @208
== BP#KIV @209
== BANOMEN @210
== BP#KIV @211
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Alignment("ANOMEN", LAWFUL_NEUTRAL)
Global("P#KIANNM1","LOCALS",0)~ THEN BANOMEN KIANNM1
@212
DO ~SetGlobal("P#KIANNM1","LOCALS",1)~
== BP#KIV @213
== BANOMEN @214
== BP#KIV @215
== BANOMEN @216
== BP#KIV @217
== BANOMEN @218
== BP#KIV @219
== BANOMEN @220
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Alignment("ANOMEN", LAWFUL_NEUTRAL)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("AnomenRomanceActive","GLOBAL",1)
Global("P#KIAN1.2","LOCALS",0)~ THEN BANOMEN KIAN1.2
@221
DO ~SetGlobal("P#KIAN1.2","LOCALS",1)~
== BP#KIV @222
END
IF ~Race(Player1,ELF) ~ THEN EXTERN BANOMEN AnomenKivEarly1
IF ~!Race(Player1,ELF)~ THEN EXTERN BANOMEN AnomenKivEarly2

APPEND BANOMEN

IF ~~ AnomenKivEarly1
SAY @223
++ @224 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXTERN BP#KIV KIAN1.2.1
++ @225 + KIAN1.2.2
++ @226 + KIAN1.2.3
++ @227 + KIAN1.2.4
END

IF ~~ AnomenKivEarly2
SAY @228
++ @224 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXTERN BP#KIV KIAN1.2.1
++ @225 + KIAN1.2.2
++ @226 + KIAN1.2.3
++ @227 + KIAN1.2.4
END
END

CHAIN3 BANOMEN KIAN1.2.2
@229
== BP#KIV @230
EXIT

CHAIN3 BANOMEN KIAN1.2.3
@231
== BP#KIV @232
END
++ @233 EXTERN BP#KIV KIAN1.2.5
++ @234 DO ~IncrementGlobal("P#KivanLove","GLOBAL", -1)~ EXTERN BP#KIV KIAN1.2.6
++ @235 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXTERN BP#KIV KIAN1.2.7

CHAIN3 BANOMEN KIAN1.2.4
@236
== BP#KIV @237
END
++ @238 EXTERN BP#KIV KIAN1.2.5
++ @239 DO ~IncrementGlobal("P#KivanLove","GLOBAL", -1)~ EXTERN BP#KIV KIAN1.2.8
++ @240 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXTERN BP#KIV KIAN1.2.7

APPEND BP#KIV

IF ~~ KIAN1.2.1
SAY @241
IF ~~ THEN EXIT
END

IF ~~ KIAN1.2.5
SAY @242
IF ~~ THEN EXIT
END

IF ~~ KIAN1.2.6
SAY @243
IF ~~ THEN EXIT
END

IF ~~ KIAN1.2.7
SAY @244
IF ~~ THEN EXIT
END

IF ~~ KIAN1.2.8
SAY @245
IF ~~ THEN EXIT
END
END

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Alignment("ANOMEN", LAWFUL_GOOD)
Global("AnomenIsKnight","GLOBAL",1)
Global("P#KIAN2.1","LOCALS",0)~ THEN BANOMEN KIAN2.1
@246
DO ~SetGlobal("P#KIAN2.1","LOCALS",1)~
== BP#KIV @247
== BANOMEN @248
== BP#KIV @249
== BANOMEN @250
== BP#KIV @251
== BANOMEN @252
== BP#KIV @253
EXIT

APPEND ANOMENJ

IF WEIGHT #-2
~Global("P#AnomenKivanConflict","LOCALS",1)~ THEN BEGIN AmonenConflictKivan
SAY @254
++ @255 DO ~SetGlobal("P#AnomenKivanConflict","LOCALS",2)~ + ANKICO1.1
++ @256 DO ~SetGlobal("P#AnomenKivanConflict","LOCALS",2)~ + ANKICO1.2
++ @257 DO ~SetGlobal("P#AnomenKivanConflict","LOCALS",2)~ + ANKICO1.2
++ @258 DO ~SetGlobal("P#AnomenKivanConflict","LOCALS",2)~ + ANKICO1.3
END

IF ~~ ANKICO1.1
SAY @259
IF ~~ THEN DO ~SetGlobal("P#KivanRomanceInactive", "GLOBAL",1) SetGlobal("P#KivanLove","GLOBAL",-100)~
EXIT
END

IF ~~ ANKICO1.3
SAY @260
IF ~~ THEN DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) SetGlobal("P#KivanLove","GLOBAL",-100)~
EXIT
END

IF ~~ ANKICO1.2
SAY @261
++ @262 + ANKICO1.4
++ @263 + ANKICO1.5
++ @264 + ANKICO1.6
++ @842 + ANKICO1.7
END

IF ~~ ANKICO1.4
SAY @265
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) SetGlobal("P#KivanRomanceInactive","GLOBAL",0) SetGlobal("P#KivanLove","GLOBAL",0)~
EXIT
END

IF ~~ ANKICO1.5
SAY @266
= @267
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) SetGlobal("P#KivanRomanceInactive","GLOBAL",0) SetGlobal("P#KivanLove","GLOBAL",0)~
EXIT
END

IF ~~ ANKICO1.6
SAY @268
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) SetGlobal("P#KivanRomanceInactive","GLOBAL",0) SetGlobal("P#KivanLove","GLOBAL",0)~
EXIT
END

IF ~~ ANKICO1.7
SAY @268
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) SetGlobal("P#KivanRomanceInactive","GLOBAL",0) SetGlobal("P#KivanLove","GLOBAL",10)~
EXIT
END

END


CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Alignment("ANOMEN", CHAOTIC_NEUTRAL)
Global("DomainPaladinBattle","GLOBAL",1)
Global("AmomenIsNotKnight","GLOBAL",1)
Global("P#KIAN3.1","LOCALS",0)~ THEN BANOMEN KIAN3.1
@269
DO ~SetGlobal("P#KIAN3.1","LOCALS",1)~
== BP#KIV @270
== BANOMEN @271
== BP#KIV @272
== BANOMEN @273
== BP#KIV @274
== BANOMEN @275
== BP#KIV @276
== BANOMEN @277
EXIT


 
CHAIN
IF WEIGHT #1005 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Alignment("ANOMEN", LAWFUL_GOOD)
Global("AnomenIsKnight","GLOBAL",1)
Global("P#KIANNM2","LOCALS",0)~ THEN BANOMEN KIANNM2
@278
DO ~SetGlobal("P#KIANNM2","LOCALS",1)~
== BP#KIV @279
== BANOMEN @280
== BP#KIV @281
== BANOMEN @282
== BP#KIV @283
== BANOMEN @284
== BP#KIV @285
== BANOMEN @286
EXIT

//////////////////////////////////////////////////////////Cernd



CHAIN
IF WEIGHT #1000 ~CombatCounter(0) !See([ENEMY])InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
Global("P#KICE1","LOCALS",0)~ THEN BP#KIV KICE1
@287 
DO ~SetGlobal("P#KICE1","LOCALS",1)~
== BCERND @288
== BP#KIV @289
== BCERND @290
== BP#KIV @291
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
Global("P#KICE8","LOCALS",0)~ THEN BP#KIV KICE8
@292 
DO ~SetGlobal("P#KICE8","LOCALS",1)~
== BP#KIV @293
== BCERND @294
= @295
= @296
= @297
== BP#KIV @298
== BCERND @299
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Dead("cefald01")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KICE2","LOCALS",0)~ THEN BCERND KICE2
@300 
DO ~SetGlobal("P#KICE2","LOCALS",1)~
== BP#KIV @301
== BCERND @302
== BP#KIV @303
== BCERND @304
== BP#KIV @305
== BCERND @306
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
Global("CerndNanny","GLOBAL",1)
Global("P#KICE4","LOCALS",0)~ THEN BP#KIV KICE4
@307 
DO ~SetGlobal("P#KICE4","LOCALS",1)~
== BCERND @308 
== BP#KIV @309
== BCERND @310
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KICE6","LOCALS",0)~ THEN BCERND KICE6
@311 
DO ~SetGlobal("P#KICE6","LOCALS",1)~
== BP#KIV @312
== BCERND @313
== BP#KIV @314
== BCERND @315
== BP#KIV @316
EXIT


CHAIN
IF WEIGHT #1005 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
AreaType(FOREST)
Global("P#KICE9","LOCALS",0)~ THEN BCERND KICE9
@317  
DO ~SetGlobal("P#KICE9","LOCALS",1)~
== BP#KIV @318
== BHAERDA IF ~InParty("haerdalis")~ THEN @319
== BCERND @320
== BP#KIV @321
== BCERND @322
== BP#KIV @323
== BCERND @324
== BP#KIV @325
== BCERND @326
== BP#KIV @327
EXIT

CHAIN
IF WEIGHT #1006 ~CombatCounter(0) !See([ENEMY])InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",2)
Global("P#KICE7","LOCALS",0)~ THEN BP#KIV KICE7
@328
DO ~SetGlobal("P#KICE7","LOCALS",1)~
== BCERND @329
== BP#KIV @330
== BCERND @331
== BP#KIV @332
== BCERND @333
EXIT

//Deheriana - In Deheriana's File

//////////////////////////////////Edwin//////////////////

//Edwin

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIED1","LOCALS",0)~ THEN BEDWIN KIED1
@334 
DO ~SetGlobal("P#KIED1","LOCALS",1)~
== BP#KIV @335
== BEDWIN @336
= @337 
== BP#KIV @338
== BEDWIN @339
= @340
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIED2","LOCALS",0)~ THEN BEDWIN KIED2
@341 
DO ~SetGlobal("P#KIED2","LOCALS",1)~
== BP#KIV @342
== BEDWIN @343
== BP#KIV @344
== BEDWIN @345
== BP#KIV @346
EXIT

///////////////////////Haer-Dalis///////////////

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("HAERDALIS")
See("HAERDALIS")
!StateCheck("HAERDALIS",STATE_SLEEPING)
Global("P#KIHA1","LOCALS",0)~ THEN BP#KIV KIHA1
@347
DO ~SetGlobal("P#KIHA1","LOCALS",1)~
== BHAERDA @348
== BP#KIV @349
== BHAERDA @350
== BP#KIV @351
== BHAERDA @352
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY]) InParty("P#KIVAN")
See("P#KIVAN")
AreaType(FOREST)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIHA6","GLOBAL",0)~ THEN BHAERDA KIHA6
@353
DO ~SetGlobal("P#KIHA6","GLOBAL",1)~
== BP#KIV @354
== BHAERDA @355
== BP#KIV @356
== BHAERDA @357
== BP#KIV @358
== BHAERDA @359
== BP#KIV @148
== BHAERDA @360
== BP#KIV @361
== BHAERDA @362
== BP#KIV @363
== BHAERDA @364  
== BP#KIV @365
== BHAERDA @366
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY]) InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
AreaType(CITY)
Global("P#KIHA7","GLOBAL",0)~ THEN BHAERDA KIHA7
@367
DO ~SetGlobal("P#KIHA7","GLOBAL",1)~
== BP#KIV @368
== BHAERDA @369
== BP#KIV @370
== BHAERDA @371
== BP#KIV @372
== BHAERDA @373
== BP#KIV @374
== BHAERDA @375
== BP#KIV @376
== BHAERDA @377
== BP#KIV @378
== BHAERDA @379
== BP#KIV @380
== BHAERDA @381
== BP#KIV @382
== BHAERDA @383
== BP#KIV @384
== BHAERDA @385
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KIHA4","LOCALS",0)~ THEN BHAERDA KIHA4
@386 
DO ~SetGlobal("P#KIHA4","LOCALS",1)~
== BP#KIV @387
== BHAERDA @388
== BP#KIV @389
== BHAERDA @390
= @391
== BP#KIV @392
== BHAERDA @393
== BP#KIV @394
EXIT

CHAIN
IF WEIGHT #1005 ~CombatCounter(0) !See([ENEMY])InParty("HAERDALIS")
See("HAERDALIS")
!StateCheck("HAERDALIS",STATE_SLEEPING)
GlobalGT("PlanarPrison","GLOBAL",0)
Global("P#KIHA5","LOCALS",0)~ THEN BP#KIV KIHA5
@395
DO ~SetGlobal("P#KIHA5","LOCALS",1)~
== BHAERDA @396
== BP#KIV @397
== BHAERDA @398
= @399
 == BP#KIV @400
== BHAERDA @401
= @402
== BP#KIV @403
== BHAERDA @404
== BP#KIV @405
== BHAERDA @406
= @407
= @408
== BP#KIV @409
== BHAERDA @410
== BP#KIV @411
== BHAERDA @412
== BP#KIV @413
== BHAERDA @414
== BP#KIV @415
== BHAERDA @416
== BP#KIV @417
== BHAERDA @418
== BP#KIV @419 
== BHAERDA @420
EXIT

///Imoen

//Imoen

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KIIM1","LOCALS",0)~ THEN BP#KIV KIIM1
@421
DO ~SetGlobal("P#KIIM1","LOCALS",1)~
== IMOEN2J @422 
== BP#KIV @423
== IMOEN2J @424
== BP#KIV @425
== IMOEN2J @426
== BP#KIV @427
== IMOEN2J @428
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
Global("P#KIIM2","LOCALS",0)~ THEN BP#KIV KIIM2
@429
DO ~SetGlobal("P#KIIM2","LOCALS",1)~
== IMOEN2J @430 
== BP#KIV @431
== IMOEN2J @432
== BP#KIV @433
== IMOEN2J @434
== BP#KIV @435
== IMOEN2J @436
== BP#KIV @437
== IMOEN2J @438
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])
InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
Global("P#KIIM5","LOCALS",0)~ THEN BP#KIV KIIM5
@439
DO ~SetGlobal("P#KIIM5","LOCALS",1)~
== IMOEN2J @440
== BP#KIV @441
== IMOEN2J @442
== BP#KIV @443
== IMOEN2J @444
== BP#KIV @445
== IMOEN2J @446
== BP#KIV @447
== IMOEN2J @448
== BP#KIV @449
== IMOEN2J @450
== BP#KIV @378
== IMOEN2J IF ~InParty("Jaheira")~ THEN @451
== IMOEN2J IF ~!InParty("Jaheira")~ THEN @452
== BP#KIV @453
== IMOEN2J @454
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",3)
Global("P#KIIM3","LOCALS",0)~ THEN BP#KIV KIIM3
@455
DO ~SetGlobal("P#KIIM3","LOCALS",1)~
== IMOEN2J @456
= @457 
== BP#KIV @458
== IMOEN2J @459
== BP#KIV @460
== IMOEN2J @461
== BP#KIV @462
== IMOEN2J @463
== BP#KIV @464
== IMOEN2J @465
== BP#KIV @466
EXIT

/// Jaheira

//Jaheira

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_3%)
Global("P#KIJA1","LOCALS",0)~ THEN BJAHEIR KIJA1
@467 
DO ~SetGlobal("P#KIJA1","LOCALS",1)~
== BP#KIV @468
== BJAHEIR @469
== BP#KIV @470
== BJAHEIR @471
== BP#KIV @472
== BJAHEIR @473
== BP#KIV @474
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("JaheiraNotHarper","GLOBAL",1)
Global("P#KIJA2","LOCALS",0)~ THEN BJAHEIR KIJA2
@475 
DO ~SetGlobal("P#KIJA2","LOCALS",1)~
== BP#KIV @476
== BJAHEIR @477
== BP#KIV @478
== BJAHEIR @479
== BP#KIV @480
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KIJA3","LOCALS",0)~ THEN BP#KIV KIJA3
@481
DO ~SetGlobal("P#KIJA3","LOCALS",1)~
== BJAHEIR @482
== BP#KIV @483
== BJAHEIR @484
== BP#KIV @485
== BJAHEIR @486
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KIJA4","LOCALS",0)~ THEN BP#KIV KIJA4
@487
DO ~SetGlobal("P#KIJA4","LOCALS",1)~
== BJAHEIR @488
== BP#KIV @489
== BJAHEIR @490
== BP#KIV @491
== BJAHEIR @492
EXIT

CHAIN
IF WEIGHT #1000 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",2)
InParty("P#DEHER")
Global("P#KIJA5","LOCALS",0)~ THEN BJAHEIR KIJA5
@493 
DO ~SetGlobal("P#KIJA5","LOCALS",1)~
== BP#KIV @494
== BJAHEIR @495
= @496
= @497
== BP#KIV @498
== BJAHEIR @499
== BP#KIV @500
== BJAHEIR @501
= @502
== BP#DEH @503
== BJAHEIR @504
EXIT

CHAIN
IF WEIGHT #1006 ~CombatCounter(0) !See([ENEMY])
InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("Jaheira",STATE_SLEEPING)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%)
AreaType(OUTDOOR)
Global("P#KIJA6","LOCALS",0)~ THEN BP#KIV KIJA6
@505
DO ~SetGlobal("P#KIJA6","LOCALS",1)~
== BJAHEIR @506
== BP#KIV @507
== BJAHEIR @508
== BP#KIV @509
== BJAHEIR @510
== BP#KIV @511
== BJAHEIR IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN @512
== BJAHEIR IF ~Global("WorkingForAran","GLOBAL",1)~ THEN @513
== BJAHEIR @514
== BP#KIV @515
== BJAHEIR @516
EXIT

// After char's transformation to Slayer

CHAIN
IF WEIGHT #1007 ~CombatCounter(0) !See([ENEMY])
InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("Jaheira",STATE_SLEEPING)
OR(4) 
Global("P#KivanPlayer1","GLOBAL",1)
Global("P#KivanPlayer1","GLOBAL",2)
Global("P#KivanPlayer1","GLOBAL",3)
Global("P#KivanPlayer1","GLOBAL",4)
Global("P#KIJA8","LOCALS",0)~ THEN BP#KIV KIJA8
@517
DO ~SetGlobal("P#KIJA8","LOCALS",1)~
== BJAHEIR @518
== BP#KIV @519
== BJAHEIR @520
EXIT

//turned into drow -

CHAIN
IF WEIGHT #1000 ~CombatCounter(0) !See([ENEMY])
InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("PlayerLooksLikeDrow","GLOBAL",1) 
OR(11)
AreaCheck("AR2200")
AreaCheck("AR2201")// Temple in Ust Natha
AreaCheck("AR2202")// Inn in Ust Natha 1st Floor
AreaCheck("AR2203")// Inn in Ust Natha; 2nd Floor
AreaCheck("AR2204")// House in Ust Natha
AreaCheck("AR2205")// House in Ust Natha
AreaCheck("AR2206")// Qilue's House in Ust Natha
AreaCheck("AR2207")// Deirex's Tower in Ust Natha
AreaCheck("AR2208")// Jarlaxle's House wherever
AreaCheck("AR2209")// Jae'llat's House
AreaCheck("AR2210")//Deirex's Cave
Global("P#KIJA9","LOCALS",0)~ THEN BJAHEIR KIJA9
@521
DO ~SetGlobal("P#KIJA9","LOCALS",1)~
== BP#KIV @522
== BJAHEIR @523
== BP#KIV @524
== BJAHEIR @525
== BP#KIV @526
== BVICONI  IF ~InParty("viconia")~ THEN @527
== BJAHEIR IF ~InParty("viconia")~ THEN @528
== BJAHEIR @529
== BP#KIV @530
== BJAHEIR @531
== BP#KIV @532
== BJAHEIR @533
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KIJAN1","LOCALS",0)~ THEN BJAN KIJAN1
@534 
DO ~SetGlobal("P#KIJAN1","LOCALS",1)~
== BP#KIV @535
== BJAN @536
== BP#KIV @537
== BJAN @538
= @539
== BP#KIV @540
== BJAN @541
== BP#KIV @542
== BJAN @543
== BP#KIV @544
== BJAN @545
== BP#KIV @546
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIJAN5","LOCALS",0)~ THEN BJAN KIJAN5
@547 
DO ~SetGlobal("P#KIJAN5","LOCALS",1)~
== BP#KIV @548
== BJAN @549
== BP#KIV @550
== BJAN @551
== BP#KIV @552
== BJAN @553
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIJAN6","LOCALS",0)~ THEN BJAN KIJAN6
@554
DO ~SetGlobal("P#KIJAN6","LOCALS",1)~
== BP#KIV @555
== BJAN @556
== BP#KIV @557
== BJAN @558
== BP#KIV @559
== BJAN @560
= @561 
== BP#KIV @562
== BJAN @563
== BP#KIV @564
== BJAN @565
== BP#KIV @566
== BJAN @567
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
OR(3)
Global("JanLissaPlot","GLOBAL",10)
Global("JanLissaPlot","GLOBAL",11)
Global("JanLissaPlot","GLOBAL",14)
Global("P#KIJAN3","LOCALS",0)~ THEN BJAN KIJAN3
@568 
DO ~SetGlobal("P#KIJAN3","LOCALS",1)~
== BP#KIV @569
== BJAN @570
== BP#KIV @571
== BJAN @572
== BP#KIV @573
== BJAN @574
EXIT

CHAIN
IF WEIGHT #1005 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KIJAN4","LOCALS",0)~ THEN BJAN KIJAN4
@575 
DO ~SetGlobal("P#KIJAN4","LOCALS",1)~
== BP#KIV @576
== BJAN @577
== BP#KIV @578
== BJAN @579
== BP#KIV @580
== BJAN @581
== BP#KIV @582
== BJAN @583
EXIT

///Keldorn

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("LadyMaria","GLOBAL",0)
Global("P#KIKE1","LOCALS",0)~ THEN BKELDOR KIKE1
@584
DO ~SetGlobal("P#KIKE1","LOCALS",1)~
== BP#KIV @585
== BKELDOR @500
== BP#KIV @586
== BKELDOR @587
== BP#KIV @588
== BKELDOR @589
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
Global("P#KIKE3","LOCALS",0)~ THEN BKELDOR KIKE3
@590
DO ~SetGlobal("P#KIKE3","LOCALS",1)~
== BP#KIV @591
== BKELDOR @592
== BP#KIV @593
== BKELDOR @594
== BP#KIV @595
== BKELDOR @596
== BP#KIV @597
== BKELDOR @598
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("KELDORN")
See("KELDORN")
!StateCheck("KELDORN",STATE_SLEEPING)
OR(3)
Global("LadyMaria","GLOBAL",1)
Global("KeldornLeave","GLOBAL",2)
Global("WilliamDead","GLOBAL",1)
Global("P#KIKE4","LOCALS",0)~ THEN BP#KIV KIKE4
@599
DO ~SetGlobal("P#KIKE4","LOCALS",1)~
== BKELDOR @600
== BP#KIV @601
== BKELDOR @602
== BP#KIV @603
== BKELDOR @604
== BP#KIV @605
== BKELDOR @606
== BP#KIV @607
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIKE6","LOCALS",0)~ THEN BKELDOR KIKE6
@608
DO ~SetGlobal("P#KIKE6","LOCALS",1)~
== BP#KIV @609
== BKELDOR @610
== BP#KIV @611
== BKELDOR @327
== BP#KIV @612
== BKELDOR @613
== BP#KIV @614
== BKELDOR @615
== BP#KIV @616
== BKELDOR @617
EXIT

CHAIN
IF WEIGHT #1005 ~CombatCounter(0) !See([ENEMY])InParty("KELDORN")
See("KELDORN")
!StateCheck("KELDORN",STATE_SLEEPING)
Global("LadyMaria","GLOBAL",0)
Global("P#KIKE5","LOCALS",0)~ THEN BP#KIV KIKE5
@618
DO ~SetGlobal("P#KIKE5","LOCALS",1)~
== BKELDOR @619
== BP#KIV @620
== BKELDOR @621
== BP#KIV @622
== BKELDOR @623
= @624
= @625
== BP#KIV @626
== BKELDOR @627
= @628
== BP#KIV @629
== BKELDOR @630
EXIT

///Mazzy

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIMA1","LOCALS",0)~ THEN BMAZZY KIMA1
@631
DO ~SetGlobal("P#KIMA1","LOCALS",1)~
== BP#KIV @632
== BMAZZY @633
== BP#KIV @634
== BMAZZY @635
== BP#KIV @636
== BMAZZY @637
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIMA4","LOCALS",0)~ THEN BMAZZY KIMA4
@638
DO ~SetGlobal("P#KIMA4","LOCALS",1)~
== BP#KIV @639
== BMAZZY @640
== BP#KIV @641
== BMAZZY @642
== BP#KIV @643
== BMAZZY @644
== BP#KIV @645
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
InParty("valygar")
!Dead("valygar")
Global("P#KIMA5","LOCALS",0)~ THEN BMAZZY KIMA5
@646
= @647
DO ~SetGlobal("P#KIMA5","LOCALS",1)~
== BP#KIV @648
== BMAZZY @649
== BP#KIV @650
== BMAZZY @651
== BP#KIV @652
== BMAZZY @653
== BP#KIV @654
== BMAZZY @655
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIMA2","LOCALS",0)~ THEN BMAZZY KIMA2
@656
DO ~SetGlobal("P#KIMA2","LOCALS",1)~
== BP#KIV @657 
== BMAZZY @658
== BP#KIV @659
== BMAZZY @660
== BP#KIV @661
== BMAZZY @662
== BP#KIV @663
== BMAZZY @664
= @665
= @666
= @667
= @668
== BP#KIV @669
== BMAZZY @670
== BP#KIV @671
== BMAZZY @672
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIMI1","LOCALS",0)~ THEN BMINSC KIMI1
@673
DO ~SetGlobal("P#KIMI1","LOCALS",1)~
== BP#KIV @674
== BMINSC @675
== BP#KIV @676
== BMINSC @677
== BP#KIV @678
== BMINSC @679
== BP#KIV @680
== BMINSC @681
= @682
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
Global("P#KIMI2","LOCALS",0)~ THEN BMINSC KIMI2
@683
DO ~SetGlobal("P#KIMI2","LOCALS",1)~
== BP#KIV @684
== BMINSC @685
== BP#KIV @686
== BMINSC @687
== BP#KIV @688
== BMINSC @689
== BP#KIV @690
== BMINSC @691
== BP#KIV @692
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIMI3","LOCALS",0)~ THEN BMINSC KIMI3
@693
DO ~SetGlobal("P#KIMI3","LOCALS",1)~
== BP#KIV @694
== BMINSC @695
== BP#KIV @696
= @697
== BMINSC @698
== BP#KIV @699
== BMINSC @700
EXIT


CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIMI4","LOCALS",0)~ THEN BMINSC KIMI4
@701 
DO ~SetGlobal("P#KIMI4","LOCALS",1)~
== BP#KIV @702
== BMINSC @703
== BP#KIV @704
== BMINSC @705 
EXIT

//////////////Nalia

CHAIN
IF WEIGHT #1002 ~
InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KINA3","LOCALS",0)~ THEN BNALIA P#KINA3
@706
DO ~SetGlobal("P#KINA3","LOCALS",1)~
== BP#KIV @707
== BNALIA @708
= @709
= @710 
= @711
= @712
== BP#KIV @713
== BNALIA @714
== BP#KIV @715
= @716
== BNALIA @717
== BP#KIV @718
= @719
= @720
== BNALIA @721
== BP#KIV @722
= @723
= @724
EXIT

CHAIN
IF WEIGHT #1002 ~
InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KINA4","LOCALS",0)~ THEN BNALIA P#KINA4
@725
DO ~SetGlobal("P#KINA4","LOCALS",1)~
== BP#KIV @726
== BNALIA @727
== BP#KIV @728
== BNALIA @729
== BP#KIV @730
== BNALIA @731
= @732
== BP#KIV @733
== BNALIA @734
== BP#KIV @735
== BNALIA @736
== BP#KIV @737
== BNALIA @738
EXIT

//////////////////////////Valygar

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("VALYGAR")
See("VALYGAR")
!StateCheck("VALYGAR",STATE_SLEEPING)
Global("P#KIVA1","LOCALS",0)~ THEN BP#KIV KIVA1
@739
DO ~SetGlobal("P#KIVA1","LOCALS",1)~
== BVALYGA @740
== BP#KIV @741
== BVALYGA @742
== BP#KIV @743
== BVALYGA @744
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIVA2","LOCALS",0)~ THEN BVALYGA KIVA2
@745
DO ~SetGlobal("P#KIVA2","LOCALS",1)~
== BP#KIV @746
== BVALYGA @747
== BP#KIV @748
== BVALYGA @749
= @750
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIVA3","LOCALS",0)~ THEN BVALYGA KIVA3
@751
DO ~SetGlobal("P#KIVA3","LOCALS",1)~
== BP#KIV @752
== BVALYGA @753
== BP#KIV @754
== BVALYGA @755
== BP#KIV @756
== BVALYGA @757
== BP#KIV @758
== BVALYGA @759
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("VALYGAR")
See("VALYGAR")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("VALYGAR",STATE_SLEEPING)
Global("P#KIVA4","LOCALS",0)~ THEN BP#KIV KIVA4
@760
DO ~SetGlobal("P#KIVA4","LOCALS",1)~
== BVALYGA @761
== BP#KIV @762
== BVALYGA @763
= @764
== BP#KIV @765
== BVALYGA @766
== BP#KIV @767
EXIT

CHAIN
IF WEIGHT #1000 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIVINM1","LOCALS",0)~ THEN BVICONI  KIVINM1
@768
DO ~SetGlobal("P#KIVINM1","LOCALS",1)~
== BP#KIV @769
== BVICONI @770
== BP#KIV @771
== BVICONI @772
== BP#KIV @773
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIVI1","LOCALS",0)~ THEN BVICONI  KIVI1
@774
DO ~SetGlobal("P#KIVI1","LOCALS",1)~
== BP#KIV @775
== BVICONI @776
== BP#KIV @777
== BVICONI @778
== BP#KIV @779
== BVICONI @780
== BP#KIV @781
== BVICONI @782
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIVI2","LOCALS",0)~ THEN BVICONI  KIVI2
@783
DO ~SetGlobal("P#KIVI2","LOCALS",1)~
== BP#KIV @784
== BVICONI @785
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
HPPercentLT("P#KIVAN",50)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIVI3","LOCALS",0)~ THEN BVICONI  KIVI3
@786
DO ~SetGlobal("P#KIVI3","LOCALS",1)~
== BP#KIV @787
== BVICONI @788
= @789
EXIT

CHAIN
IF WEIGHT #1003 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
HPPercentLT("P#KIVAN",50)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIVI4","LOCALS",0)~ THEN BVICONI  KIVI4
@790
DO ~SetGlobal("P#KIVI4","LOCALS",1)~
== BP#KIV @791
== BVICONI @792
== BP#KIV @793
== BVICONI @794
== BP#KIV @795
== BVICONI @796
EXIT

CHAIN
IF WEIGHT #1004 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIVI5","LOCALS",0)~ THEN BVICONI  KIVI5
@797
DO ~SetGlobal("P#KIVI5","LOCALS",1)~
== BP#KIV @798
== BVICONI @799
== BP#KIV @800
== BVICONI @801
== BP#KIV @802
== BVICONI @803
== BP#KIV @804
EXIT


CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIYO1","LOCALS",0)~ THEN BYOSHIM KIYO1
@805
DO ~SetGlobal("P#KIYO1","LOCALS",1)~
== BP#KIV @806
== BYOSHIM @807
== BP#KIV @808
== BYOSHIM @809
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIYO2","LOCALS",0)~ THEN BYOSHIM KIYO2
@810
DO ~SetGlobal("P#KIYO2","LOCALS",1)~
== BP#KIV @811
== BYOSHIM @812
== BP#KIV @813
== BYOSHIM @814
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIYO3","LOCALS",0)~ THEN BYOSHIM KIYO3
@815
DO ~SetGlobal("P#KIYO3","LOCALS",1)~
== BP#KIV @816
== BYOSHIM @817
== BP#KIV @818
== BYOSHIM @819
== BP#KIV @820
== BYOSHIM @821
== BP#KIV @822 
== BYOSHIM @823
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIYO4","LOCALS",0)~ THEN BYOSHIM KIYO4
@824
DO ~SetGlobal("P#KIYO4","LOCALS",1)~
== BP#KIV @825
== BYOSHIM @826
== BP#KIV @827
== BYOSHIM @828
 == BP#KIV @829
== BYOSHIM @830 
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])InParty("P#KIVAN")
See("P#KIVAN")
Global("P#DeherianaLives","GLOBAL",0)
Global("P#DeherianaDead","GLOBAL",0)
!StateCheck("P#KIVAN",STATE_SLEEPING)
Global("P#KIKO1","LOCALS",0)~ THEN BKORGAN P#KIKO1
@831
DO ~SetGlobal("P#KIKO1","LOCALS",1)~
== BP#KIV @832
== BKORGAN @833
== BP#KIV @834
== BKORGAN @835
== BP#KIV @836
== BKORGAN @837
== BP#KIV @838
== BKORGAN @839
== BP#KIV @840
== BKORGAN @841
EXIT




