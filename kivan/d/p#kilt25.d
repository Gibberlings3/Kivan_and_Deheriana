//LT1//
APPEND P#KI25J

IF WEIGHT #990
~Global("P#KiLOTOBTalk","GLOBAL",2)~ THEN BEGIN KivanLoveTalk1
SAY @0
++ @1 + LTTOB1.1
++ @2 DO ~SetGlobal("P#KivanAskedLove","GLOBAL",1)~ + LTTOB1.2
++ @3 + LTTOB1.3
++ @4  + LTTOB1.4
++ @5  + LTTOB1.5
END

IF ~~ LTTOB1.20
SAY @6
IF ~~ THEN EXIT
END

IF ~~ LTTOB1.19
SAY @7
++ @8 + LTTOB1.18
++ @9 + LTTOB1.20
++ @10 + LTTOB1.17
++ @11 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ LTTOB1.18
SAY @12
++ @13 + LTTOB1.20
++ @14 + LTTOB1.12
++ @11 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ LTTOB1.17
SAY @15
IF ~~ THEN DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~EXIT
END

IF ~~ LTTOB1.16
SAY @16
++ @17 + LTTOB1.17
++ @18 + LTTOB1.19
++ @11 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ LTTOB1.15
SAY@19
++ @20 + LTTOB1.17
++ @18 + LTTOB1.19
++ @21  + LTTOB1.20
END

IF ~~ LTTOB1.14
SAY @22
++ @23 + LTTOB1.18
+~OR(3) Class(Player1, MAGE_ALL) Class(Player1,SORCERER) Class(Player1, BARD_ALL) ~ + @24 DO ~ReallyForceSpellRES("SPIN160","P#KIVAN") SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
++ @25 + LTTOB1.17
++ @18 + LTTOB1.19
++ @11 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ LTTOB1.13
SAY @26
IF ~~ THEN GOTO  LTTOB1.11
END

IF ~~ LTTOB1.12
SAY @27
IF ~~ THEN DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ LTTOB1.11
SAY @28
= @29
++ @30 + LTTOB1.14
++ @31 + LTTOB1.15
++ @32 + LTTOB1.16
++ @33 + LTTOB1.17
END

IF ~~ LTTOB1.10
SAY @34
IF ~~ THEN GOTO LTTOB1.4
END

IF ~~ LTTOB1.9
SAY @35
= @29
++ @30 + LTTOB1.14
++ @31 + LTTOB1.15
++ @32 + LTTOB1.16
++ @33 + LTTOB1.17
END

IF ~~ LTTOB1.8
SAY @36
= @37
++ @38  + LTTOB1.5
++ @39 + LTTOB1.9
++ @40 + LTTOB1.12
+~Global("P#KivanAskedLove","GLOBAL",0)~+ @41 DO ~SetGlobal("P#KivanAskedLove","GLOBAL",1)~ + LTTOB1.13
END

IF ~~ LTTOB1.7
SAY @42
++ @43 + LTTOB1.8
++ @39 + LTTOB1.9
++ @44 + LTTOB1.12
+~Global("P#KivanAskedLove","GLOBAL",0)~+ @41 DO ~SetGlobal("P#KivanAskedLove","GLOBAL",1)~ + LTTOB1.13
END

IF ~~ LTTOB1.6
SAY @45
++ @46 + LTTOB1.8
++ @39 + LTTOB1.9
++ @44 + LTTOB1.12
+~Global("P#KivanAskedLove","GLOBAL",0)~+ @41 DO ~SetGlobal("P#KivanAskedLove","GLOBAL",1)~ + LTTOB1.13
END

IF ~~ LTTOB1.5
SAY @47
= @29
++ @30 + LTTOB1.14
++ @31 + LTTOB1.15
++ @32 + LTTOB1.16
++ @33 + LTTOB1.17
END

IF ~~ LTTOB1.4
SAY @48
= @49
+ ~Race(Player1,ELF)~+ @50 + LTTOB1.6
+ ~!Race(Player1,ELF)~+ @50 + LTTOB1.7
++ @51 + LTTOB1.8
++ @39 + LTTOB1.9
++ @44 + LTTOB1.12
END

IF ~~  LTTOB1.3
SAY @52
++ @53 + LTTOB1.10
++ @54 + LTTOB1.1
END

IF ~~ LTTOB1.2
SAY @55
++ @56 + LTTOB1.3
++ @4  + LTTOB1.4
++ @57  + LTTOB1.5
++ @58  + LTTOB1.11
END

IF ~~ LTTOB1.1
SAY @59
= @49
+ ~Race(Player1,ELF)~+ @50 + LTTOB1.6
+ ~!Race(Player1,ELF)~+ @50 + LTTOB1.7
++ @51 + LTTOB1.8
++ @39 + LTTOB1.9
++ @44 + LTTOB1.12
+~Global("P#KivanAskedLove","GLOBAL",0)~+ @41 DO ~SetGlobal("P#KivanAskedLove","GLOBAL",1)~ + LTTOB1.13
END

//LT2//

IF WEIGHT #990
~Global("P#KiLOTOBTalk","GLOBAL",4)~ THEN BEGIN KivanLoveTalk2
SAY @60
++ @61 + LTTOB2.0
++ @62 + LTTOB2.0
++ @63 + LTTOB2.0
++ @64 + LTTOB2.0
END

IF ~~ LTTOB2.0
SAY @65
= @66
++ @67 + LTTOB2.1
++ @68 + LTTOB2.2
++ @69 + LTTOB2.3
++ @424 + KiAddLove1.1
++ @425 + KiAddLove1.2
END

//add on

IF ~~ KiAddLove1.10
SAY @426
IF ~~ THEN GOTO LTTOB2.3
END

IF ~~ KiAddLove1.9
SAY @427
++ @428 + KiAddLove1.6
++ @429 + KiAddLove1.10
++ @430 + LTTOB2.3
END

IF ~~ KiAddLove1.8
SAY @431
++ @432 + KiAddLove1.6
++ @433 + KiAddLove1.9
++ @434 + KiAddLove1.10
++ @435 + LTTOB2.3
END

IF ~~ KiAddLove1.7
SAY @436
++ @437 + LTTOB2.3
++ @438 + KiAddLove1.6
++ @439 + KiAddLove1.8
END

IF ~~ KiAddLove1.6
SAY @440
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiAddLove1.5
SAY @441
IF ~~ THEN GOTO LTTOB2.2
END

IF ~~ KiAddLove1.4
SAY @442
IF ~~ THEN GOTO LTTOB2.3
END

IF ~~ KiAddLove1.3
SAY @443
++ @444 + KiAddLove1.6
++ @445 + KiAddLove1.5
++ @446 + KiAddLove1.6
END

IF ~~ KiAddLove1.2
SAY @447
++ @448 + KiAddLove1.3
++ @449 + KiAddLove1.4
++ @450 + KiAddLove1.5
++ @451 + KiAddLove1.6
++ @452 + KiAddLove1.7
END

IF ~~ KiAddLove1.1
SAY @453
IF ~~ THEN GOTO LTTOB2.2
END

//add on

IF ~~ LTTOB2.10
SAY @70
IF ~~ THEN DO ~SetGlobal("P#KivanIntimate","GLOBAL",1)  IncrementGlobal("P#KivanLove","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ LTTOB2.9
SAY @71
++ @61 + LTTOB2.10
++ @72 + LTTOB2.6
++ @73  + LTTOB2.7
END

IF ~~ LTTOB2.8
SAY @74
++ @72 + LTTOB2.6
++ @73  + LTTOB2.7
END

IF ~~ LTTOB2.7
SAY @75
IF ~~ THEN DO ~RestParty() ~ EXIT
END

IF ~~ LTTOB2.6
SAY @76
IF ~~ THEN DO ~RestParty() SetGlobal("P#KivanIntimate","GLOBAL",1)  IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXIT
END

IF ~~ LTTOB2.5
SAY @77
++ @78  + LTTOB2.8
++ @72 + LTTOB2.6
++ @73  + LTTOB2.7
END

IF ~~ LTTOB2.4
SAY @79
++ @72 + LTTOB2.6
++ @69  + LTTOB2.9
++ @73  + LTTOB2.7
END

IF ~~  LTTOB2.3
SAY @80
++ @81  + LTTOB2.8
++ @61 + LTTOB2.4
++ @72 + LTTOB2.6
++ @73  + LTTOB2.7
END

IF ~~ LTTOB2.2
SAY @82
++ @78  + LTTOB2.8
++ @83 + LTTOB2.5
++ @72 + LTTOB2.6
++ @73  + LTTOB2.7
END

IF ~~ LTTOB2.1
SAY @84
++ @85 + LTTOB2.4
++ @83 + LTTOB2.5
++ @86 + LTTOB2.6
++ @87  + LTTOB2.7
END

//MA LT2//

IF WEIGHT #990
~Global("P#KiMorningTalk","GLOBAL",1)~ THEN BEGIN KivanMorningTalk1
SAY @88
++ @89 DO ~SetGlobal("P#KiMorningTalk","GLOBAL",2)~ + LTTOB2A.1
++ @90 DO ~SetGlobal("P#KiMorningTalk","GLOBAL",2)~ + LTTOB2A.2
++ @91 DO ~SetGlobal("P#KiMorningTalk","GLOBAL",2)~ + LTTOB2A.3
++ @92 DO ~SetGlobal("P#KiMorningTalk","GLOBAL",2)~ + LTTOB2A.4
++ @93 DO ~SetGlobal("P#KiMorningTalk","GLOBAL",2)~ + LTTOB2A.5
END

IF ~~  LTTOB2A.13
SAY @94
++ @95 + LTTOB2A.12
++ @96 + LTTOB2A.10
END

IF ~~  LTTOB2A.12
SAY @97
IF ~~ THEN EXIT
END

IF ~~  LTTOB2A.11
SAY @98
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~  LTTOB2A.10
SAY @99
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB2A.9
SAY @100
++ @101 + LTTOB2A.10
++ @102 + LTTOB2A.11
++ @95 + LTTOB2A.12
++ @103 + LTTOB2A.13
END

IF ~~ LTTOB2A.8
SAY @104
IF ~~ THEN EXIT
END

IF ~~ LTTOB2A.7
SAY @105
IF ~~ THEN EXIT
END

IF ~~ LTTOB2A.6
SAY @106
IF ~~ THEN DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ LTTOB2A.5
SAY @107
++ @108 + LTTOB2A.4
++ @109 + LTTOB2A.9
++ @110  + LTTOB2A.6
END

IF ~~ LTTOB2A.4
SAY @28
IF ~~ THEN EXIT
END

IF ~~ LTTOB2A.3
SAY @111
IF ~~ THEN EXIT
END

IF ~~ LTTOB2A.2
SAY @112
IF ~~ THEN EXIT
END

IF ~~ LTTOB2A.1
SAY @113
++ @114 + LTTOB2A.7
++ @115 + LTTOB2A.8
++ @109 + LTTOB2A.9
END

//LT3//

IF WEIGHT #990
~Global("P#KiLOTOBTalk","GLOBAL",6)~ THEN BEGIN KivanLoveTalk3
SAY @116
++ @117 + LTTOB3.1
++ @118 + LTTOB3.2
++ @119 + LTTOB3.3
++ @120 + LTTOB3.4
END

IF ~~ LTTOB3.18
SAY @121
= @122
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB3.17
SAY @123
IF ~~ THEN GOTO LTTOB3.11
END

IF ~~ LTTOB3.16
SAY @124
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB3.15
SAY @125
IF ~~ THEN GOTO LTTOB3.14
END

IF ~~ LTTOB3.14
SAY @126
++ @127 + LTTOB3.11
++ @128 + LTTOB3.7
++ @129 + LTTOB3.16
END

IF ~~ LTTOB3.13
SAY @130
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB3.12
SAY @131
= @132
IF ~~ THEN DO ~RestParty()~ EXIT
END
  
IF ~~  LTTOB3.11
SAY @133
++ @134 + LTTOB3.7
++ @135 + LTTOB3.18
++ @136 + LTTOB3.16
END

IF ~~  LTTOB3.10
SAY @137
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB3.9
SAY @138
= @139
++ @140 + LTTOB3.7
++ @141 + LTTOB3.15
++ @142 + LTTOB3.16
END

IF ~~ LTTOB3.8
SAY @143
++ @144 + LTTOB3.7
++ @141 + LTTOB3.15
++ @142 + LTTOB3.16
++ @145 + LTTOB3.17
END

IF ~~ LTTOB3.7
SAY @146
= @147
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB3.6
SAY @148
++ @144 + LTTOB3.7
++ @141 + LTTOB3.15
++ @149 + LTTOB3.16
++ @145 + LTTOB3.17
END

IF ~~ LTTOB3.5
SAY @150
++ @151 + LTTOB3.7
++ @152 + LTTOB3.13
++ @153 + LTTOB3.14
END

IF ~~ LTTOB3.4
SAY @154
++ @155  + LTTOB3.10
++ @156  + LTTOB3.10
++ @157 + LTTOB3.7
++ @158 + LTTOB3.11
END

IF ~~ LTTOB3.3
SAY @159
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB3.2
SAY @160
++ @161 + LTTOB3.7
++ @162 + LTTOB3.8
++ @163 + LTTOB3.9
END

IF ~~ LTTOB3.1
SAY @164
++ @165 + LTTOB3.3
++ @166 + LTTOB3.5
++ @167 + LTTOB3.6
++ @168 + LTTOB3.12
END

//LT 4//

IF WEIGHT #990
~Global("P#KiLOTOBTalk","GLOBAL",8)~ THEN BEGIN KivanLoveTalk4
SAY @169
= @170
IF ~~ THEN DO ~RestParty()~ EXIT
END

//LT 5//
//A cup of mulled/chilled wine //

//DAY//

IF WEIGHT #990
~Global("P#KiLOTOBTalk","GLOBAL",10) TimeOfDay(DAY)~ THEN BEGIN KivanLoveTalk5A
SAY @171
IF ~~ THEN GOTO LTTOB5.0
END

//NIGHT//

IF WEIGHT #990
~Global("P#KiLOTOBTalk","GLOBAL",10) !TimeOfDay(DAY)~ THEN BEGIN KivanLoveTalk5B
SAY @172
IF ~~ THEN GOTO LTTOB5.0
END

IF ~~ LTTOB5.0
SAY @173
++ @174 + LTTOB5.1
++ @175 + LTTOB5.2 
++ @176 + LTTOB5.3
++ @177 + LTTOB5.4
END

IF ~~ LTTOB5.11
SAY @178
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB5.10
SAY @179
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB5.9
SAY @180
++ @176 + LTTOB5.3
++ @181  + LTTOB5.10
++ @182  + LTTOB5.11
END

IF ~~ LTTOB5.8
SAY @183
++ @184 + LTTOB5.7
++ @185 + LTTOB5.7
++ @181  + LTTOB5.10 
END

IF ~~ LTTOB5.8B
SAY @186
IF ~~ THEN GOTO LTTOB5.8
END

IF ~~ LTTOB5.8A
SAY @187
IF ~~ THEN GOTO LTTOB5.8
END

IF ~~ LTTOB5.7
SAY @188
IF ~~ THEN DO ~RestParty()~ EXIT
END
 
IF ~~ LTTOB5.6
SAY @189
++ @185 + LTTOB5.7
++ @176 + LTTOB5.3
++ @181  + LTTOB5.10
END

IF ~~ LTTOB5.5
SAY @190
++ @191+ LTTOB5.8B
++ @192 + LTTOB5.8
++ @193 + LTTOB5.9
END

IF ~~ LTTOB5.4
SAY @194
++ @195 + LTTOB5.6
++ @184 + LTTOB5.7
++ @176 + LTTOB5.3
++ @181  + LTTOB5.10
END

IF ~~ LTTOB5.3
SAY @196
++ @197 + LTTOB5.8A
++ @198+ LTTOB5.8B
++ @199 + LTTOB5.8
END

IF ~~ LTTOB5.2
SAY @200
++ @195 + LTTOB5.6
++ @184 + LTTOB5.7
++ @176 + LTTOB5.3
++ @181  + LTTOB5.10
END

IF ~~ LTTOB5.1
SAY @201
= @202
++ @176 + LTTOB5.3
++ @203 + LTTOB5.5
END

//LT 6//
//Blanket game, murmurs into your hair//

IF WEIGHT #990
~Global("P#KiLOTOBTalk","GLOBAL",12)~ THEN BEGIN KivanLoveTalk6
SAY @204
++ @205 + LTTOB6.1
++ @206 + LTTOB6.2
++ @207 + LTTOB6.3
++ @208 + LTTOB6.4
END

IF ~~ LTTOB6.9
SAY @209
++ @210  + LTTOB6.8
++ @211 + LTTOB6.4
++ @212 + LTTOB6.7
END

IF ~~ LTTOB6.8
SAY @213
IF ~~ THEN GOTO LTTOB6.6
END

IF ~~ LTTOB6.7
SAY @214
++ @210  + LTTOB6.8
++ @211 + LTTOB6.4
++ @215 + LTTOB6.6
END

IF ~~ LTTOB6.6
SAY @216
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB6.5
SAY @217
++ @210  + LTTOB6.8
++ @211 + LTTOB6.4
++ @69 + LTTOB6.9
END 

IF ~~ LTTOB6.4
SAY @218
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB6.3
SAY @219
++ @69 + LTTOB6.6
++ @220 + LTTOB6.4
++ @212 + LTTOB6.7
END

IF ~~ LTTOB6.2
SAY @221
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB6.1
SAY @222
++ @223 + LTTOB6.2
++ @207 + LTTOB6.3
++ @224 + LTTOB6.5
++ @208 + LTTOB6.4
END

//LT7//

IF WEIGHT #990
~Global("P#KiLOTOBTalk","GLOBAL",14)~ THEN BEGIN KivanLoveTalk7
SAY @225
++ @226  + LTTOB7.1
++ @227  + LTTOB7.2
++ @228 + LTTOB7.3
++ @229 + LTTOB7.4
END

IF ~~ LTTOB7.17
SAY @230
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB7.16
SAY @231
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB7.15
SAY @232
++ @233 + LTTOB7.16
++ @234 + LTTOB7.17
++ @235 + LTTOB7.7
END

IF ~~  LTTOB7.14
SAY @236
= @237
++ @238 + LTTOB7.3
++ @239 + LTTOB7.7
END

IF ~~  LTTOB7.13
SAY @240
++ @238 + LTTOB7.3
++ @241 + LTTOB7.7
END

IF ~~  LTTOB7.12
SAY @242
++ @238 + LTTOB7.3
++ @241 + LTTOB7.7
END

IF ~~ LTTOB7.11
SAY @243
++ @238 + LTTOB7.3
++ @241 + LTTOB7.7
END

IF ~~ LTTOB7.10
SAY @244
++ @245  + LTTOB7.6
++ @238 + LTTOB7.3
END

IF ~~ LTTOB7.9
SAY @246
++ @247 + LTTOB7.15
++ @248 + LTTOB7.15
++ @249 + LTTOB7.15
++ @233 + LTTOB7.16
END

IF ~~ LTTOB7.8
SAY @250
++ @251 + LTTOB7.11
++ @252 + LTTOB7.12
++ @253 + LTTOB7.13
++ @254 + LTTOB7.14
END

IF ~~ LTTOB7.7
SAY @255
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB7.6
SAY @256
++ @257 + LTTOB7.9
++ @258 + LTTOB7.7
END

IF ~~ LTTOB7.5
SAY @259
= @260
++ @261  + LTTOB7.6
++ @262 + LTTOB7.10
++ @263 + LTTOB7.3
END

IF ~~ LTTOB7.4
SAY @264
++ @265  + LTTOB7.6
++ @262 + LTTOB7.10
++ @266 + LTTOB7.3
END

IF ~~ LTTOB7.3
SAY @267
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ LTTOB7.2
SAY @268
++ @258 + LTTOB7.7
++ @269  + LTTOB7.8
++ @270 + LTTOB7.9
END

IF ~~ LTTOB7.1
SAY @271
++ @272  + LTTOB7.5
++ @273  + LTTOB7.6
++ @228 + LTTOB7.3
++ @229 + LTTOB7.4
END

//After Innocence Challenge//

IF WEIGHT #990
~Global("P#KiInnocence","GLOBAL",1)~ THEN BEGIN KivanLoveTalk8
SAY @274
++ @275 DO ~SetGlobal("P#KiInnocence","GLOBAL",2)~ + P#P#In1.1
++ @276 DO ~SetGlobal("P#KiInnocence","GLOBAL",2)~ + P#P#In1.2
++ @277 DO ~SetGlobal("P#KiInnocence","GLOBAL",2)~  + P#P#In1.3
++ @278 DO ~SetGlobal("P#KiInnocence","GLOBAL",2)~ + P#P#In1.4
END

IF ~~ P#P#In1.12
SAY @279
IF ~~ THEN EXIT
END

IF ~~ P#P#In1.11
SAY @280
= @281
IF ~~ THEN EXIT
END

IF ~~ P#P#In1.10
SAY @282
IF ~~ THEN EXIT
END

IF ~~ P#P#In1.9
SAY @283
IF ~~ THEN EXIT
END

IF ~~ P#P#In1.8
SAY @284
++ @285 + P#P#In1.5
++ @286 + P#P#In1.6
++ @287 + P#P#In1.7
END

IF ~~ P#P#In1.7
SAY @288
IF ~~ THEN EXIT
END

IF ~~ P#P#In1.6
SAY @289
= @290
= @291
= @292
IF ~~ THEN EXIT
END

IF ~~ P#P#In1.5
SAY @293
= @291
= @292
IF ~~ THEN EXIT
END

IF ~~ P#P#In1.4
SAY @294
IF ~~ THEN EXIT
END

IF ~~ P#P#In1.3
SAY @295
++ @296 + P#P#In1.10
++ @297 + P#P#In1.11
++ @298 + P#P#In1.12
END

IF ~~ P#P#In1.2
SAY @299
++ @300 + P#P#In1.8
++ @301 + P#P#In1.9
++ @302 + P#P#In1.3
++ @278 + P#P#In1.4
END

IF ~~ P#P#In1.1
SAY @303
++ @285 + P#P#In1.5
++ @286 + P#P#In1.6
++ @287 + P#P#In1.7
END


//Standard Flirts//

IF WEIGHT #990
~Global("P#KivFlirtEarly","GLOBAL",2)~ THEN BEGIN KivanFlirtStandard
SAY @304
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,1)~ THEN GOTO KiTOBFL1.1
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,2)~ THEN GOTO KiTOBFL1.2
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,3)~ THEN GOTO KiTOBFL1.3
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,4)~ THEN GOTO KiTOBFL1.4
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,5)~ THEN GOTO KiTOBFL1.5
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,6)~ THEN GOTO KiTOBFL1.6
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,7)~ THEN GOTO KiTOBFL1.7
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,8)~ THEN GOTO KiTOBFL1.8
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,9)~ THEN GOTO KiTOBFL1.9
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,10)~ THEN GOTO KiTOBFL1.10
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,11)~ THEN GOTO KiTOBFL1.11
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,12)~ THEN GOTO KiTOBFL1.12
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,13)~ THEN GOTO KiTOBFL1.13
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,14)~ THEN GOTO KiTOBFL1.14
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,15)~ THEN GOTO KiTOBFL1.15
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,16)~ THEN GOTO KiTOBFL1.16
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,17)~ THEN GOTO KiTOBFL1.17
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,18)~ THEN GOTO KiTOBFL1.18
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,19)~ THEN GOTO KiTOBFL1.19
IF ~Global("P#GaveWreath","GLOBAL",0) RandomNum(20,20)~ THEN GOTO KiTOBFL1.20

IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,1)~ THEN GOTO KiTOBFL1.1
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,2)~ THEN GOTO KiTOBFL1.2
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,3)~ THEN GOTO KiTOBFL1.3
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,4)~ THEN GOTO KiTOBFL1.4
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,5)~ THEN GOTO KiTOBFL1.5
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,6)~ THEN GOTO KiTOBFL1.6
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,7)~ THEN GOTO KiTOBFL1.7
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,8)~ THEN GOTO KiTOBFL1.8
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,9)~ THEN GOTO KiTOBFL1.9
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,10)~ THEN GOTO KiTOBFL1.10
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,11)~ THEN GOTO KiTOBFL1.11
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,12)~ THEN GOTO KiTOBFL1.12
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,13)~ THEN GOTO KiTOBFL1.13
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,14)~ THEN GOTO KiTOBFL1.14
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,15)~ THEN GOTO KiTOBFL1.15
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,16)~ THEN GOTO KiTOBFL1.20
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,17)~ THEN GOTO KiTOBFL1.17
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,18)~ THEN GOTO KiTOBFL1.18
IF ~Global("P#GaveWreath","GLOBAL",1) RandomNum(19,19)~ THEN GOTO KiTOBFL1.19
END

IF ~~ KiTOBFL1.1
SAY @305
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.2
SAY @306
++ @307 + KiTOBFL1.2.1
++ @308 + KiTOBFL1.2.2
++ @309 + KiTOBFL1.2.3
END

IF ~~ KiTOBFL1.2.1
SAY @310
= @311
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.2.2
SAY @312
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.2.3
SAY @313
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.3
SAY @314
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.4
SAY @315
++ @316 + KiTOBFL1.4.1
++ @317 + KiTOBFL1.4.2
++ @318 + KiTOBFL1.4.3
++ @319 + KiTOBFL1.4.4
++ @320 + KiTOBFL1.4.5
END

IF ~~ KiTOBFL1.4.1
SAY @321
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.4.2
SAY @322
++ @323 + KiTOBFL1.4.2.1
++ @324 + KiTOBFL1.4.2.2
++ @325 + KiTOBFL1.4.2.2
++ @318 + KiTOBFL1.4.3
END

IF ~~ KiTOBFL1.4.2.1
SAY @326
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.4.2.2
SAY @327
++ @328 + KiTOBFL1.4.2.2
++ @329 + KiTOBFL1.4.2.3
++ @318 + KiTOBFL1.4.2.4
END

IF ~~ KiTOBFL1.4.2.3
SAY @330
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.4.2.4
SAY @331
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.4.3
SAY @332
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.4.4
SAY @333
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.4.5
SAY @334
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.5
SAY @335
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.6
SAY @336
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.7
SAY @337
= @338
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.8
SAY @339
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.9
SAY @340
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.10
SAY @341
++ @342 + KiTOBFL1.10.1
++ @343 + KiTOBFL1.10.2
++ @344 + KiTOBFL1.10.3
++ @345 + KiTOBFL1.10.4
END

IF ~~ KiTOBFL1.10.1
SAY @346
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.10.2
SAY @347
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.10.3
SAY @348
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.10.4
SAY @349
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.11
SAY @350
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.12
SAY @351
= @352
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.13
SAY @353
= @354
++ @355 + KiTOBFL1.13.1
++ @356 + KiTOBFL1.13.2
++ @357 + KiTOBFL1.13.3
END

IF ~~ KiTOBFL1.13.1
SAY @358
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.13.2
SAY @359
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.13.3
SAY @360
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.14
SAY @361
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.15
SAY @362
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.16
SAY @363
IF ~~ THEN DO ~SetGlobal("P#GaveWreath","GLOBAL",1) GiveItemCreate("P#WREATH",Player1,1,0,0)~ EXIT
END

IF ~~ KiTOBFL1.17
SAY @364
++ @365 + KiTOBFL1.17.1
++ @366 + KiTOBFL1.17.2
++ @367 + KiTOBFL1.17.3
++ @368 + KiTOBFL1.17.4
END

IF ~~ KiTOBFL1.17.1
SAY @369
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.17.2
SAY @370
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.17.3
SAY @371
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.17.4
SAY @372
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.18
SAY @373
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.19
SAY @374
IF ~~ THEN EXIT
END

IF ~~ KiTOBFL1.20
SAY @375
IF ~~ THEN EXIT
END

IF WEIGHT #990
~Global("P#KivFlirtNight","GLOBAL",2)~ THEN BEGIN KivanFlirtNight
SAY @376
IF ~RandomNum(20,1)~ THEN GOTO KiNiFl1.1
IF ~RandomNum(20,2)~ THEN GOTO KiNiFl1.2
IF ~RandomNum(20,3)~ THEN GOTO KiNiFl1.3
IF ~RandomNum(20,4)~ THEN GOTO KiNiFl1.4
IF ~RandomNum(20,5)~ THEN GOTO KiNiFl1.5
IF ~RandomNum(20,6)~ THEN GOTO KiNiFl1.6
IF ~RandomNum(20,7)~ THEN GOTO KiNiFl1.7
IF ~RandomNum(20,8)~ THEN GOTO KiNiFl1.8
IF ~RandomNum(20,9)~ THEN GOTO KiNiFl1.9
IF ~RandomNum(20,10)~ THEN GOTO KiNiFl1.10
IF ~RandomNum(20,11)~ THEN GOTO KiNiFl1.11
IF ~RandomNum(20,12)~ THEN GOTO KiNiFl1.12
IF ~RandomNum(20,13)~ THEN GOTO KiNiFl1.13
IF ~RandomNum(20,14)~ THEN GOTO KiNiFl1.14
IF ~RandomNum(20,15)~ THEN GOTO KiNiFl1.15
IF ~RandomNum(20,16)~ THEN GOTO KiNiFl1.16
IF ~RandomNum(20,17)~ THEN GOTO KiNiFl1.17
IF ~RandomNum(20,18)~ THEN GOTO KiNiFl1.18
IF ~RandomNum(20,19)~ THEN GOTO KiNiFl1.19
IF ~RandomNum(20,20)~ THEN GOTO KiNiFl1.20
END

IF ~~ KiNiFl1.1
SAY @377
= @378
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.2
SAY @379
= @380
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.3
SAY @381
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.4
SAY @382
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.5
SAY @383
= @384
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.6
SAY @385
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.7
SAY @386
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.8
SAY @387
= @388
++ @389 + KiNiFl1.8.1
++ @390 + KiNiFl1.8.2
++ @391 + KiNiFl1.8.3
++ @392 + KiNiFl1.8.4
++ @393 + KiNiFl1.8.5
END

IF ~~ KiNiFl1.8.1
SAY @394
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.8.2
SAY @395
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.8.3
SAY @396
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.8.4
SAY@397
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.8.5
SAY @398
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.9
SAY @399
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.10
SAY @400
= @401
= @402
= @403
= @404
= @405
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.11
SAY @406
= @407
= @408
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.12
SAY @409
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.13
SAY @410
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.14
SAY @411
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.15
SAY @412
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.16
SAY @413
= @414
= @415
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.17
SAY @416
= @417
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.18
SAY @418
= @419
= @420
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.19
SAY @421
= @422
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KiNiFl1.20
SAY @423
IF ~~ THEN DO ~RestParty()~ EXIT
END

END

