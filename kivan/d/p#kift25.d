////////////////////////////Friendship Sequence//////////////////////

//Prophets, No special conditions//

APPEND P#KI25J

IF WEIGHT #990
~Global("P#KiFRTOBTalk","GLOBAL",2)~ THEN BEGIN KivanProphets
SAY @0
++ @1 + P#TOBFT1.1
++ @2 + P#TOBFT1.2
++ @3 + P#TOBFT1.3
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~ + @4 + P#TOBFT1.4
END

IF ~~ P#TOBFT1.13
SAY@5
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT1.12
SAY@6
IF ~~ THEN EXIT
END


IF ~~ P#TOBFT1.11
SAY @7
= @8
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT1.10
SAY @9
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT1.9
SAY @10
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT1.8
SAY @11
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT1.7
SAY @12
++ @13 + P#TOBFT1.11
++ @14 + P#TOBFT1.12
++ @15 + P#TOBFT1.13
END

IF ~~ P#TOBFT1.6
SAY @16
=@17
++ @18 + P#TOBFT1.8
++ @19 + P#TOBFT1.9
++ @20 + P#TOBFT1.10
++ @21 + P#TOBFT1.5
END

IF ~~ P#TOBFT1.5
SAY @22
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT1.4
SAY @23
++ @24 + P#TOBFT1.7
++ @25 + P#TOBFT1.11
++ @14 + P#TOBFT1.12
++ @26 + P#TOBFT1.13
END

IF ~~ P#TOBFT1.3
SAY @27
++ @18 + P#TOBFT1.8
++ @19 + P#TOBFT1.9
++ @20 + P#TOBFT1.10
++ @21 + P#TOBFT1.5
END


IF ~~ P#TOBFT1.2
SAY @28
++ @21 + P#TOBFT1.5
++ @29 + P#TOBFT1.3
++ @30 + P#TOBFT1.6
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~ +  @31 + P#TOBFT1.7
END


IF ~~ P#TOBFT1.1
SAY @32
++ @21 + P#TOBFT1.5
++ @29 + P#TOBFT1.3
++ @30 + P#TOBFT1.6
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~ +  @33 + P#TOBFT1.7
END

///Irenicus and Ellesime///

IF WEIGHT #990
~Global("P#KiFRTOBTalk","GLOBAL",4)~ THEN BEGIN KivanIrenicusAndEllesime
SAY @34
++ @35 + P#TOBFT2.1
++ @36 + P#TOBFT2.2
++ @37 + P#TOBFT2.3
++ @38 + P#TOBFT2.4
+ ~Class(Player1,BARD_ALL)~ + @39 + P#TOBFT2.5
END

IF ~~ P#TOBFT2.21
SAY @40 
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT2.20
SAY @41 
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT2.19
SAY @42
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT2.18
SAY @43
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT2.17
SAY @44
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT2.16
SAY @45
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT2.15
SAY @46
IF ~~ THEN GOTO P#TOBFT2.8
END

IF ~~ P#TOBFT2.14
SAY @47 
= @48
IF ~~ THEN GOTO P#TOBFT2.8
END

IF ~~ P#TOBFT2.13
SAY @49 
IF ~~ THEN GOTO P#TOBFT2.8
END

IF ~~ P#TOBFT2.12
SAY @50
++ @51 EXIT
++ @52 + P#TOBFT2.8
++ @53 + P#TOBFT2.21
END

IF ~~ P#TOBFT2.11
SAY @54
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT2.10
SAY @55
++ @56 + P#TOBFT2.8
++ @57 + P#TOBFT2.11
END

IF ~~ P#TOBFT2.9
SAY @58
= @59
++ @60  + P#TOBFT2.16
++ @61  + P#TOBFT2.17
++ @62  + P#TOBFT2.19
++ @63  + P#TOBFT2.20
++ @64 + P#TOBFT2.11
END

IF ~~ P#TOBFT2.8
SAY @65
++ @60  + P#TOBFT2.16
++ @61  + P#TOBFT2.17
++ @66  + P#TOBFT2.18
++ @64 + P#TOBFT2.11
END

IF ~~ P#TOBFT2.7
SAY @59
++ @60  + P#TOBFT2.16
++ @61  + P#TOBFT2.17
++ @67  + P#TOBFT2.18
++ @64 + P#TOBFT2.11
END

IF ~~ P#TOBFT2.6
SAY @68
++ @60  + P#TOBFT2.16
++ @61  + P#TOBFT2.17
++ @69  + P#TOBFT2.18
++ @64 + P#TOBFT2.11
END

IF ~~  P#TOBFT2.5
SAY @70
++ @71  + P#TOBFT2.13
++ @72  + P#TOBFT2.14
++ @73  + P#TOBFT2.15
END

IF ~~  P#TOBFT2.4
SAY @74
IF ~~ THEN GOTO P#TOBFT2.3
END

IF ~~  P#TOBFT2.3
SAY @75
++ @76 + P#TOBFT2.1
++ @77 + P#TOBFT2.9
++ @78 + P#TOBFT2.11
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~ +  @79  + P#TOBFT2.12
END

IF ~~  P#TOBFT2.2
SAY @80
++ @81 + P#TOBFT2.1
++ @82 + P#TOBFT2.9
++ @83 + P#TOBFT2.10
++ @84 + P#TOBFT2.11
END

IF ~~  P#TOBFT2.1
SAY @85
++ @86 + P#TOBFT2.6
++ @87 + P#TOBFT2.7
++ @88 + P#TOBFT2.8
++ @89 + P#TOBFT2.11
END

//Like the leaves blown by the wind//
//FT3//

IF WEIGHT #990
~Global("P#KiFRTOBTalk","GLOBAL",6)~ THEN BEGIN KivanLeavesOnTheWind
SAY @90
+ ~InParty("P#DEHER")~+ @91 + P#TOBFT3.1
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @92 + P#TOBFT3.2
+ ~!InParty("P#DEHER") OR(2) !Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @93 EXIT
END

IF ~~ P#TOBFT3.14
SAY @94
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.13
SAY @95
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.12
SAY @96
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.11
SAY @97
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.10
SAY @98
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.9
SAY @99
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.8
SAY @100
++ @101 + P#TOBFT3.14
++ @102 + P#TOBFT3.10
END

IF ~~ P#TOBFT3.7
SAY @103
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.6
SAY @104
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.5
SAY @105
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.4
SAY @106
+ ~Gender(Player1,MALE)~ + @107 + P#TOBFT3.8
+ ~Gender(Player1,MALE)~ + @108 + P#TOBFT3.9
+ ~Gender(Player1,MALE)~ + @109 + P#TOBFT3.10
+ ~Gender(Player1,FEMALE)~ + @110 + P#TOBFT3.11
+ ~Gender(Player1,FEMALE)~ + @108 + P#TOBFT3.12
+ ~Gender(Player1,FEMALE)~ + @111 + P#TOBFT3.13
END

IF ~~ P#TOBFT3.3
SAY @112
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT3.2
SAY @113
++ @114 + P#TOBFT3.6
++ @115 + P#TOBFT3.7
++ @116 + P#TOBFT3.5
END

IF ~~ P#TOBFT3.1
SAY @117
++ @118 + P#TOBFT3.3
++ @119 + P#TOBFT3.4
++ @116 + P#TOBFT3.5
END

//FT4: One cannot hide from war

IF WEIGHT #990
~Global("P#KiFRTOBTalk","GLOBAL",8)~ THEN BEGIN KivanHideFromWar
SAY @120
++ @121 + P#TOBFT4.1
++ @122 + P#TOBFT4.2
++ @123 + P#TOBFT4.3
++ @124 + P#TOBFT4.4
END

IF ~~ P#TOBFT4.12R
SAY @125
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT4.12
SAY @126
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT4.11
SAY @127
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT4.10
SAY @128
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT4.9
SAY @129
IF ~~ THEN EXIT
END

IF ~~ P#TOBFT4.8
SAY @130
++ @131 + P#TOBFT4.9
++ @132 + P#TOBFT4.10
++ @133 + P#TOBFT4.11
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @134 + P#TOBFT4.12R
+ ~!Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @134 + P#TOBFT4.12
END

IF ~~ P#TOBFT4.7
SAY @135
++ @131 + P#TOBFT4.9
++ @132 + P#TOBFT4.10
++ @133 + P#TOBFT4.11
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @134 + P#TOBFT4.12R
+ ~!Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @134 + P#TOBFT4.12
END

IF ~~ P#TOBFT4.6
SAY @136
= @137
++ @131 + P#TOBFT4.9
++ @132 + P#TOBFT4.10
++ @133 + P#TOBFT4.11
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @134 + P#TOBFT4.12R
+ ~!Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @134 + P#TOBFT4.12
END

IF ~~ P#TOBFT4.5
SAY @138
= @139
++ @140 + P#TOBFT4.9
++ @132 + P#TOBFT4.10
++ @133 + P#TOBFT4.11
+ ~Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @134 + P#TOBFT4.12R
+ ~!Global("P#KivanRomanceActive","GLOBAL",2) !Global("P#KivanRomanceInactive","GLOBAL",1)~+ @134 + P#TOBFT4.12
END

IF ~~  P#TOBFT4.4
SAY @141
++ @142 + P#TOBFT4.8
++ @143 + P#TOBFT4.1
++ @144 + P#TOBFT4.9
END

IF ~~  P#TOBFT4.3
SAY @145
IF ~~ THEN GOTO P#TOBFT4.1
END

IF ~~  P#TOBFT4.2
SAY @146
= @147
IF ~~ THEN GOTO P#TOBFT4.1
END

IF ~~  P#TOBFT4.1
SAY @148
++ @149 + P#TOBFT4.5
++ @150 + P#TOBFT4.6
++ @151 + P#TOBFT4.7
END

//Happy endings - 5

IF WEIGHT #990
~Global("P#KiFRTOBTalk","GLOBAL",10)~ THEN BEGIN KivanHappyEndings
SAY @152
++ @153  + FTTOB5.1
++ @154  + FTTOB5.2
++ @155  + FTTOB5.3
++ @156  + FTTOB5.4
END

IF ~~ FTTOB5.15
SAY @157
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.14
SAY @158
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.13
SAY @159
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.12
SAY @160
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.11
SAY @161
++ @162 + FTTOB5.15
++ @163 + FTTOB5.15
++ @164 + FTTOB5.15
END

IF ~~ FTTOB5.10
SAY @165
= @166
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.9
SAY @167
= @168
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.8
SAY @169
++ @170 + FTTOB5.7
++ @171 + FTTOB5.12
+ ~Class(Player1,BARD_ALL)~+ @172 + FTTOB5.13
++ @173 + FTTOB5.14
END

IF ~~ FTTOB5.7
SAY @174
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.6
SAY @175
++ @176  + FTTOB5.5
++ @177  + FTTOB5.11
++ @178  + FTTOB5.7
END

IF ~~ FTTOB5.5
SAY @179
= @180
IF ~~ THEN EXIT
END


IF ~~ FTTOB5.4
SAY @181
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.3
SAY @182
IF ~~ THEN EXIT
END

IF ~~ FTTOB5.2
SAY @183
++ @184  + FTTOB5.7
++ @185  + FTTOB5.8
++ @186  + FTTOB5.9
++ @187  + FTTOB5.10
END

IF ~~ FTTOB5.1
SAY @188
++ @189  + FTTOB5.5
++ @190  + FTTOB5.6
++ @191  + FTTOB5.7
END

//////////////////////////////////////////////////
////Conditional Friendship Talks//////////////////
/////////////////////////////////////////////////

//Melissan, entered Amkethran//

IF WEIGHT #990
~Global("P#KiMelissanTalk","GLOBAL",1)~ THEN BEGIN KivanMelissan
SAY @192
++ @193 DO ~SetGlobal("P#KiMelissanTalk","GLOBAL",2)~ + FTTOB6.1
++ @194 DO ~SetGlobal("P#KiMelissanTalk","GLOBAL",2)~ + FTTOB6.2
++ @195 DO ~SetGlobal("P#KiMelissanTalk","GLOBAL",2)~ + FTTOB6.3
++ @196 DO ~SetGlobal("P#KiMelissanTalk","GLOBAL",2)~ + FTTOB6.4
++ @197 DO ~SetGlobal("P#KiMelissanTalk","GLOBAL",2)~ + FTTOB6.5
END

IF ~~ FTTOB6.15
SAY @198
IF ~~ THEN EXIT
END

IF ~~ FTTOB6.14
SAY @199
IF ~~ THEN EXIT
END


IF ~~ FTTOB6.13
SAY @200
IF ~~ THEN GOTO FTTOB6.4
END

IF ~~ FTTOB6.12
SAY @201
IF ~~ THEN GOTO FTTOB6.4
END

IF ~~ FTTOB6.11
SAY @202
IF ~~ THEN EXIT
END

IF ~~ FTTOB6.10
SAY @203
++ @204 + FTTOB6.15
++ @205 + FTTOB6.11
++ @206 EXIT
END

IF ~~ FTTOB6.9
SAY @203
++ @207 + FTTOB6.14
++ @205 + FTTOB6.11
++ @206 EXIT
END

IF ~~ FTTOB6.8
SAY @208
IF ~~ THEN EXIT
END

IF ~~ FTTOB6.7
SAY @209
++ @210 + FTTOB6.6
++ @211 EXIT
++ @212 + FTTOB6.8
END

IF ~~ FTTOB6.6
SAY @213
++ @214 + FTTOB6.8
++ @215 + FTTOB6.2
++ @216 + FTTOB6.3
++ @217 + FTTOB6.4
++ @218 + FTTOB6.5
END

IF ~~ FTTOB6.5
SAY @219
++ @220 EXIT
+ ~Gender(Player1,MALE)~ + @221 + FTTOB6.9
+ ~Gender(Player1,FEMALE)~ + @221 + FTTOB6.10
++ @222 + FTTOB6.11
END

IF ~~ FTTOB6.4
SAY @223
++ @224 EXIT
+ ~Gender(Player1,MALE)~ + @221 + FTTOB6.9
+ ~Gender(Player1,FEMALE)~ + @221 + FTTOB6.10
++ @222 + FTTOB6.11
END

IF ~~ FTTOB6.3
SAY @225
++ @226 + FTTOB6.12
++ @194 + FTTOB6.2
++ @227 + FTTOB6.13
END

IF ~~ FTTOB6.2
SAY @228
++ @224 EXIT
+ ~Gender(Player1,MALE)~ + @221 + FTTOB6.9
+ ~Gender(Player1,FEMALE)~ + @221 + FTTOB6.10
++ @222 + FTTOB6.11
END

IF ~~ FTTOB6.1
SAY @229
++ @230 + FTTOB6.6
++ @231 + FTTOB6.7
++ @232 + FTTOB6.8
END


//Saradush fall//

IF WEIGHT #990
~Global("P#KiSaradushTalk","GLOBAL",2)~ THEN BEGIN KivanSaradush
SAY @233
++ @234 DO ~SetGlobal("P#KiSaradushTalk","GLOBAL",3)~ + FTTOB7.1
++ @235 DO ~SetGlobal("P#KiSaradushTalk","GLOBAL",3)~ + FTTOB7.2
++ @236 DO ~SetGlobal("P#KiSaradushTalk","GLOBAL",3)~ + FTTOB7.3
++ @237 DO ~SetGlobal("P#KiSaradushTalk","GLOBAL",3)~ + FTTOB7.4
END

IF ~~ FTTOB7.18
SAY @238
IF ~~ THEN EXIT
END

IF ~~ FTTOB7.17
SAY @239
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ FTTOB7.16
SAY @240
++ @241 + FTTOB7.15
++ @242 + FTTOB7.17
END

IF ~~ FTTOB7.15
SAY @243
= @244
IF ~~ THEN EXIT
END

IF ~~ FTTOB7.14
SAY @245
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ FTTOB7.13
SAY @246
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ FTTOB7.12
SAY @247
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ FTTOB7.11
SAY @248
IF ~~ THEN GOTO FTTOB7.9
END

IF ~~ FTTOB7.10
SAY @249
IF ~~ THEN GOTO FTTOB7.9
END

IF ~~ FTTOB7.9
SAY @250
= @251
+ ~!Race(Player1,ELF)~ + @252 + FTTOB7.14
++ @253 + FTTOB7.15
++ @254 + FTTOB7.16
++ @242 + FTTOB7.17
++ @255 + FTTOB7.18
+ ~ Global("P#KivanWorried","GLOBAL",1)~ + @256 EXIT
END

IF ~~ FTTOB7.8
SAY @257
IF ~~ THEN DO ~SetGlobal("P#KivanWorried","GLOBAL",1)~ GOTO FTTOB7.6
END

IF ~~ FTTOB7.7
SAY @258
IF ~~ THEN DO ~SetGlobal("P#KivanWorried","GLOBAL",1)~ GOTO FTTOB7.6
END

IF ~~ FTTOB7.6
SAY @259
+ ~!Race(Player1,ELF)~ + @260 + FTTOB7.14
++ @253 + FTTOB7.15
++ @254 + FTTOB7.16
++ @242 + FTTOB7.17
++ @255 + FTTOB7.18
+ ~ Global("P#KivanWorried","GLOBAL",1)~ + @256 EXIT
END

IF~~ FTTOB7.5
SAY @261
++ @262 + FTTOB7.13
++ @263 + FTTOB7.3
++ @264 + FTTOB7.6
END


IF ~~ FTTOB7.4
SAY @265
++ @266 + FTTOB7.12
++ @267 + FTTOB7.3
++ @264 + FTTOB7.6
END

IF ~~ FTTOB7.3
SAY @268
++ @269 + FTTOB7.11
++ @270 + FTTOB7.9
++ @271 + FTTOB7.10
++ @272 + FTTOB7.9
END

IF ~~ FTTOB7.2
SAY @273
++ @274 + FTTOB7.7
++ @275 + FTTOB7.8
++ @276 + FTTOB7.6
END


IF ~~ FTTOB7.1
SAY @277
++ @278 + FTTOB7.5
++ @267 + FTTOB7.3
++ @264 + FTTOB7.6
END

//Baltazar (ruler); I am guessing after the first meeting with Balthazar, because the second one can be modified by that Ascension thinggie.//

IF WEIGHT #990
~Global("P#KiLordTalk","GLOBAL",2)~ THEN BEGIN KivanLord
SAY @279
++ @280 DO ~SetGlobal("P#KiLordTalk","GLOBAL",3)~ + FTTOB8.1
++ @281 DO ~SetGlobal("P#KiLordTalk","GLOBAL",3)~ + FTTOB8.2
++ @282 DO ~SetGlobal("P#KiLordTalk","GLOBAL",3)~ + FTTOB8.3
++ @283 DO ~SetGlobal("P#KiLordTalk","GLOBAL",3)~ + FTTOB8.4
END

IF ~~ FTTOB8.15
SAY @284
IF ~~ THEN EXIT
END

IF ~~ FTTOB8.14
SAY @285
IF ~~ THEN EXIT
END

IF ~~ FTTOB8.13
SAY @286
IF ~~ THEN EXIT
END

IF ~~ FTTOB8.12
SAY @287
IF ~~ THEN EXIT
END

IF ~~ FTTOB8.11
SAY @288
IF ~~ THEN EXIT
END

IF ~~ FTTOB8.10
SAY @289
IF ~~ THEN EXIT
END

IF ~~ FTTOB8.9
SAY @290
IF ~~ THEN EXIT
END 

IF ~~ FTTOB8.8
SAY @291
++ @292 + FTTOB8.13
++ @293 + FTTOB8.14
++ @294 + FTTOB8.15
END

IF ~~ FTTOB8.7
SAY @295
IF ~~ THEN EXIT
END

IF ~~ FTTOB8.6
SAY @296
IF ~~ THEN EXIT
END

IF ~~ FTTOB8.5
SAY @297
++ @298 + FTTOB8.10
++ @299 + FTTOB8.11
++ @300 + FTTOB8.12
END 

IF ~~ FTTOB8.4
SAY @301
++ @302 + FTTOB8.5
++ @303 + FTTOB8.6
++ @304 + FTTOB8.7
END

IF ~~ FTTOB8.3
SAY @305
++ @306 + FTTOB8.6
++ @307 + FTTOB8.7
++ @308 + FTTOB8.9
END

IF ~~ FTTOB8.2
SAY @309
++ @310 + FTTOB8.8
++ @311 + FTTOB8.3
++ @312 + FTTOB8.4
++ @313 + FTTOB8.1
END

IF ~~ FTTOB8.1
SAY @314
++ @302 + FTTOB8.5
++ @315 + FTTOB8.6
++ @304 + FTTOB8.7
END

//Abazigal Dead

IF WEIGHT #990
~Global("P#KiDragonBhaalspawn","GLOBAL",1)~ THEN BEGIN TobKilledDragon
SAY @316 
++ @317 DO ~SetGlobal("P#KiDragonBhaalspawn","GLOBAL",2)~ + P#KiDBS1.1
++ @318 DO ~SetGlobal("P#KiDragonBhaalspawn","GLOBAL",2)~ + P#KiDBS1.2
++ @319 DO ~SetGlobal("P#KiDragonBhaalspawn","GLOBAL",2)~ + P#KiDBS1.3
++ @320 DO ~SetGlobal("P#KiDragonBhaalspawn","GLOBAL",2)~ + P#KiDBS1.4
END

IF ~~ P#KiDBS1.15
SAY @321
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.14
SAY @322
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.13
SAY @323
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.12
SAY @324
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.11
SAY @325
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.10
SAY @326
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.9
SAY @327
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.8
SAY @328
++ @329 + P#KiDBS1.11
++ @330 + P#KiDBS1.12
++ @331 + P#KiDBS1.6
++ @332 + P#KiDBS1.3
END

IF ~~ P#KiDBS1.7
SAY @333
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.6
SAY @334
++ @335 + P#KiDBS1.13
++ @336 + P#KiDBS1.14
++ @337 + P#KiDBS1.15
END

IF ~~ P#KiDBS1.5A
SAY @338
= @339
++ @340 + P#KiDBS1.5
++ @341 + P#KiDBS1.6
++ @342 + P#KiDBS1.7
++ @343 + P#KiDBS1.8
END

IF ~~ P#KiDBS1.5
SAY @344
++ @329 + P#KiDBS1.11
++ @330 + P#KiDBS1.12
++ @331 + P#KiDBS1.6
++ @332 + P#KiDBS1.3
END

IF ~~ P#KiDBS1.4
SAY @345
++ @346 + P#KiDBS1.9
++ @347 + P#KiDBS1.10
++ @348 + P#KiDBS1.3
END

IF ~~ P#KiDBS1.3
SAY @349
IF ~~ THEN EXIT
END

IF ~~ P#KiDBS1.2
SAY @350
= @339
++ @340 + P#KiDBS1.5
++ @341 + P#KiDBS1.6
++ @342 + P#KiDBS1.7
++ @343 + P#KiDBS1.8
END

IF ~~ P#KiDBS1.1
SAY @351
++ @352 + P#KiDBS1.5A
++ @319 + P#KiDBS1.3
++ @353 + P#KiDBS1.4
END

//Watcher's Keep

IF WEIGHT #990
~Global("P#KiWKTalk","GLOBAL",1)~ THEN BEGIN KivanWatcherKeep
SAY @354 
++ @355 DO ~SetGlobal("P#KiWKTalk","GLOBAL",2)~  + P#KiWK1.1
++ @356 DO ~SetGlobal("P#KiWKTalk","GLOBAL",2)~  + P#KiWK1.2
++ @357 DO ~SetGlobal("P#KiWKTalk","GLOBAL",2)~  + P#KiWK1.3
+ ~!Alignment(Player1,LAWFUL_GOOD)~ + @358 DO ~SetGlobal("P#KiWKTalk","GLOBAL",2)~  + P#KiWK1.4
++ @359 DO ~SetGlobal("P#KiWKTalk","GLOBAL",2)~ + P#KiWK1.5
END

IF ~~ P#KiWK1.7
SAY @360
= @361
IF ~~ THEN EXIT
END

IF ~~ P#KiWK1.6
SAY @362
= @361
IF ~~ THEN EXIT
END

IF ~~ P#KiWK1.5
SAY @363
= @361
IF ~~ THEN EXIT
END

IF ~~ P#KiWK1.4
SAY @364
= @361
IF ~~ THEN EXIT
END

IF ~~ P#KiWK1.3
SAY @365
IF ~~ THEN EXIT
END

IF ~~ P#KiWK1.2
SAY @366
= @367
IF ~~ THEN EXIT
END

IF ~~ P#KiWK1.1
SAY @368
++ @369 + P#KiWK1.2
++ @370 + P#KiWK1.6
++ @371 + P#KiWK1.7
END

//Somewhere after some of PC's trials are done, but not finished yet; definitely after the Master Wraith; comes after 4th challenge//

IF WEIGHT #990
~Global("P#KiTrialTalk","GLOBAL",1)~ THEN BEGIN KivanTrial
SAY @372
++ @373 DO ~SetGlobal("P#KiTrialTalk","GLOBAL",2)~ + FTTOB9.1
++ @374 DO ~SetGlobal("P#KiTrialTalk","GLOBAL",2)~ + FTTOB9.2
++ @375 DO ~SetGlobal("P#KiTrialTalk","GLOBAL",2)~ + FTTOB9.3
++ @376 DO ~SetGlobal("P#KiTrialTalk","GLOBAL",2)~ + FTTOB9.4
END

IF ~~ FTTOB9.18
SAY @377
IF ~~ THEN EXIT
END

IF ~~ FTTOB9.17
SAY @378
IF ~~ THEN GOTO FTTOB9.15
END

IF ~~ FTTOB9.16
SAY @379
IF ~~ THEN EXIT
END

IF ~~ FTTOB9.15
SAY @380
IF ~~ THEN EXIT
END

IF ~~ FTTOB9.14
SAY @381
IF ~~ THEN EXIT
END


IF ~~ FTTOB9.13
SAY @382
++ @383 + FTTOB9.15
++ @384 + FTTOB9.16
++ @385 + FTTOB9.17
++ @386 + FTTOB9.18
END

IF ~~ FTTOB9.12
SAY @387
IF ~~ THEN EXIT
END

IF ~~ FTTOB9.11
SAY @388
= @389
IF ~~ THEN EXIT
END

IF ~~ FTTOB9.10
SAY @390
++ @391 EXIT
++ @392 + FTTOB9.11
END

IF ~~ FTTOB9.9
SAY @393
++ @394 EXIT
++ @392 + FTTOB9.11
END

IF ~~ FTTOB9.8
SAY @395
++ @396 + FTTOB9.7
++ @397 + FTTOB9.7
++ @398 + FTTOB9.7
++ @399 + FTTOB9.7
END

IF ~~ FTTOB9.7
SAY @400
+ ~!Global("P#KivanRomanceActive","GLOBAL",2)~+ @401 + FTTOB9.12
+ ~Global("P#KivanRomanceActive","GLOBAL",2)~+ @401 + FTTOB9.13
++ @402 + FTTOB9.11
++ @403 + FTTOB9.14
END

IF ~~ FTTOB9.6
SAY @404
++ @405 EXIT
++ @392 + FTTOB9.11
END

IF ~~ FTTOB9.5
SAY @406
++ @407 EXIT
++ @392 + FTTOB9.11
END

IF ~~ FTTOB9.4
SAY @408
IF ~~ THEN EXIT
END

IF ~~ FTTOB9.3
SAY @409
IF ~~ THEN GOTO FTTOB9.1
END

IF ~~ FTTOB9.2
SAY @410
IF ~~ THEN GOTO FTTOB9.1
END

IF ~~ FTTOB9.1
SAY @411
++ @412 + FTTOB9.5
++ @413 + FTTOB9.6
++ @414 + FTTOB9.7
++ @415 + FTTOB9.8
++ @416 + FTTOB9.9
++ @417 + FTTOB9.10
++ @418 + FTTOB9.4
END

END

