APPEND P#KIVJ

//2
IF WEIGHT #990 ~
Global("P#KivanLoveTalk","GLOBAL",2)
~ THEN BEGIN KIST1
SAY @0
= @1
++ @2 DO ~RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL", 1800) ActionOverride("P#SQUI",DestroySelf()) SetGlobal("P#KivanLoveTalk","GLOBAL",3)~ GOTO KIST1.1
++ @3 DO ~RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL", 1800) MoveGlobalObject(Player1,"P#KIVAN") MoveGlobalObject("P#SQUI","P#KIVAN") SetGlobal("P#KivanLoveTalk","GLOBAL",3)~ GOTO KIST1.2
++ @4 DO ~RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL", 1800) MoveGlobalObject(Player1,"P#KIVAN") MoveGlobalObject("P#SQUI","P#KIVAN") SetGlobal("P#KivanLoveTalk","GLOBAL",3)~ GOTO KIST1.3
++ @5 DO ~RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL", 1800) MoveGlobalObject(Player1,"P#KIVAN") MoveGlobalObject("P#SQUI","P#KIVAN") SetGlobal("P#KivanLoveTalk","GLOBAL",3)~ GOTO KIST1.4
+ ~InParty("Korgan")~ + @6 DO ~RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL", 1800) MoveGlobalObject(Player1,"P#KIVAN") MoveGlobalObject("P#SQUI","P#KIVAN") SetGlobal("P#KivanLoveTalk","GLOBAL",3)~ GOTO KIST1.5
+ ~InParty("Minsc")~ + @7 DO ~RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL", 1800) MoveGlobalObject(Player1,"P#KIVAN") MoveGlobalObject("P#SQUI","P#KIVAN") SetGlobal("P#KivanLoveTalk","GLOBAL",3)~ GOTO KIST1.3
END

IF ~~ KIST1.1
SAY @8
++ @9 GOTO KIST1.6
+ ~InParty("Korgan")~ + @6 GOTO KIST1.5
++ @10 GOTO KIST1.6
++ @11 GOTO KIST1.4
END

IF ~~ KIST1.2
SAY @12
= @13
++ @14 GOTO KIST1.7
++ @15 GOTO KIST1.7
++ @10 GOTO KIST1.6
++ @11 GOTO KIST1.4
END

IF ~~ KIST1.3
SAY @16
++ @17 + KIST1.8
++ @18 + KIST1.9
++ @19 GOTO KIST1.4
END

IF ~~ KIST1.4
SAY @20
++ @21 DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
++ @22 GOTO KIST1.10 
++ @23 GOTO KIST1.11
++ @24 GOTO KIST1.12
END
IF ~~ KIST1.5
SAY @25
IF ~~ GOTO KIST1.4
END

IF ~~ KIST1.6
SAY @26
++ @27 + KIST1.13
++ @28 + KIST1.13
++ @29 + KIST1.3
++ @30 +KIST1.9
++ @31 + KIST1.9
END

IF ~~ KIST1.7
SAY @32
++ @33 GOTO KIST1.6
++ @34 GOTO KIST1.4
++ @35 DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
+ ~Class(Player1, DRUID_ALL)~ + @36 + KIST1.14
END


IF ~~ KIST1.8
SAY @37
= @38
= @39
IF ~~ THEN GOTO KIST1.4
END

IF ~~ KIST1.9
SAY @40
++ @41 GOTO KIST1.15
++ @42 GOTO KIST1.16
++ @43 GOTO KIST1.17
++ @44 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
++ @45 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF ~~ KIST1.10
SAY @46
IF ~~ THEN DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF ~~ KIST1.11
SAY @47
= @48
IF ~~ THEN DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF ~~ KIST1.12
SAY @49
++ @50 GOTO KIST1.11
++ @51 + KIST1.18
END

IF ~~ KIST1.13
SAY @52
IF ~~ THEN GOTO KIST1.3
END


IF ~~ KIST1.14
SAY @53
++ @54 + KIST1.19
++ @55 GOTO KIST1.4
++ @56 DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF ~~ KIST1.15
SAY @57
IF ~~ THEN DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF ~~ KIST1.16
SAY @58
IF ~~ THEN DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF ~~ KIST1.17
SAY @59
IF ~~ THEN DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF ~~ KIST1.18
SAY @60
= @61
= @62
IF ~~ THEN DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF ~~ KIST1.19
SAY @63
IF ~~ THEN DO ~RestParty() ActionOverride("P#SQUI",DestroySelf())~ EXIT
END

IF WEIGHT #990 ~
Global("P#KivanLoveTalk","GLOBAL",4)
~ THEN BEGIN KIPC3
SAY @64 
IF ~~ THEN REPLY @65 DO ~SetGlobal("P#KivanLoveTalk","GLOBAL",5)~ GOTO KIPC3.1
IF ~~ THEN REPLY @66 DO ~SetGlobal("P#KivanLoveTalk","GLOBAL",5)~ GOTO KIPC3.2
IF ~~ THEN REPLY @67 DO ~SetGlobal("P#KivanLoveTalk","GLOBAL",5)~ GOTO KIPC3.3
IF ~Class(Player1,BARD)~ THEN REPLY @68 DO ~SetGlobal("P#KivanLoveTalk","GLOBAL",5)~ GOTO KIPC3.4
END

IF ~~ THEN BEGIN KIPC3.1
SAY @69
IF ~~ THEN REPLY @70 GOTO KIPC3.5
IF ~~ THEN REPLY @71 GOTO KIPC3.6
IF ~~ THEN REPLY @72 GOTO KIPC3.7
END

IF ~~ THEN BEGIN KIPC3.2
SAY @73
= @74
IF ~~ THEN REPLY @70 GOTO KIPC3.5
IF ~~ THEN REPLY @71 GOTO KIPC3.6
IF ~~ THEN REPLY @72 GOTO KIPC3.7
END

IF ~~ THEN BEGIN KIPC3.3
SAY @75
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN KIPC3.4
SAY @76
= @77
IF ~~ THEN REPLY @70 GOTO KIPC3.5
IF ~~ THEN REPLY @71 GOTO KIPC3.6
IF ~~ THEN REPLY @72 GOTO KIPC3.7
END

IF ~~ THEN BEGIN KIPC3.5
SAY @78
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN KIPC3.6
SAY @79
IF ~~ THEN REPLY @80 GOTO KIPC3.5
IF ~~ THEN REPLY @81 GOTO KIPC3.8
END

IF ~~ THEN BEGIN KIPC3.7
SAY @82
= @83
IF ~~ THEN REPLY @84 GOTO KIPC3.9
IF ~~ THEN REPLY @85 GOTO KIPC3.10
IF ~~ THEN REPLY @86 GOTO KIPC3.5
END

IF ~~ THEN BEGIN KIPC3.8
SAY @87
= @88
IF ~~ THEN REPLY @84 GOTO KIPC3.9
IF ~~ THEN REPLY @85 GOTO KIPC3.10
IF ~~ THEN REPLY @86 GOTO KIPC3.5
END

IF ~~ THEN BEGIN KIPC3.9
SAY @89
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN KIPC3.10
SAY @90
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF WEIGHT #990 ~
Global("P#KivanLoveTalk","GLOBAL",6)
~ THEN BEGIN KIST3
SAY @91
++ @92 DO ~RestParty()~ EXIT
++ @93 + KIST3.1
++ @94 + KIST3.2
END

IF ~~ KIST3.1
SAY @95
++ @96 + KIST3.3
++ @97 + KIST3.4
++ @98 + KIST3.5
END

IF ~~ KIST3.2
SAY @99
++ @100 + KIST3.3
++ @101 + KIST3.6
++ @102 + KIST3.7
END

IF ~~ KIST3.3
SAY @103
++ @104 + KIST3.8
++ @105 + KIST3.9
++ @106 DO ~RestParty()~ EXIT
END

IF ~~ KIST3.4
SAY @107
++ @108 + KIST3.3
++ @109 DO ~RestParty() SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
++ @110 + KIST3.10
END

IF ~~ KIST3.5
SAY @111
++ @108 + KIST3.3
++ @109 DO ~RestParty() SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
++ @110 + KIST3.10
END

IF ~~ KIST3.6
SAY @112
++ @108 + KIST3.3
++ @109 DO ~RestParty() SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
++ @110 + KIST3.10
END

IF ~~ KIST3.7
SAY @113
++ @108 + KIST3.3
++ @109 DO ~RestParty() SetGlobal("P#KivanRomanceInactive","GLOBAL",1)~ EXIT
++ @110 + KIST3.10
END

IF ~~ KIST3.8
SAY @114
++ @115 + KIST3.11
++ @116 + KIST3.10
END

IF ~~ KIST3.9
SAY @117
+ ~!Class(Player1, CLERIC_ALL) !Class(Player1, SORCERER) !Class(Player1, MAGE_ALL) !Class(Player1, BARD) !Class(Player1, PALADIN) !Class(Player1, DRUID_ALL) !Class(Player1, RANGER_ALL)~ + @118 DO ~RestParty()~ EXIT
+ ~OR(7) Class(Player1, CLERIC_ALL) Class(Player1, SORCERER) Class(Player1, MAGE_ALL) Class(Player1, BARD_ALL) Class(Player1, PALADIN_ALL) Class(Player1, DRUID_ALL) Class(Player1, RANGER_ALL)~ + @118 DO ~RestParty() RealSetGlobalTimer("P#KiDreamCatcherTime","GLOBAL",7200)~ EXIT
++ @119 + KIST3.10
++ @120 EXIT
END

IF ~~ KIST3.11
SAY @121
IF ~~ THEN GOTO KIST3.10
END

IF ~~ KIST3.10
SAY @122
= @123
= @124
= @125
= @126
+ ~!Class(Player1, CLERIC_ALL) !Class(Player1, SORCERER) !Class(Player1, MAGE_ALL) !Class(Player1, BARD_ALL) !Class(Player1, PALADIN) !Class(Player1, DRUID_ALL) !Class(Player1, RANGER_ALL)~ + @127 DO ~RestParty()~ EXIT
+ ~OR(7) Class(Player1, CLERIC_ALL) Class(Player1, SORCERER) Class(Player1, MAGE_ALL) Class(Player1, BARD_ALL) Class(Player1, PALADIN_ALL) Class(Player1, DRUID_ALL) Class(Player1, RANGER_ALL)~ + @128 DO ~RestParty() RealSetGlobalTimer("P#KiDreamCatcherTime","GLOBAL",7200)~ EXIT
++ @120 EXIT
END

IF ~~ KIAN1.2.1
SAY @129
IF ~~ THEN EXIT
END

END

APPEND P#KIVJ

IF WEIGHT #990
~Global("P#KivanSweetTalk","GLOBAL",2)~ THEN BEGIN KIALT1
SAY @130
++ @131 + P#KIALT1.1
++ @132 + P#KIALT1.2 
++ @133 + P#KIAT1.3 
END

IF ~~ P#KIALT1.1
SAY @134
++ @135 + P#KIAT1.4
++ @136 + P#KIALT1.5
++ @137 EXIT
++ @138 + P#KIALT1.13
END

IF ~~ P#KIALT1.2
SAY @139
++ @140 + P#KIALT1.6
++ @141 + P#KIALT1.7
++ @142 + P#KIALT1.8
++ @143 + P#KIALT1.14
END

IF ~~  P#KIAT1.3
SAY @144
++ @145  + P#KIALT1.9
++ @146  + P#KIALT1.10
++ @147 + P#KIALT1.11
++ @148 EXIT
END

IF ~~  P#KIAT1.4
SAY @149
++ @137 EXIT
++ @150 + P#KIALT1.2 
++ @151 + P#KIALT1.12
END

IF ~~ P#KIALT1.5
SAY @152
++ @145  + P#KIALT1.9
++ @146  + P#KIALT1.10
++ @153 + P#KIALT1.12
++ @148 EXIT
++ @143 + P#KIALT1.14
END

IF ~~ P#KIALT1.6
SAY @154
++ @155 + P#KIALT1.14
++ @156 + P#KIALT1.7
++ @143 + P#KIALT1.14
END

IF ~~  P#KIALT1.7
SAY @121
= @157
IF ~~ THEN EXIT
END

IF ~~  P#KIALT1.8
SAY @158
IF ~~ THEN EXIT
END

IF ~~ P#KIALT1.9
SAY @159
= @160
IF ~~ THEN EXIT
END

IF ~~ P#KIALT1.10
SAY @161
IF ~~ THEN EXIT
END

IF ~~ P#KIALT1.11
SAY @162
= @163
++ @140 + P#KIALT1.6
++ @141 + P#KIALT1.7
++ @142 + P#KIALT1.8
++ @143 + P#KIALT1.14
END

IF ~~ P#KIALT1.12
SAY @164
= @161
IF ~~ THEN EXIT
END

IF ~~ P#KIALT1.13
SAY @165
++ @166 + P#KIALT1.5
++ @137 EXIT
++ @167 GOTO P#KIALT1.10
END

IF ~~ P#KIALT1.14
SAY @168
IF ~~ THEN EXIT
END

IF WEIGHT #990
~Global("P#KivanSweetTalk","GLOBAL",4)~ THEN BEGIN KIALT2
SAY @169
++ @170 + KILTA2.1
++ @171 + KILTA2.2
+~Race(Player1,ELF)~+ @172 + KILTA2.3E
+~!Race(Player1,ELF)~+ @172 + KILTA2.3
++ @173 + KILTA2.4
END

IF ~~ KILTA2.1
SAY @174
++ @171 + KILTA2.2
+~Race(Player1,ELF)~+ @172 + KILTA2.3E
+~!Race(Player1,ELF)~+ @172 + KILTA2.3
++ @173 + KILTA2.4
END

IF ~~ KILTA2.2
SAY @175 
++ @176 + KILTA2.5
+~Race(Player1,ELF)~+ @172 + KILTA2.3E
+~!Race(Player1,ELF)~+ @172 + KILTA2.3
+~Race(Player1,ELF)~+ @177 + KILTA2.6E
+~!Race(Player1,ELF)~+ @178 + KILTA2.6
END

IF ~~ KILTA2.3E
SAY @179
= @180
+~Race(Player1,ELF)~+ @181 + KILTA2.7E
+~!Race(Player1,ELF)~+ @182 + KILTA2.7
++ @183 + KILTA2.8
++ @184 + KILTA2.9
++ @185 + KILTA2.10
END

IF ~~ KILTA2.3
SAY @186
= @187
++ @188 + KILTA2.7
++ @183 + KILTA2.8
++ @185 + KILTA2.10
END

IF ~~ KILTA2.4
SAY @189 
+~Race(Player1,ELF)~+ @172 + KILTA2.3E
+~!Race(Player1,ELF)~+ @172 + KILTA2.3
+~Race(Player1,ELF)~+ @177 + KILTA2.6E
+~!Race(Player1,ELF)~+ @178 + KILTA2.6
END

IF ~~ KILTA2.5
SAY @190
+~Race(Player1,ELF)~+ @191 + KILTA2.6E
+~!Race(Player1,ELF)~+ @192 + KILTA2.6
++ @183 + KILTA2.8
+~Race(Player1,ELF)~+ @184 + KILTA2.9
++ @185 + KILTA2.10
END

IF ~~ KILTA2.6
SAY @193
= @194
++ @195 + KILTA2.7
++ @183 + KILTA2.8
+~Race(Player1,ELF)~+ @184 + KILTA2.9
++ @196 + KILTA2.10
END


IF ~~ KILTA2.6E
SAY @197
= @194
++ @195 + KILTA2.7
++ @183 + KILTA2.8
+~Race(Player1,ELF)~+ @184 + KILTA2.9
++ @196 + KILTA2.10
END


IF ~~ KILTA2.7
SAY @198
= @199
++ @200 + KILTA2.11
++ @201 EXIT
++ @202 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~EXIT
END

IF ~~ KILTA2.7E
SAY @198
= @199
++ @200 + KILTA2.11
++ @201 EXIT
++ @202 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~EXIT
END

IF ~~ KILTA2.8
SAY @203
= @204
++ @200 + KILTA2.11
++ @201 EXIT
++ @202 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~EXIT
END

IF ~~  KILTA2.9
SAY @205
= @206
++ @200 + KILTA2.11
++ @201 EXIT
++ @202 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~EXIT
END

IF ~~  KILTA2.10
SAY @207
= @208
= @206
++ @200 + KILTA2.11
++ @201 EXIT
++ @202 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~EXIT
END

IF ~~ KILTA2.11
SAY @209
++ @210 + KILTA2.12
++ @211 + KILTA2.13
++ @212 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",3)~EXIT
END

IF ~~ KILTA2.12
SAY @213
IF ~~ THEN EXIT 
END

IF ~~ KILTA2.13
SAY @214
IF ~~ THEN EXIT 
END

//At Rest

IF WEIGHT #990
~Global("P#KivanEmbersTalk","GLOBAL",1)~ THEN BEGIN KIALT3
SAY @215
++ @216 DO ~SetGlobal("P#KivanEmbersTalk","GLOBAL",2) RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL",100)~ + KILTA3.1
++ @217 DO ~SetGlobal("P#KivanEmbersTalk","GLOBAL",2) RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL",100)~ + KILTA3.2
++ @218 DO ~SetGlobal("P#KivanEmbersTalk","GLOBAL",2) RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL",100) IncrementGlobal("P#KivanOffence","GLOBAL",2) RestParty()~EXIT
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL) HPPercentLT("P#Kivan",90)~ + @219 DO ~SetGlobal("P#KivanEmbersTalk","GLOBAL",2) RealSetGlobalTimer("P#KiLoveTalkTime","GLOBAL",100)~ +  KILTA3.3
END

IF ~~ KILTA3.1
SAY @220
++ @221 +  KILTA3.4
++ @222 +  KILTA3.4
++ @223 +  KILTA3.4
++ @224 +  KILTA3.5
++ @225 DO  ~RestParty()~EXIT
END

IF ~~ KILTA3.2
SAY @226
= @227
++ @221 +  KILTA3.4
++ @222 +  KILTA3.4
++ @223 +  KILTA3.4
++ @224 +  KILTA3.5
++ @225 DO  ~RestParty()~EXIT
END

IF ~~ KILTA3.3
SAY @228
= @227
++ @221 +  KILTA3.4
++ @222 +  KILTA3.4
++ @223 +  KILTA3.4
++ @224 +  KILTA3.5
++ @225 DO  ~RestParty()~EXIT
END

IF ~~ KILTA3.4
SAY @229
= @230 
= @231
= @232
++ @233 DO  ~RestParty()~EXIT
++ @234 DO ~ RestParty()~EXIT
++ @235 + KILTA3.6
++ @236 + KILTA3.7
END

IF ~~  KILTA3.5
SAY @237
= @238 
= @239
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) RestParty()~EXIT
END

IF ~~ KILTA3.6
SAY @240
++ @233 DO  ~RestParty()~EXIT
++ @241 + KILTA3.7
END

IF ~~ KILTA3.7 
SAY @242
++ @243 EXIT
++ @244 DO ~SetGlobal("P#KiWarmth", "GLOBAL",1) RestParty()~ EXIT
++ @245 + KILTA3.8A
++ @246 DO ~SetGlobal("P#KiLace", "GLOBAL",1) RestParty()~ EXIT
END

IF ~~ KILTA3.8A
SAY @247
IF ~~ THEN DO  ~RestParty()~EXIT
END

//Morning After 1

IF WEIGHT #990
~Global("P#KiWarmth", "GLOBAL",2)~ THEN BEGIN KILTA3.8
SAY @248
++ @249 DO ~SetGlobal("P#KiWarmth", "GLOBAL",3)~ + KILTA3.8.1
++ @250 DO ~SetGlobal("P#KiWarmth", "GLOBAL",3)~ + KILTA3.8.2
++ @251 DO ~SetGlobal("P#KiWarmth", "GLOBAL",3)~ + KILTA3.8.3
END

IF ~~ KILTA3.8.1
SAY @252
IF ~~ THEN GOTO KILTA3.8.3
END

IF ~~ KILTA3.8.2
SAY @253
IF ~~ THEN EXIT
END 

IF ~~ KILTA3.8.3
SAY @254
IF ~~ THEN EXIT
END 

IF WEIGHT #990
~Global("P#KiLace", "GLOBAL",2)~ THEN BEGIN KILTA3.9
SAY @255
IF ~~ THEN DO ~SetGlobal("P#KiLace", "GLOBAL",3)~ EXIT
END

//Stars in the Night Time Outdoors

IF WEIGHT #990
~Global("P#KivanStars","GLOBAL",1)~ THEN BEGIN KILTA4.0
SAY @256
= @257
= @258
= @259
++ @260 DO ~SetGlobal("P#KivanStars","GLOBAL",2)~ + KILTA4.1
++ @261 DO ~SetGlobal("P#KivanStars","GLOBAL",2)~ + KILTA4.2
END

IF ~~ KILTA4.1
SAY @262
IF ~~ THEN GOTO KILTA4.2
END

IF ~~ KILTA4.2
SAY @263
++ @264 + KILTA4.3
++ @265 + KILTA4.4
++ @266 + KILTA4.5
END

IF ~~ KILTA4.3
SAY @267
++ @268 + KILTA4.6
++ @269 + KILTA4.4
++ @270 + KILTA4.7
END

IF ~~ KILTA4.4
SAY @271
++ @272 + KILTA4.8
++ @273 + KILTA4.7
END

IF ~~ KILTA4.5
SAY @274
++ @272 + KILTA4.8
++ @273 + KILTA4.7
END

IF ~~ KILTA4.6
SAY @275
++ @276 + KILTA4.8
++ @273 + KILTA4.7
END

IF ~~ KILTA4.7
SAY @277
++ @278  + KILTA4.8
++ @279 EXIT
++ @280 + KILTA4.9
END

IF ~~ KILTA4.8
SAY @281
IF ~~ THEN EXIT
END

IF ~~ KILTA4.9
SAY @282
++ @278  + KILTA4.8
++ @279 EXIT
++ @283 + KILTA4.10
END

IF ~~ KILTA4.10
SAY @284
IF ~~ THEN EXIT
END

//The Good Looking Tease in a Dungeon

IF WEIGHT #990
~Global("P#KivanDungeon","GLOBAL",1)~ THEN BEGIN KILTA5.0
SAY @285
+ ~!Race(Player1, ELF)~ + @286 DO ~RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1) SetGlobal("P#KivanDungeon","GLOBAL",2)~ + KILTA5.1
+ ~Race(Player1, ELF)~ + @287 DO ~RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1) SetGlobal("P#KivanDungeon","GLOBAL",2)~ + KILTA5.2
+ ~!InParty("aerie")~+ @288 DO ~RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1) SetGlobal("P#KivanDungeon","GLOBAL",2)~ + KILTA5.3
+ ~InParty("aerie")~+ @289 DO ~RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1) SetGlobal("P#KivanDungeon","GLOBAL",2)~ + KILTA5.4
++ @290 DO ~RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1) SetGlobal("P#KivanDungeon","GLOBAL",2)~ + KILTA5.5
END

IF ~~ KILTA5.1
SAY @291
+ ~CheckStatGT(Player1,14,DEX)~ + @292 + KILTA5.7
+ ~CheckStatGT(Player1,9,INT)~ + @293 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,1)~ + @294 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,2)~ + @295 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,3)~ + @295 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,4)~ + @296 + KILTA5.9
++ @297 EXIT
END

IF ~~ KILTA5.2
SAY @298
++ @299 + KILTA5.10
++ @300 + KILTA5.11
++ @301 + KILTA5.12
END 

IF ~~ KILTA5.3
SAY @302
= @303
+ ~CheckStatGT(Player1,9,INT)~ + @304 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,1)~ + @305 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,2)~ + @306 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,3)~ + @306 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,4)~ + @306 + KILTA5.9
++ @297 EXIT
++ @307 + KILTA5.6
END

IF ~~ KILTA5.4
SAY @302
= @308
= @309
+ ~CheckStatGT(Player1,9,INT)~ + @304 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,1)~ + @305 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,2)~ + @306 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,3)~ + @306 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,4)~ + @306 + KILTA5.9
++ @297 EXIT
++ @307 + KILTA5.6
END

IF ~~ KILTA5.5
SAY @310
+ ~CheckStatGT(Player1,14,DEX)~ + @311 + KILTA5.7
+ ~CheckStatGT(Player1,9,INT)~ + @312 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,1)~ + @313 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,2)~ + @314 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,3)~ + @314 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,4)~ + @314 + KILTA5.9
++ @315 EXIT
END

IF ~~ KILTA5.6
SAY @316
+ ~CheckStatGT(Player1,9,INT)~ + @304 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,1)~ + @305 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,2)~ + @306 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,3)~ + @306 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,4)~ + @306 + KILTA5.9
++ @297 EXIT
END

IF ~~ KILTA5.7
SAY @317
+ ~CheckStatGT(Player1,9,INT)~ + @312 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,1)~ + @318 + KILTA5.8
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,2)~ + @319 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,3)~ + @319 + KILTA5.9
+ ~!CheckStatGT(Player1,9,INT) RandomNum(4,4)~ + @319 + KILTA5.9
++ @315 EXIT
END

IF ~~ KILTA5.8
SAY @320
= @321
++ @299 + KILTA5.10
++ @300 + KILTA5.11
++ @301 + KILTA5.12
END 

IF ~~ KILTA5.9
SAY @322
= @323
IF ~~ THEN EXIT
END

IF ~~ KILTA5.10
SAY @324
IF ~~ THEN EXIT
END

IF ~~ KILTA5.11
SAY @325
++ @326 EXIT
++ @301 + KILTA5.12
++ @327 + KILTA5.13
END 

IF ~~ KILTA5.12
SAY @328
++ @329 + KILTA5.14
++ @330 + KILTA5.15
++ @331 + KILTA5.16
++ @332 + KILTA5.17
END

IF ~~ KILTA5.13
SAY @333
IF ~~ THEN EXIT
END

IF ~~ KILTA5.14
SAY @334
++ @335 + KILTA5.18
++ @336 + KILTA5.19
++ @337 + KILTA5.17
END

IF ~~ KILTA5.15
SAY @338
IF ~~ THEN EXIT 
END

IF ~~ KILTA5.16
SAY @339
IF ~~ THEN EXIT
END

IF ~~ KILTA5.17
SAY @340
IF ~~ THEN EXIT
END

IF ~~ KILTA5.18
SAY @341
IF ~~ THEN EXIT
END

IF ~~ KILTA5.19
SAY @342
= @343
IF ~~ THEN EXIT
END

//Continue with the Sweet Sequence

IF WEIGHT #990
~Global("P#KivanSweetTalk","GLOBAL",6)~ THEN BEGIN KILTA6.0
SAY @344
++ @345 + KILTA6.1
++ @346 + KILTA6.2
++ @347 + KILTA6.3
++ @348 + KILTA6.4
++ @349 EXIT
END

IF ~~ KILTA6.1
SAY @350
++ @348 + KILTA6.4
++ @351 + KILTA6.5
++ @352 + KILTA6.6
++ @349 EXIT
END

IF ~~  KILTA6.2
SAY @353
++ @348 + KILTA6.4
++ @351 + KILTA6.5
++ @352 + KILTA6.6
++ @349 EXIT
END

IF ~~ KILTA6.3
SAY @354
++ @348 + KILTA6.4
++ @351 + KILTA6.5
++ @352 + KILTA6.6
++ @349 EXIT
END

IF ~~ KILTA6.4
SAY @355
= @356
++ @357 EXIT
++ @358 + KILTA6.7
++ @359 EXIT
END

IF ~~ KILTA6.5
SAY @360
++ @361 + KILTA6.8
++ @348 + KILTA6.4
++ @359 EXIT
END

IF ~~ KILTA6.6
SAY @362
= @363
IF ~~ THEN EXIT
END

IF ~~ KILTA6.7
SAY @364
++ @365 + KILTA6.9
++ @366 + KILTA6.10
++ @367 EXIT
END

IF ~~  KILTA6.8
SAY @368
= @340
++ @348 + KILTA6.4
++ @369 EXIT
END

IF ~~ KILTA6.9
SAY @370 
= @371
IF ~~ THEN EXIT
END

IF ~~ KILTA6.10
SAY @372
IF ~~ THEN EXIT
END

IF WEIGHT #990
~Global("P#KivanSweetTalk","GLOBAL",8)~ THEN BEGIN KILTA7.0
SAY @373
+ ~CheckStatGT(Player1,13,INT)~+ @374 + KILTA7.1
++ @375 + KILTA7.2
++ @376 + KILTA7.3
END

IF ~~ KILTA7.1
SAY @377
= @378
++ @379 EXIT
++ @380 + KILTA7.4
++ @381 + KILTA7.5
END

IF ~~ KILTA7.2
SAY @382
++ @383 EXIT
++ @380 + KILTA7.4
++ @381 + KILTA7.5
END

IF ~~ KILTA7.3
SAY @384
IF ~~ THEN EXIT
END

IF ~~ KILTA7.4
SAY @385
++ @386 + KILTA7.6
++ @387 + KILTA7.7
++ @388+ KILTA7.8
++ @389 EXIT
END

IF ~~ KILTA7.5
SAY @390
++ @391+ KILTA7.9
++ @387 + KILTA7.7
++ @388+ KILTA7.8
++ @389 EXIT
END

IF ~~ KILTA7.6
SAY @392
++ @393 + KILTA7.10
++ @391+ KILTA7.11
++ @388+ KILTA7.8
++ @389 EXIT
END

IF ~~ KILTA7.7
SAY @394
++ @395+ KILTA7.12
++ @396+ KILTA7.8
++ @389 EXIT
END

IF ~~  KILTA7.8
SAY @397
++ @398 + KILTA7.13
++ @399 + KILTA7.14
++ @389 EXIT
END

IF ~~ KILTA7.9
SAY @400
++ @401 + KILTA7.7
++ @389 EXIT
END

IF ~~ KILTA7.10
SAY @317
++ @402+ KILTA7.15
++ @403+ KILTA7.8
++ @389 EXIT
END

IF ~~ KILTA7.11
SAY @404
++ @405+ KILTA7.15
++ @406+ KILTA7.8
++ @389 EXIT
END

IF ~~  KILTA7.12
SAY @407
++ @396+ KILTA7.8
++ @389 EXIT
END

IF ~~  KILTA7.13
SAY @408
IF ~~ THEN DO ~SetGlobal("P#KivanRain","GLOBAL",1)~ EXIT
END

IF ~~ KILTA7.14
SAY @409
IF ~~ THEN DO ~SetGlobal("P#KivanRain","GLOBAL",1)~ EXIT
END

IF ~~ KILTA7.15
SAY @410
++ @411+ KILTA7.8
++ @412 EXIT
END


//Virga Talk

IF WEIGHT #990
~Global("P#KivanVirgaTalk","GLOBAL",2)~ THEN BEGIN KIVirga
SAY @413
++ @414 DO ~SetGlobal("P#KivanVirgaTalk","GLOBAL",3)~ + KILTA8.1
++ @415 DO ~SetGlobal("P#KivanVirgaTalk","GLOBAL",3)~ + KILTA8.2
++ @416 DO ~SetGlobal("P#KivanVirgaTalk","GLOBAL",3)~ + KILTA8.3
++ @417 DO ~SetGlobal("P#KivanVirgaTalk","GLOBAL",3)~ + KILTA8.4
++ @418 DO ~SetGlobal("P#KivanVirgaTalk","GLOBAL",3)~ + KILTA8.5
END

IF ~~  KILTA8.1
SAY @419
++ @420 EXIT
++ @421 + KILTA8.2
++ @422 EXIT
END

IF ~~ KILTA8.2
SAY @423
++ @424 + KILTA8.6
++ @425 + KILTA8.7
++ @426 EXIT
END

IF ~~ KILTA8.3
SAY @427
++ @424 + KILTA8.6
++ @428 + KILTA8.7
++ @426 EXIT
END

IF ~~ KILTA8.4
SAY @429
IF ~~ THEN EXIT
END

IF ~~  KILTA8.5
SAY @430
++ @431 EXIT
++ @432 + KILTA8.2
++ @422 EXIT
END

IF ~~ KILTA8.6
SAY @433 
IF ~~ THEN EXIT
END

IF ~~ KILTA8.7
SAY @434
= @435
IF ~~ THEN EXIT
END

//Another Normal Sequence

IF WEIGHT #990
~Global("P#KivanSweetTalk","GLOBAL",10)~ THEN BEGIN KILTA9.0
SAY @436
++ @437 + KILTA9.1
++ @438 + KILTA9.2
++ @439 + KILTA9.3
++ @440 + KILTA9.4
END

IF ~~ KILTA9.1
SAY @441
++ @442 + KILTA9.5
++ @443 + KILTA9.6
++ @444 EXIT
++ @445 + KILTA9.7
++ @446 + KILTA9.8
END


IF ~~ KILTA9.2
SAY @447
++ @448 + KILTA9.1
++ @439 + KILTA9.3
++ @444 EXIT
++ @445 + KILTA9.7
++ @446 + KILTA9.8
++ @443 + KILTA9.6
END

IF ~~ KILTA9.3
SAY @449
++ @444 EXIT
++ @445 + KILTA9.7
++ @446 + KILTA9.8
++ @450 + KILTA9.9
++ @451 + KILTA9.6
END

IF ~~ KILTA9.4
SAY @452
++ @453 EXIT
++ @454 + KILTA9.10
++ @443 + KILTA9.6
END

IF ~~ KILTA9.5
SAY @455
++ @444 EXIT
++ @456 + KILTA9.7
++ @443 + KILTA9.6
END

IF ~~ KILTA9.6
SAY @457
= @458
++ @459 + KILTA9.11
++ @460 EXIT
++ @461 EXIT
END

IF ~~ KILTA9.7
SAY @462
++ @463 EXIT
++ @443 + KILTA9.6
END

IF ~~  KILTA9.8
SAY @464
++ @465 + KILTA9.12
++ @466 EXIT
++ @463 EXIT
++ @443 + KILTA9.6
END

IF ~~ KILTA9.9
SAY @467
++ @466 EXIT
++ @468 EXIT
++ @443 + KILTA9.6
END

IF ~~ KILTA9.10
SAY @469
++ @463 EXIT
++ @443 + KILTA9.6
END

IF ~~ KILTA9.11
SAY @470
++ @471 + KILTA9.13
++ @472 + KILTA9.14
++ @463 EXIT
END

IF ~~ KILTA9.12
SAY @473
IF ~~ THEN EXIT
END

IF ~~ KILTA9.13
SAY @474
IF ~~ THEN EXIT
END

IF ~~ KILTA9.14
SAY @475
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",3)~ EXIT 
END

END

