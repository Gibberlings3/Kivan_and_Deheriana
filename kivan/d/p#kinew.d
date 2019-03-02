ADD_TRANS_ACTION BHOISIG BEGIN 0 END BEGIN
END
~SetGlobal("P#GaalSpoke","GLOBAL",1)~

APPEND P#KIVJ

//Catching up Cycle, new

IF WEIGHT #990
~Global("P#KivanCatch","GLOBAL",2)~ THEN BEGIN KivanCatch1
SAY @0
++ @1 + KIOL1.1
++ @2 + KIOL1.2
++ @3 + KIOL1.3
++ @4 + KIOL1.4
+ ~Gender(Player1,FEMALE)~ + @5 + KIOL1.5
END

IF ~~ KIOL1.17
SAY @6
IF ~~ THEN EXIT
END

IF ~~ KIOL1.16
SAY @7
IF ~~ THEN EXIT
END

IF ~~ KIOL1.15
SAY @8
IF ~~ THEN EXIT
END

IF ~~ KIOL1.14
SAY @9
++ @10 + KIOL1.15
++ @11 + KIOL1.16
+ ~Class(Player1,BARD_ALL)~+ @12 + KIOL1.17
++ @13 EXIT
++ @14 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXIT
END

IF ~~ KIOL1.13
SAY @15
= @16
IF ~~ THEN EXIT
END

IF ~~ KIOL1.12
SAY @17
= @18
IF ~~ THEN EXIT
END


IF ~~ KIOL1.11
SAY @19
IF ~~ THEN EXIT
END

IF ~~ KIOL1.10
SAY @20
IF ~~ THEN EXIT
END

IF ~~ KIOL1.9
SAY @21
++ @22 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIOL1.5A
++ @23 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIOL1.5A
++ @24 + KIOL1.5A
++ @25 + KIOL1.5A
+ ~OR(4) 
Global("J#KelseyRomanceActive","GLOBAL",1)
Global("TsujathaRomanceActive","GLOBAL",1)
GlobalGT("SolaTalk","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",1)
~ + @26  DO ~IncrementGlobal("P#KivanLove","GLOBAL",-10)~ + KIOL1.5B
+ ~OR(2)
Global("ChloeRomanceActiveCR","GLOBAL",1)
Global("ImoenRomanceActive","GLOBAL",1)
~ + @27  DO ~IncrementGlobal("P#KivanLove","GLOBAL",-10)~ + KIOL1.5B
END

IF ~~ KIOL1.8
SAY @28
IF ~~ THEN EXIT
END

IF ~~ KIOL1.7
SAY @29
++ @30 + KIOL1.12
++ @31 + KIOL1.13
++ @32 EXIT
END

IF ~~ KIOL1.6
SAY @33
++ @34 + KIOL1.11
++ @35 EXIT
++ @36 EXIT
END

IF ~~ KIOL1.5
SAY @37
++ @22 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIOL1.5A
++ @23 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIOL1.5A
++ @24 + KIOL1.5A
++ @25 + KIOL1.5A
+ ~OR(4) 
Global("J#KelseyRomanceActive","GLOBAL",1)
Global("TsujathaRomanceActive","GLOBAL",1)
GlobalGT("SolaTalk","GLOBAL",1)
Global("H#ValygarRomanceActive","GLOBAL",1)~ + @26  DO ~IncrementGlobal("P#KivanLove","GLOBAL",-10)~ + KIOL1.5B
+ ~OR(2)
Global("ChloeRomanceActiveCR","GLOBAL",1)
Global("ImoenRomanceActive","GLOBAL",1)~ + @27  DO ~IncrementGlobal("P#KivanLove","GLOBAL",-10)~ + KIOL1.5B
END

IF ~~ KIOL1.5A
SAY @38
++ @39 DO ~IncrementGlobal("P#KivanOffence","GLOBAL", 1) IncrementGlobal("P#KivanLove","GLOBAL",-1)~ + KIOL1.10
++ @40 EXIT
++ @41 + KIOL1.14
END

IF ~~ KIOL1.5B
SAY @42
IF ~~ THEN EXIT
END

IF ~~ KIOL1.4
SAY @43
++ @44 + KIOL1.6
++ @45 + KIOL1.7
++ @46 + KIOL1.8
+ ~Gender(Player1,FEMALE)~ + @5 + KIOL1.9
END

IF ~~ KIOL1.3
SAY @47
++ @44 + KIOL1.6
++ @45 + KIOL1.7
++ @46 + KIOL1.8
+ ~Gender(Player1,FEMALE)~ + @5 + KIOL1.9
END

IF ~~ KIOL1.2
SAY @48
= @43
++ @44 + KIOL1.6
++ @45 + KIOL1.7
++ @46 + KIOL1.8
+ ~Gender(Player1,FEMALE)~ + @5 + KIOL1.9
END

IF ~~ KIOL1.1
SAY @49
++ @44 + KIOL1.6
++ @45 + KIOL1.7
++ @46 + KIOL1.8
+ ~Gender(Player1,FEMALE)~ + @5 + KIOL1.9
END

//

IF WEIGHT #990
~Global("P#KivanCatch","GLOBAL",4)~ THEN BEGIN KivanCatch2
SAY @50
++ @51 + KIOL2.1
+ ~!Class(Player1,THIEF_ALL) !Class(Player1,RANGER_ALL)~ + @52 + KIOL2.2
++ @53 + KIOL2.3
END

IF ~~ KIOL2.18
SAY @54
IF ~~ THEN GOTO KIOL2.13
END


IF ~~ KIOL2.17
SAY @55
IF ~~ THEN GOTO KIOL2.13
END

IF ~~ KIOL2.16
SAY @56
++ @57 EXIT
++ @58 EXIT
++ @59 +  KIOL2.17
END 

IF ~~ KIOL2.15
SAY @60
IF ~~ THEN EXIT
END

IF ~~ KIOL2.14
SAY @61
IF ~~ THEN GOTO KIOL2.13
END

IF ~~ KIOL2.13
SAY @62
IF ~~ THEN GOTO KIOL2.10
END

IF ~~ KIOL2.12
SAY @63
IF ~~ THEN GOTO KIOL2.10
END

IF ~~ KIOL2.11
SAY @64
IF ~~ THEN EXIT
END

IF ~~ KIOL2.10
SAY @65
IF ~~ THEN EXIT
END

IF ~~ KIOL2.9
SAY @66
IF ~~ THEN EXIT
END  

IF ~~ KIOL2.8
SAY @67
IF ~~ THEN EXIT
END

IF ~~ KIOL2.7
SAY @68
++ @69   + KIOL2.16
++ @70   + KIOL2.17
++ @71   + KIOL2.18
END

IF ~~ KIOL2.6
SAY @72
+ ~!Class(Player1,THIEF_ALL) !Class(Player1,RANGER_ALL)~ + @73+ KIOL2.14
++ @74+ KIOL2.7
+~InParty("Yoshimo")~+ @75+ KIOL2.15
END

IF ~~ KIOL2.5
SAY @76
+ ~Gender(Player1,FEMALE)~ + @77 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIOL2.11
++ @78 + KIOL2.12
++ @79 + KIOL2.13
END

IF ~~ KIOL2.4
SAY @80
IF ~~ THEN  GOTO KIOL2.3
END

IF ~~ KIOL2.3
SAY @81
= @82
++ @83 + KIOL2.8
++ @84 + KIOL2.8
++ @85 + KIOL2.9
++ @86 + KIOL2.10
END

IF ~~ KIOL2.2
SAY @87
++ @88+ KIOL2.5
++ @89+ KIOL2.6
++ @74+ KIOL2.7
END

IF ~~ KIOL2.1
SAY @90
++ @91 + KIOL2.3
++ @92 + KIOL2.4
END

//
IF WEIGHT #990
~Global("P#KivanCatch","GLOBAL",6)~ THEN BEGIN KivanCatch3
SAY @93
++ @94 +  KIOL3.1
++ @95 +  KIOL3.2
++ @96 +  KIOL3.3
END

IF ~~  KIOL3.1
SAY @97
++ @98 EXIT
++ @95 +  KIOL3.2
++ @96 +  KIOL3.3
END

IF ~~ KIOL3.2
SAY @99
++ @100 + KIOL3.4
++ @101 + KIOL3.5
END

IF ~~ KIOL3.3
SAY @102
++ @103 + KIOL3.6
++ @104 + KIOL3.4
++ @105+ KIOL3.7
++ @106+ KIOL3.8
END

IF ~~ KIOL3.4
SAY @107
++ @108+ KIOL3.9
++ @109+ KIOL3.10
++ @110 + KIOL3.11
END

IF ~~  KIOL3.5
SAY @111
++ @112 + KIOL3.12
++ @113 + KIOL3.12
++ @114 +  KIOL3.3
END

IF ~~ KIOL3.6
SAY @115
++ @116 + KIOL3.14
++ @117 EXIT
++ @106+ KIOL3.8
END

IF ~~ KIOL3.7
SAY @118
IF ~~ THEN EXIT
END

IF ~~ KIOL3.8
SAY @119
IF ~~ THEN EXIT
END

IF ~~ KIOL3.9
SAY @120
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIOL3.10
SAY @121
+ ~InParty("Minsc")~+ @112 + KIOL3.12
++ @122 + KIOL3.12
++ @123 + KIOL3.11
++ @124 +  KIOL3.3
END

IF ~~ KIOL3.11
SAY @125
IF ~~ THEN EXIT
END

IF ~~ KIOL3.12
SAY @126
IF ~~ THEN EXIT
END

//no 3.13//

IF ~~ KIOL3.14
SAY @127
IF ~~ THEN EXIT
END

IF WEIGHT #990
~Global("P#KivanCatch","GLOBAL",8)~ THEN BEGIN KivanCatch4
SAY @128
++ @129 +  KIOL4.1
++ @130 +  KIOL4.2
++ @131 +  KIOL4.3
++ @132  +  KIOL4.4
++ @133 +  KIOL4.5
++ @134 +  KIOL4.1
END

IF ~~ KIOL4.28
SAY @135
= @136
IF ~~ THEN EXIT
END

IF ~~ KIOL4.27
SAY @137
IF ~~ THEN EXIT
END

IF ~~ KIOL4.26
SAY @138
IF ~~ THEN EXIT
END

IF ~~ KIOL4.25
SAY @139
++ @140 + KIOL4.26
++ @141 + KIOL4.27
++ @142 + KIOL4.28
++ @143 + KIOL4.27
END

IF ~~ KIOL4.24
SAY @144
IF ~~ THEN EXIT
END

IF ~~ KIOL4.23
SAY @32
+ ~Race(Player1,ELF)~ + @145 +  KIOL4.24
+ ~!Race(Player1,ELF)~ + @145 +  KIOL4.25
++ @143 EXIT
++ @146 +  KIOL4.21
END

IF ~~ KIOL4.22
SAY @147
+ ~Race(Player1,ELF)~ + @148 +  KIOL4.24
+ ~!Race(Player1,ELF)~ + @148 +  KIOL4.25
++ @149 +  KIOL4.23
++ @143 EXIT
END

IF ~~ KIOL4.21
SAY @150
= @151
IF ~~ THEN EXIT
END

IF ~~ KIOL4.20
SAY @152
IF ~~ THEN EXIT
END

IF ~~ KIOL4.19
SAY @153
++ @154 +  KIOL4.21
++ @155 + KIOL4.18
END

IF ~~ KIOL4.18
SAY @156
++ @157 +  KIOL4.22
++ @158 +  KIOL4.23
+ ~Race(Player1,ELF)~ + @145 +  KIOL4.24
+ ~!Race(Player1,ELF)~ + @145 +  KIOL4.25
++ @143 EXIT
END

IF ~~ KIOL4.17
SAY @159
= @160
= @151
IF ~~ THEN EXIT
END

IF ~~ KIOL4.16
SAY @161
= @160
= @151
IF ~~ THEN EXIT
END

IF ~~ KIOL4.15
SAY @162
++ @163 +  KIOL4.21
++ @164 +  KIOL4.21
++ @165 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIOL4.14
SAY @166
IF ~~ THEN EXIT
END

IF ~~ KIOL4.13
SAY @167
IF ~~ THEN EXIT
END

IF ~~ KIOL4.12
SAY @168
IF ~~ THEN EXIT
END

IF ~~ KIOL4.11
SAY @169
++ @170 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ +  KIOL4.17
++ @171 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ +  KIOL4.18
++ @172 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ +  KIOL4.19
++ @173 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ +  KIOL4.20
END

IF ~~ KIOL4.10
SAY @174
= @151
IF ~~ THEN EXIT
END

IF ~~ KIOL4.9
SAY @175
++ @176 +  KIOL4.14
++ @177 +  KIOL4.15
++ @178 +  KIOL4.16
END

IF ~~ KIOL4.8
SAY @179
++ @180 +  KIOL4.12
++ @181 +  KIOL4.13
++ @182 EXIT
END

IF ~~ KIOL4.7
SAY @183
++ @180 +  KIOL4.12
++ @184 +  KIOL4.13
++ @182 EXIT
END

//no 4.6//

IF ~~ KIOL4.5
SAY @185
++ @186 +  KIOL4.7
++ @187 +  KIOL4.8
++ @188 +  KIOL4.9
++ @189 +  KIOL4.10
+ ~Gender(Player1,FEMALE)~ + @190 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ +  KIOL4.11
END

IF ~~ KIOL4.4
SAY @191
++ @192 +  KIOL4.7
++ @193 +  KIOL4.8
++ @194 +  KIOL4.9
++ @195 +  KIOL4.10
+ ~Gender(Player1,FEMALE)~ + @196 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ +  KIOL4.11
END


IF ~~ KIOL4.3
SAY @197
++ @198 +  KIOL4.7
++ @199 +  KIOL4.8
++ @200 +  KIOL4.9
++ @201 +  KIOL4.10
+ ~Gender(Player1,FEMALE)~ + @202 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ +  KIOL4.11
END


IF ~~ KIOL4.2
SAY @203
++ @192 +  KIOL4.7
++ @193 +  KIOL4.8
++ @204 +  KIOL4.9
++ @205 +  KIOL4.10
+ ~Gender(Player1,FEMALE)~ + @206 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ +  KIOL4.11
END

IF ~~ KIOL4.1
SAY @207
++ @208 +  KIOL4.7
++ @193 +  KIOL4.8
++ @204 +  KIOL4.9
++ @209 +  KIOL4.10
+ ~Gender(Player1,FEMALE)~ + @202 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ +  KIOL4.11
END

IF WEIGHT #990
~Global("P#KivanCatch","GLOBAL",10)~ THEN BEGIN KivanCatch5
SAY @210
++ @211 + KIOL5.7
+~!InParty("TLXan") !InParty("O#Xan") !InParty("Coran")~ + @212 + KIOL5.1
+~OR(3) InParty("TLXan") InParty("O#Xan") InParty("Coran")~ + @213 + KIOL5.6A
++ @214 EXIT
END

IF ~~ KIOL5.14
SAY @215
IF ~~ THEN EXIT
END

IF ~~ KIOL5.13
SAY @216
= @217
IF ~~ THEN EXIT
END

IF ~~ KIOL5.12
SAY @218
IF ~~ THEN EXIT
END

IF ~~ KIOL5.11
SAY @219
IF ~~ THEN EXIT
END

IF ~~ KIOL5.10
SAY @220
++ @221 + KIOL5.13
++ @222 + KIOL5.14
++ @223 DO ~IncrementGlobal("P#KIVANOFFENCE","GLOBAL",1)~ EXIT
END

IF ~~ KIOL5.9
SAY @224
IF ~~ THEN EXIT
END

IF ~~ KIOL5.8
SAY @225
++ @226 +  KIOL5.12
+ ~OR(9) InParty("aerie")
InParty("anomen")
InParty("cernd") 
InParty("jan")
InParty("haerdalis")
InParty("nalia")
InParty("mazzy")
InParty("valygar")
InParty("keldorn")
~
+ @227 +  KIOL5.11
+ ~Gender(Player1,FEMALE)~ + @228 DO ~IncrementGlobal("P#KIVANLOVE","GLOBAL",1)~ +  KIOL5.12
END

IF ~~ KIOL5.7
SAY @229
++ @230 +  KIOL5.8
++ @231 +  KIOL5.9
++ @232 +  KIOL5.10
++ @233 +  KIOL5.10
+ ~OR(9) InParty("aerie")
InParty("anomen")
InParty("cernd") 
InParty("jan")
InParty("haerdalis")
InParty("nalia")
InParty("mazzy")
InParty("valygar")
InParty("keldorn")~
+ @227 +  KIOL5.11
END

IF ~~ KIOL5.7F
SAY @234
IF ~~ THEN GOTO KIOL5.7
END

IF ~~ KIOL5.7E
SAY @235
IF ~~ THEN GOTO KIOL5.7
END

IF ~~ KIOL5.7D
SAY @236
IF ~~ THEN GOTO KIOL5.7
END

IF ~~ KIOL5.7C
SAY @237
IF ~~ THEN GOTO KIOL5.7
END

IF ~~ KIOL5.7B
SAY @238
IF ~~ THEN GOTO KIOL5.7
END

IF ~~ KIOL5.7A
SAY @239
IF ~~ THEN GOTO KIOL5.7
END

IF ~~  KIOL5.6
SAY @240
++ @241 + KIOL5.7A
+ ~!InParty("A!Eldoth")~+ @242 + KIOL5.7B
++ @243 + KIOL5.7C
++ @244 + KIOL5.7D
+~!InParty("G#ALOR")~+ @245 + KIOL5.7E
++ @246 + KIOL5.7F
++ @247 + KIOL5.7
END

IF ~~  KIOL5.6A
SAY @248
++ @241 + KIOL5.7A
+ ~!InParty("A!Eldoth")~+ @242 + KIOL5.7B
++ @243 + KIOL5.7C
++ @244 + KIOL5.7D
+~!InParty("G#ALOR")~+ @245 + KIOL5.7E
++ @246 + KIOL5.7F
++ @249 + KIOL5.7
END

IF ~~  KIOL5.5
SAY @250
IF ~~ THEN GOTO KIOL5.6
END

IF ~~  KIOL5.4
SAY @251
IF ~~ THEN GOTO KIOL5.6
END

IF ~~  KIOL5.3
SAY @252
IF ~~ THEN GOTO KIOL5.6
END

IF ~~  KIOL5.2
SAY @253
IF ~~ THEN GOTO KIOL5.6
END

IF ~~ KIOL5.1 
SAY @254
++ @255 + KIOL5.2
++ @256 + KIOL5.3
+ ~Gender(Player1,FEMALE) Race(Player1,ELF)~ + @257 DO ~SetGlobal("P#KIVANLOVE","GLOBAL",-10)~+ KIOL5.4
+ ~Gender(Player1,FEMALE)~ + @258 DO ~SetGlobal("P#KIVANLOVE","GLOBAL",-10)~+ KIOL5.5  
END

//Acorn's Cycle, new

IF WEIGHT #990
~Global("P#KivanAcorns","GLOBAL",3)~ THEN BEGIN KivanAcorns1
SAY @259
++ @260 DO ~SetGlobal("P#KivanAcorns","GLOBAL",4)~ + KIPCS1.1
++ @261 DO ~SetGlobal("P#KivanAcorns","GLOBAL",4)~ + KIPCS1.2
++ @262 DO ~SetGlobal("P#KivanAcorns","GLOBAL",4)~ + KIPCS1.2A
++ @263 DO ~SetGlobal("P#KivanAcorns","GLOBAL",4)~ + KIPCS1.3
END

IF ~~ KIPCS1.1
SAY @264
++ @265 + KIPCS1.4
++ @262  + KIPCS1.2A
++ @263 + KIPCS1.3
END

IF ~~ KIPCS1.2
SAY @266
IF ~~ THEN GOTO KIPCS1.2A
END

IF ~~ KIPCS1.2A
SAY @267
++ @268 EXIT
++ @269 +  KIPCS1.4
++ @263 + KIPCS1.3
++ @270 +
KIPCS1.5
END

IF ~~ KIPCS1.3
SAY @271
++ @272 EXIT
++ @273 +  KIPCS1.6
END

IF ~~ KIPCS1.4
SAY @274
++ @275 EXIT
++ @276 +  KIPCS1.7
++ @277 +  KIPCS1.6
END

IF ~~ KIPCS1.5
SAY @278
++ @275 EXIT
++ @279 +  KIPCS1.7
++ @280 +  KIPCS1.6
END

IF ~~ KIPCS1.6A
SAY @281
IF ~~ THEN GOTO KIPCS1.6
END

IF ~~ KIPCS1.6
SAY @282
++ @283 +  
KIPCS1.8
++ @284 +  KIPCS1.9
++ @285 +
KIPCS1.10
END

IF ~~ KIPCS1.7
SAY @286
++ @287 + KIPCS1.6
++ @288 + KIPCS1.6A
++ @289 + KIPCS1.12
END

IF ~~ KIPCS1.8
SAY @290
IF ~~ THEN EXIT
END

IF ~~ KIPCS1.9
SAY @291
++ @292 EXIT
++ @293 + KIPCS1.12
++ @294 +  KIPCS1.10
END

IF ~~ KIPCS1.10
SAY @295
++ @296 +  KIPCS1.11
++ @297 +  KIPCS1.13
++ @298 +  KIPCS1.14
++ @299 +  KIPCS1.15
END

IF ~~ KIPCS1.11
SAY @300
IF ~~ THEN DO ~SetGlobal("P#IrenicusEyes","LOCALS",1)~ EXIT
END

IF ~~ KIPCS1.12
SAY @301
IF ~~ THEN EXIT
END

IF ~~ KIPCS1.13
SAY @302
IF ~~ THEN EXIT
END

IF ~~ KIPCS1.14
SAY @303
IF ~~ THEN EXIT
END

IF ~~ KIPCS1.15
SAY @304
IF ~~ THEN EXIT
END

//Acorns - 2 (if mentioned Irenicus' Eyes)

IF WEIGHT #990 
~Global("P#KivanAcorns","GLOBAL",5)~ THEN BEGIN KivanAcorns2
SAY @305
+ ~CheckStatLT(Player1,12,INT) !Race(Player1,ELF)~ + @306 DO ~SetGlobal("P#KivanAcorns","GLOBAL",6)~ + KIPCST2.1NE
+ ~CheckStatLT(Player1,12,INT) Race(Player1,ELF)~ + @306 DO ~SetGlobal("P#KivanAcorns","GLOBAL",6)~ + KIPCST2.1E
+ ~CheckStatGT(Player1,11,INT) !Race(Player1,ELF)~ + @307 DO ~SetGlobal("P#KivanAcorns","GLOBAL",6)~ + KIPCST2.2NE
+ ~CheckStatGT(Player1,11,INT) Race(Player1,ELF)~ + @308 DO ~SetGlobal("P#KivanAcorns","GLOBAL",6)~ + KIPCST2.2E
++ @309 DO ~SetGlobal("P#KivanAcorns","GLOBAL",6)~ EXIT
END

IF ~~ KIPCST2.1NE
SAY @310
++ @311 + KIPCST2.3
+ ~Gender(Player1,FEMALE)~ + @312 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.4
++ @313 + KIPCST2.5
END

IF ~~ KIPCST2.1E
SAY @314
++ @315 + KIPCST2.3E
+ ~Gender(Player1,FEMALE)~ + @316 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.4E
++ @317 + KIPCST2.5E
++ @318 + KIPCST2.6
+ ~Gender(Player1,FEMALE)~ + @319 DO~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.7
END

IF ~~ KIPCST2.2NE
SAY @320
++ @311 + KIPCST2.3
+ ~Gender(Player1,FEMALE)~ + @312 DO~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.4
++ @313 + KIPCST2.5
END

IF ~~ KIPCST2.2E
SAY @321
++ @322 + KIPCST2.3E
+ ~Gender(Player1,FEMALE)~ + @316 DO~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.4E
++ @317 + KIPCST2.5E
++ @318 + KIPCST2.6
+ ~Gender(Player1,FEMALE)~ + @319 DO~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.7
END

IF ~~ KIPCST2.3
SAY @323
++ @324 + KIPCST2.5
++ @325 + KIPCST2.8
END

IF ~~ KIPCST2.3E
SAY @326
+ ~Gender(Player1,FEMALE)~ + @316 DO~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.4E
++ @318 + KIPCST2.6
+ ~Gender(Player1,FEMALE)~ + @319 DO~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.7
END

IF ~~ KIPCST2.4
SAY @327
++ @328 DO ~IncrementGlobal("P#KivanLove","GLOBAL",2)~ + KIPCST2.9
++ @329 + KIPCST2.9
++ @330 + KIPCST2.8
END

IF ~~ KIPCST2.4E
SAY @327
++ @328 DO ~IncrementGlobal("P#KivanLove","GLOBAL",2)~ + KIPCST2.9E
++ @329 + KIPCST2.9E
END

IF ~~ KIPCST2.5
SAY @331
++ @332 + KIPCST2.10
++ @333 + KIPCST2.9
++ @334 + KIPCST2.11
+ ~Race(Player1,HALFORC)~ + @335 + KIPCST2.12
END

IF ~~ KIPCST2.5E
SAY @336
+ ~Gender(Player1,FEMALE)~ + @316 DO~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.4E
++ @318 + KIPCST2.6
+ ~Gender(Player1,FEMALE)~ + @319 DO~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST2.7
END
IF ~~ KIPCST2.6
SAY @337
IF ~~ THEN EXIT
END

IF ~~ KIPCST2.7
SAY @338
++ @339 + KIPCST2.13
++ @340 + KIPCST2.14
++ @341 DO~IncrementGlobal("P#KivanLove","GLOBAL",-2)~ EXIT
++ @342 EXIT
END

IF ~~ KIPCST2.8
SAY @343
= @344
IF ~~ THEN GOTO KIPCST2.5
END

IF ~~ KIPCST2.9
SAY @345
IF ~~ THEN EXIT
END

IF ~~ KIPCST2.9E
SAY @346
IF ~~ THEN EXIT
END

IF ~~ KIPCST2.10
SAY @347
IF ~~ THEN EXIT
END

IF ~~ KIPCST2.11
SAY @348
IF ~~ THEN EXIT
END

IF ~~ KIPCST2.12
SAY @349
IF ~~ THEN EXIT
END

IF ~~ KIPCST2.13
SAY @350
= @351
IF ~~ THEN EXIT
END

IF ~~ KIPCST2.14
SAY @352
IF ~~ THEN EXIT
END

//Acorns - 3 (when returned Acorns)

IF WEIGHT #990 
~Global("P#KivanAcornsDriad","GLOBAL",1)~ THEN BEGIN KivanAcorns3
SAY @353
+~GlobalGT("Chapter", "GLOBAL",2)~ + @354 DO ~SetGlobal("P#KivanAcornsDriad","GLOBAL",2)~ + KIPCST3.1
+~!GlobalGT("Chapter", "GLOBAL",2)~ + @354 DO ~SetGlobal("P#KivanAcornsDriad","GLOBAL",2)~ + KIPCST3.2
+ ~Gender(Player1,MALE) ~ + @355 DO ~SetGlobal("P#KivanAcornsDriad","GLOBAL",2)~ + KIPCST3.3
+ ~Gender(Player1,FEMALE) ~ + @356 DO ~SetGlobal("P#KivanAcornsDriad","GLOBAL",2)~ + KIPCST3.4
++ @357 DO ~SetGlobal("P#KivanAcornsDriad","GLOBAL",2)~ + KIPCST3.5
+~Class(Player1,PALADIN_ALL)~ + @358 DO ~SetGlobal("P#KivanAcornsDriad","GLOBAL",2)~ + KIPCST3.6
END

IF ~~ KIPCST3.1
SAY @359
IF ~~ THEN EXIT
END

IF ~~ KIPCST3.2
SAY @360
IF ~~ THEN EXIT
END

IF ~~ KIPCST3.3
SAY @361
IF ~~ THEN EXIT
END

IF ~~ KIPCST3.4
SAY @362
++ @363 EXIT 
++ @364 + KIPCST3.7
++ @365 + KIPCST3.5
+~Class(Player1,PALADIN_ALL)~ + @366 + KIPCST3.6
END

IF ~~ KIPCST3.5
SAY @367
IF ~~ THEN EXIT
END

IF ~~ KIPCST3.6
SAY @368
IF ~~ THEN EXIT
END

IF ~~ KIPCST3.7
SAY @369
++ @370 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXIT
END

//After UE prophet

IF WEIGHT #990
~Global("P#KivanUEQ","GLOBAL",2)~ THEN BEGIN KivUnseen
SAY @371
++ @372 DO ~SetGlobal("P#KivanUEQ","GLOBAL",3)~ + KIPCST4.1
+~OR(3) !Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL) !Class(Player1,PALADIN_ALL)~ + @373 DO ~SetGlobal("P#KivanUEQ","GLOBAL",3)~ + KIPCST4.2
+~Global("NoHelpBeholder","GLOBAL",1)~+ @374 DO ~SetGlobal("P#KivanUEQ","GLOBAL",3)~ + KIPCST4.3
++ @375 DO ~SetGlobal("P#KivanUEQ","GLOBAL",3)~ + KIPCST4.4
+ ~Race(Player1,ELF)~+ @376 DO ~SetGlobal("P#KivanUEQ","GLOBAL",3)~ + KIPCST4.7
+ ~!Race(Player1,ELF)~+ @377 DO ~SetGlobal("P#KivanUEQ","GLOBAL",3)~ + KIPCST4.8
+ ~Global("BeholderPlot","GLOBAL",1)~ + @378 DO ~SetGlobal("P#KivanUEQ","GLOBAL",3)~ + KIPCST4.9
END

IF ~~ KIPCST4.1
SAY @379
++ @380 + KIPCST4.5
++ @381 + KIPCST4.6
+~Global("NoHelpBeholder","GLOBAL",1)~+ @374 + KIPCST4.3
++ @382 + KIPCST4.4
END

IF ~~ KIPCST4.2
SAY @383
+ ~Race(Player1,ELF)~+ @384 + KIPCST4.7
+ ~!Race(Player1,ELF)~+ @385 + KIPCST4.8
++ @386 + KIPCST4.4
END

IF ~~ KIPCST4.3
SAY @387
++ @388 + KIPCST4.10
++ @389 + KIPCST4.11
END

IF ~~ KIPCST4.4
SAY @390
IF ~~ THEN EXIT
END

IF ~~ KIPCST4.5
SAY @391
IF ~~ THEN EXIT
END

IF ~~  KIPCST4.6
SAY @392 
IF ~~ THEN EXIT
END

IF ~~ KIPCST4.7
SAY @393
++ @394 + KIPCST4.12
END

IF ~~ KIPCST4.8
SAY @395
++ @394 + KIPCST4.12
END

IF ~~ KIPCST4.9
SAY @396
IF ~~ THEN EXIT
END

IF ~~ KIPCST4.10
SAY @397
++ @398 + KIPCST4.13
++ @375 + KIPCST4.4
+ ~Race(Player1,ELF)~+ @399 + KIPCST4.7
+ ~!Race(Player1,ELF)~+ @377 + KIPCST4.8
+ ~Global("BeholderPlot","GLOBAL",1)~ + @378 + KIPCST4.9
END

IF ~~ KIPCST4.11
SAY @400
++ @401 + KIPCST4.4
+ ~Race(Player1,ELF)~+ @399 + KIPCST4.7
+ ~!Race(Player1,ELF)~+ @377 + KIPCST4.8
+ ~Global("BeholderPlot","GLOBAL",1)~ + @378 + KIPCST4.9
++ @402 EXIT
END

IF ~~ KIPCST4.12
SAY @403
IF ~~ THEN DO ~SetGlobal("P#Shevarash", "GLOBAL",1)~ EXIT
END

IF ~~ KIPCST4.13
SAY @404
++ @401 + KIPCST4.4
+ ~Race(Player1,ELF)~+ @399 + KIPCST4.7
+ ~!Race(Player1,ELF)~+ @377 + KIPCST4.8
+ ~Global("BeholderPlot","GLOBAL",1)~ + @405 + KIPCST4.9
++ @402 EXIT
END

//The talk about Shevarash

IF WEIGHT #990 
~Global("P#Shevarash", "GLOBAL",2)~ THEN BEGIN KivShevarash
SAY @406
++ @407 DO ~SetGlobal("P#Shevarash", "GLOBAL",3)~ + KIPCST5.1
++ @408 DO ~SetGlobal("P#Shevarash", "GLOBAL",3)~ + KIPCST5.2
+ ~!Race(Player1,ELF)~ + @409 DO ~SetGlobal("P#Shevarash", "GLOBAL",3)~ EXIT
END 

IF ~~ KIPCST5.1
SAY @410
++ @411 + KIPCST5.3
+ ~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @412 + KIPCST5.4
+ ~Gender(Player1,FEMALE) OR(2) Global("P#DeherianaLives","GLOBAL",1)Global("P#DeherianaLives","GLOBAL",2)~ + @413 + KIPCST5.5
+ ~Gender(Player1,MALE)~ + @414 + KIPCST5.6
+ ~Gender(Player1,FEMALE) ~+ @415 + KIPCST5.7
+ ~Gender(Player1,MALE)~+ @415 + KIPCST5.8
+ ~Gender(Player1,MALE) Race(Player1, ELF)~+ @416 + KIPCST5.9
+ ~Gender(Player1,MALE) !Race(Player1, ELF)~+ @416 + KIPCST5.10
END

IF ~~ KIPCST5.2
SAY @417
= @418
= @419
= @420
++ @421 + KIPCST5.11
++ @422 + KIPCST5.12
++ @423 + KIPCST5.13
++ @424 + KIPCST5.1
END

IF ~~ KIPCST5.3
SAY @425
= @426
= @427
= @428
+ ~Global("P#KivanTazokHeart","GLOBAL",1)~ + @429 +  KIPCST5.14
++ @430 + KIPCST5.15
+ ~Gender(Player1,FEMALE) Race(Player1,ELF)~ + @431 + KIPCST5.16
+ ~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @432 + KIPCST5.17
+ ~Gender(Player1,FEMALE) OR(2) Global("P#DeherianaLives","GLOBAL",1)Global("P#DeherianaLives","GLOBAL",2)~ + @432 + KIPCST5.18
+ ~Gender(Player1,MALE)~ + @432 + KIPCST5.18
END

IF ~~ KIPCST5.4
SAY @433
= @434
= @427
= @428
+ ~Global("P#KivanTazokHeart","GLOBAL",1)~ + @429 +  KIPCST5.14
++ @430 + KIPCST5.15
+ ~Race(Player1,ELF)~ + @431 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST5.16
++ @432 + KIPCST5.17
++ @435 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST5.18
END

IF ~~ KIPCST5.5
SAY @436
= @1433
= @427
= @428
+ ~Global("P#KivanTazokHeart","GLOBAL",1)~ + @437 +  KIPCST5.14
++ @438 + KIPCST5.15
+ ~ Race(Player1,ELF)~ + @439 + KIPCST5.16
++ @432 + KIPCST5.17
END

IF ~~ KIPCST5.6
SAY @425
= @426
= @427
= @440
+ ~Global("P#KivanTazokHeart","GLOBAL",1)~ + @429 +  KIPCST5.14
++ @430 + KIPCST5.15
++ @432 + KIPCST5.18
+ ~Gender(Player1,MALE)~+ @415 + KIPCST5.8
+ ~Gender(Player1,MALE) Race(Player1, ELF)~+ @416 + KIPCST5.9
+ ~Gender(Player1,MALE) !Race(Player1, ELF)~+ @416 + KIPCST5.10
END

IF ~~ KIPCST5.7
SAY @441
= @426
= @427
= @428
+ ~Global("P#KivanTazokHeart","GLOBAL",1)~ + @429 +  KIPCST5.14
++ @430 + KIPCST5.15
+ ~Gender(Player1,FEMALE) Race(Player1,ELF)~ + @431 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST5.16
+ ~Gender(Player1,FEMALE)~ + @432 + KIPCST5.17
END

IF ~~ KIPCST5.8
SAY @441
= @426
= @427
= @428
+ ~Global("P#KivanTazokHeart","GLOBAL",1)~ + @429 +  KIPCST5.14
++ @430 + KIPCST5.15
++ @432 + KIPCST5.18
END

IF ~~ KIPCST5.9
SAY @442
++ @443 + KIPCST5.19
+ ~GlobalLT("AerieRomanceActive", "GLOBAL",1) GlobalLT("JaheiraRomanceActive", "GLOBAL",1) GlobalLT("ViconiaRomanceActive", "GLOBAL",1) ~ + @444 + KIPCST5.20
+~GlobalGT("AerieRomanceActive", "GLOBAL",1)~ + @444 + KIPCST5.20A
+~GlobalGT("JaheiraRomanceActive", "GLOBAL",1)  ~ + @444 + KIPCST5.20J
+~GlobalGT("ViconiaRomanceActive", "GLOBAL",1)  ~ + @444 + KIPCST5.20V
++ @445 + KIPCST5.21
++ @446 + KIPCST5.22
++ @447 + KIPCST5.23
END

IF ~~ KIPCST5.10
SAY @448
IF ~~ THEN GOTO KIPCST5.8
END

IF ~~ KIPCST5.11
SAY @449
++ @450 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~EXIT
++ @451 + KIPCST5.1
++ @452 + KIPCST5.24
++ @453 EXIT
END

IF ~~ KIPCST5.12
SAY @454
IF ~~ THEN EXIT 
END

IF ~~ KIPCST5.13
SAY @455
++ @456 + KIPCST5.1
++ @457 EXIT
END

IF ~~ KIPCST5.14
SAY @458
IF ~~ THEN EXIT 
END

IF ~~ KIPCST5.15
SAY @459
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.16
SAY @460
++ @461 EXIT
++ @462 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST5.25
++ @463 + KIPCST5.26
END

IF ~~ KIPCST5.17
SAY @464 
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.18
SAY @465 
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.19
SAY @466 
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.20
SAY @467
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.20A
SAY @468
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.20J
SAY @469
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.20V
SAY @470
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.21
SAY @471
= @472
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.22
SAY @473
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.23
SAY @474
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.24
SAY @475
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.25
SAY @476
IF ~~ THEN EXIT
END

IF ~~ KIPCST5.26
SAY @477
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

//Mercy talk, after you killed the creature in the UE

IF WEIGHT #990 
~Global("P#MercyTalk", "GLOBAL",1)~ THEN BEGIN KivMercy
SAY @478
++ @479 DO ~SetGlobal("P#MercyTalk", "GLOBAL",2)~ + KIPCST6.1
+~GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%)~+ @480 DO ~SetGlobal("P#MercyTalk", "GLOBAL",2)~ + KIPCST6.2
++ @481 DO ~SetGlobal("P#MercyTalk", "GLOBAL",2)~ + KIPCST6.3
++ @482 DO ~SetGlobal("P#MercyTalk", "GLOBAL",2)~ + KIPCST6.4
END

IF ~~ KIPCST6.1
SAY @483
+ ~!Race(Player1, ELF)~ + @484 + KIPCST6.5
+ ~Race(Player1, ELF)~ + @485 + KIPCST6.6
++ @486 + KIPCST6.7
++ @487 EXIT 
++ @488 + KIPCST6.8
++ @489 + KIPCST6.9
END

IF ~~ KIPCST6.2
SAY @490
++ @491 + KIPCST6.10
++ @492 + KIPCST6.11
END

IF ~~ KIPCST6.3
SAY @493
++ @494 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @495 + KIPCST6.12
END

IF ~~ KIPCST6.4
SAY @496
IF ~Class(Player1,BARD_ALL)~ THEN GOTO KIPCST6.13
IF ~!Class(Player1,BARD_ALL)~ THEN EXIT
END

IF ~~ KIPCST6.5
SAY @497
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.6
SAY @498
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.7
SAY @499
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.8
SAY @500
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST6.9
SAY @501
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.10
SAY @502
IF ~~ THEN EXIT 
END

IF ~~ KIPCST6.11
SAY @503
++ @504 + KIPCST6.14
++ @505 + KIPCST6.15
+ ~!Race(Player1,ELF)~ + @506 + KIPCST6.16
+ ~Race(Player1,ELF)~ + @506 + KIPCST6.17
END

IF ~~ KIPCST6.12
SAY @507
+ ~Gender(Player1,MALE)~ + @508+ KIPCST6.18
+ ~Gender(Player1,FEMALE)~ + @509+ KIPCST6.19
++ @510 + KIPCST6.20
++ @511 + KIPCST6.21
END

IF ~~ KIPCST6.13
SAY @512
++ @513 EXIT
++ @514 EXIT
END

IF ~~ KIPCST6.14
SAY @515
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.16
SAY @516
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.17
SAY @517
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.18
SAY @518
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.19
SAY @519
= @518
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.20
SAY @520
++ @521 + KIPCST6.18
++ @522 + KIPCST6.22
+ ~Gender(Player1, FEMALE)~ + @523  + KIPCST6.23
++ @524 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST6.21
SAY @525
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.22
SAY @526
IF ~~ THEN EXIT
END

IF ~~ KIPCST6.23
SAY @527
++ @528 + KIPCST6.24
++ @529 + KIPCST6.25
END

IF ~~ KIPCST6.24
SAY @8
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",5)~ EXIT
END

IF ~~ KIPCST6.25
SAY @474
++ @530 + KIPCST6.26
++ @531 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",5)~ EXIT
END

IF ~~ KIPCST6.26
SAY @532
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",5)~ EXIT
END

END

CHAIN P#KIVJ KIPCST6.15
@533
== BP#DEH IF ~InParty("P#DEHER") !Dead("P#DEHER")~ THEN @534
== BP#KIV IF ~InParty("P#DEHER") !Dead("P#DEHER")~ THEN @535
== BP#DEH IF ~InParty("P#DEHER") !Dead("P#DEHER")~ THEN @536
== BP#KIV IF ~InParty("P#DEHER") !Dead("P#DEHER")~ THEN @537
EXIT

///Tazok's Heart Cycle///

APPEND P#KIVJ

IF WEIGHT #990 
~Global("P#TazokTalk","GLOBAL",1)~ THEN BEGIN KivTazok1
SAY @538
++ @539 DO ~SetGlobal("P#TazokTalk","GLOBAL",2)~ + KIPCST7.1
END

IF ~~ KIPCST7.1
SAY @540
= @541
++ @542 + KIPCST7.2
++ @543 + KIPCST7.3
++ @544 + KIPCST7.4
END

IF ~~ KIPCST7.2
SAY @545
+ ~Race(Player1,ELF)~+ @546 + KIPCST7.5
+ ~!Race(Player1,ELF)~+ @547 + KIPCST7.5
++ @548 + KIPCST7.6
++ @549+ KIPCST7.7
++ @550 + KIPCST7.8
++ @551 + KIPCST7.9
++ @552 + KIPCST7.10
++ @553 + KIPCST7.12
END

IF ~~ KIPCST7.3
SAY @554
IF ~~ THEN GOTO KIPCST7.2
END

IF ~~ KIPCST7.4
SAY @555
IF ~~ THEN GOTO KIPCST7.2
END

IF ~~ KIPCST7.5
SAY @556
= @557
= @558
= @559
++ @560 DO ~SetGlobal("P#KivanTazokHeart", "GLOBAL",1) GiveItemCreate("P#TAHE","P#Kivan",1,0,0)~ EXIT
++ @561 + KIPCST7.11
++ @562 DO ~SetGlobal("P#KivanTazokHeart", "GLOBAL",1) GiveItemCreate("P#TAHE","P#Kivan",1,0,0)~ EXIT
END

IF ~~ KIPCST7.6
SAY @563
++ @564  + KIPCST7.5
++ @565 + KIPCST7.12
END

IF ~~ KIPCST7.7
SAY @566
++ @564  + KIPCST7.5
++ @553 + KIPCST7.12
+ ~Race(Player1,ELF)~+ @546 + KIPCST7.5
+ ~!Race(Player1,ELF)~+ @547 + KIPCST7.5
END

IF ~~ KIPCST7.8
SAY @567
++ @564  + KIPCST7.5
+ ~Gender(Player1,FEMALE)~ + @568  + KIPCST7.13
+ ~Race(Player1,ELF)~+ @546 + KIPCST7.5
+ ~!Race(Player1,ELF)~+ @547 + KIPCST7.5
END 

IF ~~ KIPCST7.9
SAY @569
= @570
= @559
++ @560 DO ~SetGlobal("P#KivanTazokHeart", "GLOBAL",1) GiveItemCreate("P#TAHE","P#Kivan",1,0,0)~ EXIT
++ @561 + KIPCST7.11
++ @562 DO ~SetGlobal("P#KivanTazokHeart", "GLOBAL",1) GiveItemCreate("P#TAHE","P#Kivan",1,0,0)~ EXIT
END

IF ~~ KIPCST7.10
SAY @571
= @572
++ @564  + KIPCST7.5
++ @573  + KIPCST7.5
++ @574 + KIPCST7.14
END 

IF ~~ KIPCST7.11
SAY @575
IF ~~ THEN DO ~AddXPObject("P#KIVAN",5000)~ EXIT
END

IF ~~ KIPCST7.12
SAY @576
+ ~Gender(Player1,FEMALE)~ + @577  + KIPCST7.13
++ @578  + KIPCST7.5
++ @579 + KIPCST7.14
+ ~!Class(Player1,RANGER_ALL) !Class(Player1,PALADIN_ALL)~ + @580 + KIPCST7.15
+ ~Race(Player1,ELF)~+ @546 + KIPCST7.5
+ ~!Race(Player1,ELF)~+ @547 + KIPCST7.5
END

IF ~~ KIPCST7.13
SAY @581
++ @582 + KIPCST7.14
+ ~!Class(Player1,RANGER_ALL) !Class(Player1,PALADIN_ALL)~ + @580 + KIPCST7.15
+ ~Race(Player1,ELF)~+ @546 + KIPCST7.5
+ ~!Race(Player1,ELF)~+ @547 + KIPCST7.5
END

IF ~~ KIPCST7.14
SAY @583
= @584
IF ~~ THEN DO ~AddXPObject("P#KIVAN",10000)~ EXIT
END

IF ~~ KIPCST7.15
SAY @585
= @586
= @587
IF ~~ THEN DO ~AddXPObject("P#KIVAN",10000)~ EXIT
END

//2nd Tazok's Talk

IF WEIGHT #990 
~Global("P#TazokTalk", "GLOBAL",3)~ THEN BEGIN KivTazok2
SAY @588
= @589
++ @590 DO ~SetGlobal("P#KivanDrifting","GLOBAL",1)~ + KIPCST8.33
++ @591 + KIPCST8.34
+ ~Class(Player1,DRUID_ALL)~ + @592 + KIPCST8.35
++ @593 + KIPCST8.36
++ @594 + KIPCST8.37
END

IF ~~ KIPCST8.33
SAY @595
= @596
+ ~ Global("P#KivanDrifting","GLOBAL",1)~ + @597 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @598 + KIPCST8.38
++ @599  + KIPCST8.39
++ @600 + KIPCST8.40
END

IF ~~ KIPCST8.34
SAY @601
IF ~~ THEN GOTO KIPCST8.33
END

IF ~~ KIPCST8.35
SAY @602
IF ~~ THEN GOTO KIPCST8.33
END

IF ~~ KIPCST8.36
SAY @603
IF ~~ THEN GOTO KIPCST8.34
END


IF ~~ KIPCST8.37
SAY @604
IF ~~ THEN GOTO KIPCST8.33
END

IF ~~ KIPCST8.38
SAY @605
IF ~~ THEN GOTO KIPCST8.0
END

IF ~~ KIPCST8.39
SAY @606
IF ~~ THEN GOTO KIPCST8.0
END

IF ~~ KIPCST8.40
SAY @607
IF ~~ THEN GOTO KIPCST8.0
END

IF ~~ KIPCST8.0
SAY @608
++ @609 + KIPCST8.1
++ @610 + KIPCST8.2
+ ~Gender(Player1,MALE)~ + @611 + KIPCST8.3
+ ~Gender(Player1,FEMALE)~ + @612 + KIPCST8.3
+ ~Gender(Player1,FEMALE) Global("P#DeherianaDead","GLOBAL",1)~ + @613 + KIPCST8.4
+ ~Gender(Player1,FEMALE) !Global("P#DeherianaDead","GLOBAL",1)~ + @613 + KIPCST8.5
++ @614 + KIPCST8.6
++ @615 +  KIPCST8.18
END

IF ~~ KIPCST8.1
SAY @616
++ @617 EXIT
++ @618 EXIT
++ @619 + KIPCST8.9
+ ~Gender(Player1,FEMALE)~ + @620 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST8.10
END

IF ~~ KIPCST8.2
SAY @621
++ @622 + KIPCST8.11
++ @623 + KIPCST8.12
+ ~OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ + @624 + KIPCST8.13
+ ~!Global("JaheiraRomanceActive","GLOBAL",1) !Global("JaheiraRomanceActive","GLOBAL",2)~ + @625 + KIPCST8.14
++ @626 + KIPCST8.15
++ @627 + KIPCST8.16
END

IF ~~ KIPCST8.3
SAY @628
++ @629 +  KIPCST8.2
++ @630 +  KIPCST8.17
++ @631 +  KIPCST8.18
END



IF ~~ KIPCST8.4
SAY @632
++ @633 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @634 +  KIPCST8.19
++ @635 +  KIPCST8.20
END

IF ~~ KIPCST8.5
SAY @636
IF ~~ GOTO KIPCST8.4
END

IF ~~ KIPCST8.6
SAY @637
++ @638 +  KIPCST8.21
++ @639 +  KIPCST8.22
++ @640 +  KIPCST8.23
++ @641 +  KIPCST8.18
END

IF ~~ KIPCST8.9
SAY @642
= @643
++ @622 + KIPCST8.11
++ @644 EXIT
+ ~OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ + @624 + KIPCST8.13
+ ~!Global("JaheiraRomanceActive","GLOBAL",1) !Global("JaheiraRomanceActive","GLOBAL",2)~ + @625 + KIPCST8.14
++ @645 + KIPCST8.15
END

IF ~~ KIPCST8.10
SAY @646
IF ~~ THEN GOTO KIPCST8.2
END

IF ~~ KIPCST8.11
SAY @647
++ @648 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @649 + KIPCST8.12
+ ~OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ + @650 + KIPCST8.13
++ @651 + KIPCST8.15
++ @652 + KIPCST8.16
END

IF ~~ KIPCST8.12
SAY @653
= @654
= @655
++ @656 +  KIPCST8.23A
++ @657 +  KIPCST8.24
END

IF ~~ KIPCST8.13
SAY @658
++ @648 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @659  +  KIPCST8.26
++ @660  +  KIPCST8.27
++ @661  +  KIPCST8.28
END

IF ~~ KIPCST8.14
SAY @662
= @654
= @655
++ @663 +  KIPCST8.23A
++ @657 +  KIPCST8.24
END

IF ~~ KIPCST8.15
SAY @664
= @654
= @655
++ @665 +  KIPCST8.23A
++ @657 +  KIPCST8.24
END

IF ~~ KIPCST8.16
SAY @666
= @654
= @655
++ @663 +  KIPCST8.23A
++ @657 +  KIPCST8.24
END

IF ~~ KIPCST8.17
SAY @667
++ @668 +  KIPCST8.29
++ @669 +  KIPCST8.30
++ @670 +  KIPCST8.31
END

IF ~~ KIPCST8.18
SAY @671
= @654
= @655
++ @656 +  KIPCST8.23A
++ @657 +  KIPCST8.24
END

IF ~~ KIPCST8.19
SAY @474
++ @672 +  KIPCST8.29
++ @669 +  KIPCST8.30
++ @670 +  KIPCST8.31F
++ @673  +  KIPCST8.32
END

IF ~~ KIPCST8.20
SAY @674
++ @672 +  KIPCST8.29
++ @669 +  KIPCST8.30
++ @670 +  KIPCST8.31F
++ @673  +  KIPCST8.32
END

IF ~~ KIPCST8.21
SAY @675
IF ~~ THEN EXIT 
END

IF ~~ KIPCST8.22
SAY @676
= @654
= @655
++ @656 +  KIPCST8.23
++ @657 +  KIPCST8.24
++ @677 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST8.23
SAY @678
IF ~~ THEN GOTO KIPCST8.2
END

IF ~~ KIPCST8.23A
SAY @679
IF ~~ THEN EXIT
END

IF ~~ KIPCST8.24
SAY @680
IF ~~ THEN EXIT
END

IF ~~ KIPCST8.26
SAY @681
IF ~~ THEN EXIT
END

IF ~~  KIPCST8.27
SAY @682
++ @683 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @684 EXIT
++ @685 EXIT
END

IF ~~  KIPCST8.28
SAY @686
IF ~~ THEN EXIT
END

IF ~~ KIPCST8.29
SAY @654
= @655
++ @656 +  KIPCST8.23
++ @657 +  KIPCST8.24
++ @677 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST8.30
SAY @687
IF ~~ THEN EXIT
END

IF ~~ KIPCST8.31
SAY @688
IF ~~ THEN EXIT
END

IF ~~ KIPCST8.31F
SAY @689
= @690
IF ~~ THEN GOTO KIPCST8.29
END

IF ~~ KIPCST8.32
SAY @691
= @692
IF ~~ THEN GOTO KIPCST8.29
END

//3rd Tazok Talk

IF WEIGHT #990 
~Global("P#TazokTalk", "GLOBAL",5)~ THEN BEGIN KivTazok3
SAY @693
++ @694 + KIPCST9.1
+ ~Alignment(Player1, MASK_EVIL)~+ @695 + KIPCST9.2
+ ~Alignment(Player1, MASK_EVIL) ReputationGT(Player1,15)~+ @696 + KIPCST9.3A
+ ~Alignment(Player1, MASK_EVIL) ReputationLT(Player1,16)~+ @696 + KIPCST9.3B
++ @697 + KIPCST9.4
++ @698 + KIPCST9.5
++ @699 + KIPCST9.6
++ @700 + KIPCST9.7
++ @701 + KIPCST9.8
+ ~Class(Player1,PALADIN_ALL)~ + @702 + KIPCST9.9
END

IF ~~ KIPCST9.1
SAY @703
++ @704 + KIPCST9.10 
++ @705 + KIPCST9.11
++ @706 + KIPCST9.12
END

IF ~~ KIPCST9.2
SAY @707 

= @708
++ @709 + KIPCST9.12
++ @710 + KIPCST9.4
++ @711 + KIPCST9.5
++ @712 + KIPCST9.6
++ @713 + KIPCST9.7
END

IF ~~ KIPCST9.3A
SAY @714

++ @715 + KIPCST9.13
++ @716 + KIPCST9.14
++ @717 + KIPCST9.15
++ @718 + KIPCST9.16
END

IF ~~ KIPCST9.3B
SAY @719
IF ~~ THEN EXIT
END

IF ~~ KIPCST9.4
SAY @720
= @721
= @722
++ @723 + KIPCST9.16
++ @724 EXIT
++ @725 + KIPCST9.17
END

IF ~~ KIPCST9.5
SAY @726
= @727
++ @723 + KIPCST9.16
++ @728 EXIT
++ @729 + KIPCST9.18
END

IF ~~  KIPCST9.6
SAY @730
= @731
++ @732 + KIPCST9.16
++ @728 EXIT
++ @733 + KIPCST9.19
END

IF ~~  KIPCST9.7
SAY @734
= @731
++ @732 + KIPCST9.16
++ @728 EXIT
++ @735 + KIPCST9.20
END

IF ~~ KIPCST9.8
SAY @736
++ @737 + KIPCST9.16
++ @728 EXIT
END

IF ~~ KIPCST9.9
SAY @738
= @739
++ @737 + KIPCST9.16
++ @728 EXIT
END

IF ~~ KIPCST9.10 
SAY @740
++ @737 + KIPCST9.16
++ @741 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @728 EXIT
END

IF ~~ KIPCST9.11
SAY @742
++ @743 + KIPCST9.16
++ @728 EXIT
END

IF ~~ KIPCST9.12
SAY @740
++ @737 + KIPCST9.16
++ @741 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @728 EXIT
END

IF ~~ KIPCST9.13
SAY @744
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ KIPCST9.14
SAY @745
++ @743 + KIPCST9.16
++ @728 EXIT
END

IF ~~ KIPCST9.15
SAY @746
= @747
++ @743 + KIPCST9.16
++ @748 + KIPCST9.16
++ @728 EXIT
END

IF ~~ KIPCST9.16
SAY @749
= @750
= @751
= @752
= @753
= @754
= @755
= @756
= @757
= @758
= @759
= @760
= @761
++ @762 + KIPCST9.21
++ @763 EXIT
++ @764 EXIT
++ @765 + KIPCST9.22
++ @766 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST9.17 
SAY @474
++ @767 + KIPCST9.16
++ @768 EXIT
++ @728 EXIT
END

IF ~~ KIPCST9.18
SAY @769
++ @767 + KIPCST9.16
++ @770 EXIT
++ @728 EXIT
END

IF ~~ KIPCST9.19
SAY @771
++ @772 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @767 + KIPCST9.16
++ @728 EXIT
END

IF ~~ KIPCST9.20
SAY @773
= @771
++ @772 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
++ @767 + KIPCST9.16
++ @728 EXIT
END

IF ~~ KIPCST9.21
SAY @774
IF ~~ THEN DO ~SetGlobal("P#KivanCoA","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST9.22
SAY @775
IF ~~ THEN EXIT
END

//Tazok's Heart 4

IF WEIGHT #990
~Global("P#TazokTalk", "GLOBAL",7)~ THEN BEGIN KivTazok4
SAY @776
+ ~Race(Player1,ELF)~ + @777 + KIPCST10.1
++ @778 + KIPCST10.2
+ ~Gender(Player1, FEMALE)~ + @779 + KIPCST10.3
++ @780 + KIPCST10.4
+ ~Class(Player1, BARD_ALL)~ + @781 + KIPCST10.5

++ @782 + KIPCST10.6
END

IF ~~ KIPCST10.1 
SAY @783
++ @784 + KIPCST10.7
++ @785 + KIPCST10.4
++ @781 + KIPCST10.5E
++ @782 + KIPCST10.6
END


IF ~~ KIPCST10.2
SAY @474
= @786
++ @787 + KIPCST10.4
+ ~Class(Player1, BARD_ALL)~ + @781 + KIPCST10.5
++ @782 + KIPCST10.6
++ @788 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#KivanConstitutionDrain","GLOBAL",3)~ EXIT
END

IF ~~ KIPCST10.3
SAY @789
= @790
++ @787 + KIPCST10.4
+ ~Class(Player1, BARD_ALL)~ + @781 + KIPCST10.5
++ @782 + KIPCST10.6
++ @791+ KIPCST10.9
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @792+ KIPCST10.10
++ @793 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#KivanConstitutionDrain","GLOBAL",3)~ EXIT
END

IF ~~ KIPCST10.4
SAY @794
= @795
+ ~Gender(Player1, FEMALE) OR(2) Global("P#DeherianaLives","GLOBAL",1)Global("P#DeherianaLives","GLOBAL",2)~ + @796 + KIPCST10.11
+ ~Gender(Player1, FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @796 + KIPCST10.12
++ @797 + KIPCST10.9
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @792+ KIPCST10.10
++ @793 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#KivanConstitutionDrain","GLOBAL",3)~ EXIT
++ @798 + KIPCST10.13
END

IF ~~ KIPCST10.5
SAY @799
= @794
= @800
+ ~Gender(Player1, FEMALE) OR(2) Global("P#DeherianaLives","GLOBAL",1)Global("P#DeherianaLives","GLOBAL",2)~ + @796 + KIPCST10.11
+ ~Gender(Player1, FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @796 + KIPCST10.12
++ @797 + KIPCST10.9
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @792+ KIPCST10.10
++ @793 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#KivanConstitutionDrain","GLOBAL",3)~ EXIT
++ @798 + KIPCST10.13
END

IF ~~ KIPCST10.5E
SAY @801
= @794
= @800
+ ~Gender(Player1, FEMALE) OR(2) Global("P#DeherianaLives","GLOBAL",1)Global("P#DeherianaLives","GLOBAL",2)~ + @796 + KIPCST10.11
+ ~Gender(Player1, FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @796 + KIPCST10.12
++ @797 + KIPCST10.9
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @792+ KIPCST10.10
++ @793 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#KivanConstitutionDrain","GLOBAL",3)~ EXIT
++ @798 + KIPCST10.13
END

IF ~~ KIPCST10.6
SAY  @802
++ @803 + KIPCST10.8
END

IF ~~ KIPCST10.7
SAY @804
= @805
++ @806 + KIPCST10.14
++ @807 + KIPCST10.15
++ @808 + KIPCST10.16
END

IF ~~ KIPCST10.8
SAY @809
+ ~Gender(Player1, FEMALE) OR(2) Global("P#DeherianaLives","GLOBAL",1)Global("P#DeherianaLives","GLOBAL",2)~ + @796 + KIPCST10.11
+ ~Gender(Player1, FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @796 + KIPCST10.12
++ @797 + KIPCST10.9
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @792+ KIPCST10.10
++ @793 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#KivanConstitutionDrain","GLOBAL",3)~ EXIT
++ @798 + KIPCST10.13
END

IF ~~ KIPCST10.9
SAY @810
= @811
++ @806 + KIPCST10.14
++ @807 + KIPCST10.15
++ @808 + KIPCST10.16
++ @812 + KIPCST10.17
END

IF ~~ KIPCST10.10
SAY @813
= @810
= @811
++ @806 + KIPCST10.14
++ @807 + KIPCST10.15
++ @808 + KIPCST10.16
++ @812 + KIPCST10.17
END

IF ~~ KIPCST10.11
SAY @814
= @815
= @816
= @811
++ @806 + KIPCST10.14
++ @807 + KIPCST10.15
++ @808 + KIPCST10.16
++ @812 + KIPCST10.17
END

IF ~~ KIPCST10.12
SAY @817
= @815
= @816
= @811
++ @806 + KIPCST10.14
++ @807 + KIPCST10.15
++ @808 + KIPCST10.16
END

IF ~~ KIPCST10.13
SAY @818
= @816
= @811
++ @806 + KIPCST10.14
++ @807 + KIPCST10.15
++ @808 + KIPCST10.16
END

IF ~~ KIPCST10.14
SAY @819
++ @807 + KIPCST10.15
++ @808 + KIPCST10.16
END

IF ~~ KIPCST10.15
SAY @820
++ @821 + KIPCST10.18
++ @822 + KIPCST10.19
END

IF ~~ KIPCST10.16
SAY @823
++ @821 + KIPCST10.18
++ @822 + KIPCST10.19
END

IF ~~ KIPCST10.17
SAY @824
IF ~~ THEN DO ~ IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#KivanConstitutionDrain","GLOBAL",3)~ EXIT //Kivan will lose 4 points of constitution
END

IF ~~ KIPCST10.18
SAY @825
IF ~~ THEN DO ~SetGlobal("P#KivanConstitutionDrain","GLOBAL",2)~ EXIT //Kivan will loose 3 points of constitution
END

IF ~~ KIPCST10.19
SAY @826
IF ~~ THEN DO ~SetGlobal("P#KivanConstitutionDrain","GLOBAL",1)~ EXIT //Kivan will loose 2 points of constitution
END

//Druid's Grove Liberated

IF WEIGHT #990
~Global("P#KivanGroveSaved","GLOBAL",2)~ THEN BEGIN KivGroveSaved1
SAY @827
+~!Race(Player1,ELF) !Class(Player1,DRUID_ALL)~ + @828 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#KivanGroveSaved","GLOBAL",3)~ + KIPCST11.1
+~!Class(Player1,DRUID_ALL)~ + @829 DO ~SetGlobal("P#KivanGroveSaved","GLOBAL",3)~ + KIPCST11.2
+~!Race(Player1,ELF)~ + @830 DO ~SetGlobal("P#KivanGroveSaved","GLOBAL",3)~ + KIPCST11.3
++ @831 DO ~SetGlobal("P#KivanGroveSaved","GLOBAL",3)~ + KIPCST11.4
++ @832 DO ~SetGlobal("P#KivanGroveSaved","GLOBAL",3)~ + KIPCST11.5
++ @833 DO ~SetGlobal("P#KivanGroveSaved","GLOBAL",3)~ + KIPCST11.6
++ @834 DO ~SetGlobal("P#KivanGroveSaved","GLOBAL",2)~ + KIPCST11.7
++ @835 DO ~SetGlobal("P#FaldornTalk","GLOBAL",1) SetGlobal("P#KivanGroveSaved","GLOBAL",3)~ + KIPCST11.8
+ ~!Race(Player1,ELF) !Race(Player1,HALF_ELF)~+ @836 DO ~SetGlobal("P#KivanGroveSaved","GLOBAL",3)~ + KIPCST11.13
END

IF ~~ KIPCST11.1
SAY @837
++ @838 EXIT
++ @839 + KIPCST11.9
++ @840 + KIPCST11.9
++ @841 DO ~SetGlobal("P#FaldornTalk","GLOBAL",1)~+ KIPCST11.8
END

IF ~~ KIPCST11.2
SAY @842
++ @838 EXIT
++ @839 + KIPCST11.9
++ @840 + KIPCST11.9
++ @841 DO ~SetGlobal("P#FaldornTalk","GLOBAL",1)~+ KIPCST11.8
END

IF ~~ KIPCST11.3
SAY @843
++ @844 EXIT
++ @845 + KIPCST11.2
END

IF ~~ KIPCST11.4
SAY @846
= @847
++ @848 + KIPCST11.10
++ @849 + KIPCST11.11
++ @841 DO ~SetGlobal("P#FaldornTalk","GLOBAL",1)~ + KIPCST11.8
END

IF ~~ KIPCST11.5
SAY @850
++ @838 EXIT
++ @839 + KIPCST11.9
++ @840 + KIPCST11.9
++ @841 DO ~SetGlobal("P#FaldornTalk","GLOBAL",1)~+ KIPCST11.8
END

IF ~~ KIPCST11.6
SAY @851
= @852
= @847
++ @853 + KIPCST11.10
++ @849 + KIPCST11.11
++ @854 EXIT
+ ~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @855 + KIPCST11.12
END

IF ~~ KIPCST11.7
SAY @852
= @847
++ @853 + KIPCST11.10
++ @849 + KIPCST11.11
++ @856 EXIT
+ ~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @855 + KIPCST11.12
END

IF ~~ KIPCST11.8
SAY @857
= @858
= @859
IF ~~ THEN DO ~SetGlobal("P#FaldornTalk","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST11.9
SAY @860
= @861
= @862
= @863
IF ~~ THEN EXIT
END

IF ~~ KIPCST11.10
SAY @864
= @865
= @861
= @862
= @863
IF ~~ THEN EXIT
END

IF ~~ KIPCST11.11
SAY @866
= @861
= @862
= @863
IF ~~ THEN EXIT
END

IF ~~ KIPCST11.12
SAY @867
= @868
= @869
= @861
= @862
= @863
IF ~~ THEN EXIT
END

IF ~~ KIPCST11.13
SAY @870
= @847
++ @853 + KIPCST11.10
++ @849 + KIPCST11.11
++ @841 DO ~SetGlobal("P#FaldornTalk","GLOBAL",1)~ + KIPCST11.8
END

//Druid Grove 2 - Faldorn's Talk

IF WEIGHT #990
~Global("P#FaldornTalk","GLOBAL",2)~ THEN BEGIN KivFaldorn
SAY @871
++ @872 DO ~SetGlobal("P#FaldornTalk","GLOBAL",3)~ + KIPCST12.1
++ @873 DO ~SetGlobal("P#FaldornTalk","GLOBAL",3)~ + KIPCST12.2
++ @874 DO ~SetGlobal("P#FaldornTalk","GLOBAL",3)~ + KIPCST12.3
++ @875 DO ~SetGlobal("P#FaldornTalk","GLOBAL",3)~ + KIPCST12.4
++ @876 DO ~SetGlobal("P#FaldornTalk","GLOBAL",3)~ + KIPCST12.5
END

IF ~~ KIPCST12.1
SAY @877
= @878
++ @879 + KIPCST12.2
++ @880 + KIPCST12.3
++ @881 + KIPCST12.6
END

IF ~~ KIPCST12.2
SAY @882
++ @883 + KIPCST12.7
++ @884 + KIPCST12.3
END 

IF ~~ KIPCST12.4
SAY @885
++ @886 + KIPCST12.8
++ @887 + KIPCST12.9
++ @888 + KIPCST12.10
END

IF ~~ KIPCST12.5
SAY @889
++ @890+ KIPCST12.11
++ @891 + KIPCST12.12
END

IF ~~ KIPCST12.6
SAY @892
++ @893 + KIPCST12.14
++ @894 + KIPCST12.15
++ @895 + KIPCST12.16
++ @896 +  KIPCST12.22
++ @897 EXIT
END

IF ~~ KIPCST12.3
SAY @898
++ @899 + KIPCST12.17
++ @900 + KIPCST12.17
++ @901 + KIPCST12.18
++ @902 + KIPCST12.19
END

IF ~~ KIPCST12.7
SAY @903
++ @904 + KIPCST12.20
++ @905 + KIPCST12.21
END

IF ~~ KIPCST12.8
SAY @906
= @907
++ @893 + KIPCST12.14
++ @908 + KIPCST12.15
++ @895 + KIPCST12.16
++ @896 +  KIPCST12.22
++ @897 EXIT
END


IF ~~ KIPCST12.9
SAY @909
++ @910 + KIPCST12.13
++ @911 + KIPCST12.13
++ @912 + KIPCST12.23
END

IF ~~ KIPCST12.10
SAY @913
IF ~~ THEN DO ~ IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXIT
END

IF ~~ KIPCST12.11
SAY @914
= @915
= @916
= @917
+ ~Race(Player1, ELF)~ + @918 + KIPCST12.24
+ ~Race(Player1, ELF)~ + @919  DO ~ SetGlobal("P#Eldreth","GLOBAL",1) ~ + KIPCST12.25
+ ~!Race(Player1, ELF)~ + @920 + KIPCST12.26
+ ~!Race(Player1, ELF)~ + @921  + KIPCST12.27
+ ~!Race(Player1, ELF)~ + @922  + KIPCST12.28
END

IF ~~ KIPCST12.12
SAY @923
++ @924  + KIPCST12.29
++ @925 + KIPCST12.21
END

IF ~~ KIPCST12.13
SAY @926
IF ~~ THEN GOTO KIPCST12.7
END

IF ~~ KIPCST12.14
SAY @927
= @928
IF ~~ THEN EXIT
END

IF ~~ KIPCST12.15
SAY @929
IF ~~ THEN EXIT
END

IF ~~ KIPCST12.16
SAY @930
= @931
IF ~~ THEN EXIT
END

IF ~~ KIPCST12.17
SAY @932

= @933
IF ~~ THEN GOTO KIPCST12.7
END

IF ~~ KIPCST12.18
SAY @934
= @933
IF ~~ THEN GOTO KIPCST12.7
END

IF ~~ KIPCST12.19
SAY @935
= @936
IF ~~ THEN GOTO KIPCST12.7
END

IF ~~ KIPCST12.20
SAY @937
= @915
= @916
= @917
+ ~Race(Player1, ELF)~ + @918 + KIPCST12.24
+ ~Race(Player1, ELF)~ + @919 DO ~ SetGlobal("P#Eldreth","GLOBAL",1) ~ + KIPCST12.25
+ ~!Race(Player1, ELF)~ + @920 + KIPCST12.26
+ ~!Race(Player1, ELF)~ + @938  + KIPCST12.27
+ ~!Race(Player1, ELF)~ + @922  + KIPCST12.28
END

IF ~~ KIPCST12.21
SAY @939
= @940
= @915
= @916
= @917
+ ~Race(Player1, ELF)~ + @918 + KIPCST12.24
+ ~Race(Player1, ELF)~ + @919  DO ~ SetGlobal("P#Eldreth","GLOBAL",1) ~  + KIPCST12.25
+ ~!Race(Player1, ELF)~ + @920 + KIPCST12.26
+ ~!Race(Player1, ELF)~ + @921  + KIPCST12.25
+ ~!Race(Player1, ELF)~ + @922  + KIPCST12.27
END

IF ~~ KIPCST12.22
SAY @941
= @942
IF ~~ THEN EXIT
END

IF ~~ KIPCST12.23
SAY @943
= @944
IF ~~ THEN GOTO KIPCST12.7
END

IF ~~ KIPCST12.24
SAY @945
= @946

++ @947 EXIT
++ @948 EXIT
++ @949 EXIT
END

IF ~~ KIPCST12.25
SAY @950
IF ~~ THEN EXIT
END

IF ~~ KIPCST12.26
SAY  @951
= @946
++ @952 EXIT
++ @948 EXIT
++ @953 EXIT
++ @954 DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST12.27
SAY @955
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST12.28
SAY @956
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1) SetGlobal("P#Eldreth","GLOBAL",1) ~ EXIT
END

IF ~~ KIPCST12.29
SAY @957
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXIT
END

//Planar Prison Done

IF WEIGHT #990
~Global("P#KivanPlanar","GLOBAL",1)~ THEN BEGIN KivPlanar
SAY @958
++ @959 DO ~SetGlobal("P#KivanPlanar","GLOBAL",2)~ EXIT
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) ~ + @960 DO ~SetGlobal("P#KivanPlanar","GLOBAL",2)~ + KIPCST13.2
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) ~ + @961 DO ~SetGlobal("P#KivanPlanar","GLOBAL",2)~ + KIPCST13.2
++ @962 DO ~SetGlobal("P#KivanPlanar","GLOBAL",2)~ + KIPCST13.3
++ @963 DO ~SetGlobal("P#KivanPlanar","GLOBAL",2)~ + KIPCST13.4
+ ~!Dead("c6coran")~+ @964 DO ~SetGlobal("P#KivanPlanar","GLOBAL",2)~ + KIPCST13.5A
+ ~Dead("c6coran")~+ @964 DO ~SetGlobal("P#KivanPlanar","GLOBAL",2)~ + KIPCST13.5B
++ @965 DO ~SetGlobal("P#KivanPlanar","GLOBAL",2)~ + KIPCST13.1
END

IF ~~ KIPCST13.1
SAY @966
= @967
++ @968 EXIT
++ @969 + KIPCST13.6
++ @970 + KIPCST13.3
+ ~OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @971 + KIPCST13.7
END

IF ~~ KIPCST13.2
SAY @972
= @973
= @974 
++ @968 EXIT
++ @969 + KIPCST13.6
+ ~OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @971 + KIPCST13.7
END

IF ~~ KIPCST13.3
SAY @975
++ @976 + KIPCST13.8
+ ~OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @977 + KIPCST13.7
++ @978 + KIPCST13.9
++ @979 + KIPCST13.10
END

IF ~~ KIPCST13.4
SAY @980
= @973
= @974 
++ @968 EXIT
++ @969 + KIPCST13.6
+ ~OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @971 + KIPCST13.7
END

IF ~~ KIPCST13.5A
SAY @981
= @1434
= @967
++ @968 EXIT
++ @969 + KIPCST13.6
++ @970 + KIPCST13.3
+ ~OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @982 + KIPCST13.7
END

IF ~~ KIPCST13.5B
SAY @983
= @984
++ @985 EXIT
++ @986 + KIPCST13.11
END

IF ~~ KIPCST13.6
SAY @987
++ @988 + KIPCST13.12
++ @989 + KIPCST13.12
++ @990 + KIPCST13.13
END

IF ~~ KIPCST13.7
SAY @991
= @992
++ @993 EXIT
++ @994 + KIPCST13.14
++ @995 + KIPCST13.15A
++ @996 + KIPCST13.16A
END

IF ~~ KIPCST13.8
SAY @997
++ @998 +  KIPCST13.14A 
++ @999 +  KIPCST13.15
+ ~Gender(Player1, FEMALE)~ + @1000 +  KIPCST13.16
+ ~Gender(Player1, MALE)~ + @1000 +  KIPCST13.17
END

IF ~~ KIPCST13.9
SAY @1001
= @1002
++ @1003 EXIT
++ @1004 +  KIPCST13.18
++ @1005 EXIT
END

IF ~~  KIPCST13.10
SAY @1006
= @1007
++ @1008 EXIT
++ @995 + KIPCST13.15A
++ @1009 + KIPCST13.16A
END

IF ~~ KIPCST13.11
SAY @1010
= @1011
++ @1012 +  KIPCST13.19
++ @1013 EXIT
++ @1014 +  KIPCST13.20
END

IF ~~ KIPCST13.12
SAY @1015
= @1016
++ @1017  +  KIPCST13.21
++ @1008 EXIT
++ @1018 + KIPCST13.15A
++ @1009 + KIPCST13.16A
END


IF ~~ KIPCST13.13
SAY @1019
= @1016
++ @1008 EXIT
++ @1018 + KIPCST13.15A
++ @1020 + KIPCST13.16A 
END

IF ~~ KIPCST13.14
SAY @1021
IF ~Global("P#Shevarash","GLOBAL",0)~ THEN DO ~RealSetGlobalTimer("P#ShevarashTime","GLOBAL",1800) SetGlobal("P#Shevarash","GLOBAL",1) IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXIT
IF ~GlobalGT("P#Shevarash","GLOBAL",0)~ THEN DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXIT
END

IF ~~ KIPCST13.14A
SAY @1022
IF ~~ THEN EXIT
END

IF ~~ KIPCST13.15A
SAY @1023
++ @1024 +  KIPCST13.22
++ @1025 EXIT
END

IF ~~ KIPCST13.16A
SAY @1026
= @1027
++ @1024 +  KIPCST13.22
++ @1025 EXIT
END

IF ~~ KIPCST13.15
SAY @1028
IF ~~ THEN EXIT
END 

IF ~~ KIPCST13.16
SAY @1029
IF ~~ THEN DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXIT
END 

IF ~~ KIPCST13.17
SAY @1030
IF ~~ THEN EXIT
END 

IF ~~ KIPCST13.18
SAY @1031
= @1032
++ @1008 EXIT
++ @1033 + KIPCST13.15A
++ @1009 + KIPCST13.16A
END

IF ~~ KIPCST13.19
SAY @1034
= @1035
IF ~~ THEN EXIT
END 

IF ~~ KIPCST13.20
SAY @1036
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~EXIT
END

IF ~~ KIPCST13.21
SAY @1037
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~EXIT
END

IF ~~ KIPCST13.22
SAY @1038
IF ~~ THEN EXIT
END

//Recieved Arrows from Captain Arat, At Rest

IF WEIGHT #990
~Global("P#KivanArat","GLOBAL",2)~ THEN BEGIN KivArrows
SAY @1039
+ ~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @1040 DO ~SetGlobal("P#KivanArat","GLOBAL",3) IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST14.1
+ ~Gender(Player1,FEMALE) OR(2) Global("P#DeherianaLives","GLOBAL",1)Global("P#DeherianaLives","GLOBAL",2)~ + @1041 DO ~SetGlobal("P#KivanArat","GLOBAL",3)~ + KIPCST14.2
+ ~Gender(Player1,MALE) ~ + @1041 DO ~SetGlobal("P#KivanArat","GLOBAL",3)~ + KIPCST14.2
++ @1042 DO ~SetGlobal("P#KivanArat","GLOBAL",3)~ + KIPCST14.3
++ @1043 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ DO ~SetGlobal("P#KivanArat","GLOBAL",3)~ EXIT
++ @1044 DO ~SetGlobal("P#KivanArat","GLOBAL",3)~ + KIPCST14.8
END

IF ~~ KIPCST14.1
SAY @1045
++ @1046 + KIPCST14.3
++ @1047 + KIPCST14.4
++ @1043 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~  EXIT
END

IF ~~ KIPCST14.2A
SAY @1048
++ @1049 + KIPCST14.3
++ @1043 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~  EXIT
END


IF ~~ KIPCST14.2
SAY @1050
++ @1049 + KIPCST14.3
++ @1043 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~  EXIT
END

IF ~~ KIPCST14.3
SAY @1051
++ @1052 + KIPCST14.5
++ @1053 + KIPCST14.6
+~!Class(Player1,RANGER_ALL) ~ + @1054 + KIPCST14.7
END

IF ~~ KIPCST14.4
SAY @1055
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KIPCST14.5
SAY @1056 
IF ~~ DO ~GiveItemCreate("P#AROW","p#kivan",40,0,0) RestParty()~  EXIT
END

IF ~~ KIPCST14.6
SAY @1057
= @1058
= @1059
= @1060
++ @1061 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ EXIT
++ @1062 + KIPCST14.5
++ @1063  +  KIPCST14.14
END

IF ~~ KIPCST14.7
SAY @1064
= @1065
= @1066
= @1067
= @1060
++ @1061 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ EXIT
++ @1068 + KIPCST14.15
++ @1063  +  KIPCST14.14
END

IF ~~ KIPCST14.8
SAY @1069
= @1070
++ @1071 + KIPCST14.2A
++ @1072 + KIPCST14.9
++ @1073 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ EXIT
++ @1074 + KIPCST14.3
END

IF ~~ KIPCST14.9
SAY @1075
++ @1076 + KIPCST14.10
++ @1077 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ EXIT
++ @1074 + KIPCST14.3
END

IF ~~ KIPCST14.10
SAY @1078
++ @1079 + KIPCST14.11
++ @1077 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ EXIT
++ @1074 + KIPCST14.3
END

IF ~~ KIPCST14.11
SAY @1080
++ @1081 + KIPCST14.12
++ @1077 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ EXIT
++ @1074 + KIPCST14.3
END

IF ~~ KIPCST14.12
SAY @1082
++ @1083 + KIPCST14.13
++ @1077 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ EXIT
++ @1084 + KIPCST14.3
END

IF ~~ KIPCST14.13
SAY @1085
= @1086 
++ @1077 DO ~GiveItemCreate("P#AROW","p#kivan",20,0,0) RestParty()~ EXIT
++ @1084 + KIPCST14.3
END

IF ~~ KIPCST14.14
SAY @1087
= @1088
IF ~~ DO ~GiveItemCreate("P#AROW","p#kivan",40,0,0) RestParty()~ EXIT
END

IF ~~ KIPCST14.15
SAY @1089
= @1088
IF ~~ DO ~GiveItemCreate("P#AROW","p#kivan",40,0,0) RestParty()~ EXIT
END

//Found a painting of a monster

IF WEIGHT #990
~Global("P#KivanPortrait","GLOBAL",1)~ THEN BEGIN KivPainting
SAY @1090
++ @1091 DO ~SetGlobal("P#KivanPortrait","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST15.1
++ @1092 DO ~SetGlobal("P#KivanPortrait","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST15.2
+~!Race(Player1,ELF)~+ @1093 DO ~SetGlobal("P#KivanPortrait","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST15.3
++ @1094 DO ~SetGlobal("P#KivanPortrait","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST15.4
END

IF ~~ KIPCST15.1
SAY @1095
++ @1096 + KIPCST15.4
++ @1097 + KIPCST15.5
++ @1098 + KIPCST15.6
END

IF ~~ KIPCST15.2
SAY @1099
++ @1100 + KIPCST15.7
+ ~Class(Player1,BARD_ALL)~ + @1101 + KIPCST15.8
++ @1102 + KIPCST15.9
+ ~Race(Player1,ELF)~+ @1103 + KIPCST15.10
+ ~!Race(Player1,ELF)~+ @1103 + KIPCST15.11
+ ~Race(Player1,ELF)~+ @1104 + KIPCST15.12
END

IF ~~ KIPCST15.3
SAY @1105
++ @1100 + KIPCST15.7
+ ~Class(Player1,BARD_ALL)~ + @1106 + KIPCST15.8
++ @1102 + KIPCST15.9
+ ~Race(Player1,ELF)~+ @1103 + KIPCST15.10
+ ~!Race(Player1,ELF)~+ @1103 + KIPCST15.11
+ ~Race(Player1,ELF)~+ @1104 + KIPCST15.12
END

IF ~~ KIPCST15.4
SAY @474
IF ~~ THEN GOTO KIPCST15.2
END

IF ~~ KIPCST15.5
SAY @1107
++ @1108 EXIT
+ ~Class(Player1,BARD_ALL)~ + @1109 + KIPCST15.13
++ @1110 + KIPCST15.2
END

IF ~~ KIPCST15.6
SAY @1111
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST15.7
SAY @1112
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ KIPCST15.8
SAY @1113
= @1114
++ @1115 + KIPCST15.14
++ @1116 + KIPCST15.15
++ @1117 + KIPCST15.7
++ @1118 + KIPCST15.16
++ @1119 + KIPCST15.17
END

IF ~~ KIPCST15.9
SAY @1120
++ @1115 + KIPCST15.18
++ @1121 + KIPCST15.19
++ @1117 + KIPCST15.7
++ @1122 + KIPCST15.20
END

IF ~~ KIPCST15.10
SAY @1123
+ ~Race(Player1,ELF)~ + @1124 + KIPCST15.21
++ @1125 EXIT
++ @1102 + KIPCST15.9
END

IF ~~ KIPCST15.11
SAY @1126
++ @1124 + KIPCST15.21
++ @1125 EXIT
++ @1102 + KIPCST15.9
END

IF ~~ KIPCST15.12
SAY @1127
= @1128
++ @1129 + KIPCST15.21
++ @1130 EXIT
END

IF ~~ KIPCST15.13
SAY @1131
IF ~~ THEN GOTO KIPCST15.8
END

IF ~~ KIPCST15.14
SAY @1132
= @1133
++ @1134 EXIT
++ @1135 + KIPCST15.22
END

IF ~~ KIPCST15.15
SAY @1136
IF ~~ THEN GOTO KIPCST15.14
END

IF ~~ KIPCST15.16
SAY @1057 
= @1137
++ @1134 EXIT
++ @1135 + KIPCST15.22
END

IF ~~ KIPCST15.17
SAY @1138
IF ~~ THEN GOTO KIPCST15.7
END

IF ~~ KIPCST15.18
SAY @1132
= @1139
IF ~~ THEN EXIT
END

IF ~~ KIPCST15.19
SAY @1140
++ @1141 EXIT
 ++ @1122 + KIPCST15.20
END

IF ~~ KIPCST15.20
 SAY@1142
= @1143
IF ~~ THEN EXIT
END

IF ~~ KIPCST15.21
SAY @1144
= @1143
IF ~~ THEN EXIT
END

IF ~~ KIPCST15.22
SAY @1145
IF ~~ THEN EXIT
END

//PC is without Soul, at Rest

IF WEIGHT #990
~Global("P#KivanSoul","GLOBAL",1)~ THEN BEGIN KivSoulless
SAY @1146
++ @1147 DO ~SetGlobal("P#KivanSoul","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~  + KIPCST16.1
++ @1148 DO ~SetGlobal("P#KivanSoul","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST16.2
++ @1149 DO ~SetGlobal("P#KivanSoul","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST16.3
++ @1150 DO ~SetGlobal("P#KivanSoul","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST16.4
++ @1151 DO ~SetGlobal("P#KivanSoul","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST16.5
++ @1152 DO ~SetGlobal("P#KivanSoul","GLOBAL",2) RealSetGlobalTimer("P#KivanFlirtTimer","GLOBAL",1)~ + KIPCST16.8
END

IF ~~ KIPCST16.1
SAY @1153
++ @1149 + KIPCST16.3
+ ~GlobalGT("DrowTalk","GLOBAL",4)~ + @1154 + KIPCST16.6
++ @1155 + KIPCST16.7
++ @1152 + KIPCST16.8
END

IF ~~ KIPCST16.2
SAY @1156
++ @1157 + KIPCST16.1
++ @1158 + KIPCST16.9
++ @1159 + KIPCST16.10
++ @1160 + KIPCST16.11
+~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~+ @1161+ KIPCST16.12
END

IF ~~ KIPCST16.3
SAY @1162
++ @1157 + KIPCST16.1
++ @1158 + KIPCST16.9
++ @1159 + KIPCST16.10
++ @1160 + KIPCST16.11
+~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~+ @1163+ KIPCST16.12
END

IF ~~ KIPCST16.4
SAY @1164
= @1165
++ @1152 + KIPCST16.8
++ @1158 + KIPCST16.9
++ @1166 + KIPCST16.10
+~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~+ @1163 + KIPCST16.12
+~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~+ @1167 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST16.13
END

IF ~~ KIPCST16.5
SAY @1168
++ @1169 DO ~RestParty()~ EXIT
++ @1170 + KIPCST16.14
++ @1171 + KIPCST16.8
END

IF ~~ KIPCST16.6
SAY @1172
++ @1173 + KIPCST16.7
++ @1174 + KIPCST16.14
++ @1175 + KIPCST16.8
END

IF ~~  KIPCST16.7
SAY @1176
IF ~~ THEN DO ~ReallyForceSpellRES("SPIN121",Player1) RestParty()~ EXIT
END

IF ~~ KIPCST16.8
SAY @1177
+ ~InParty("Jan")~ + @1178  + KIPCST16.15
++ @1179 + KIPCST16.16
+ ~!Race(Player1,ELF)~+ @1180 + KIPCST16.17
END

IF ~~ KIPCST16.9
SAY @1181
= @1182
IF ~~ THEN DO ~ReallyForceSpellRES("SPIN121",Player1) RestParty()~ EXIT
END

IF ~~ KIPCST16.10
SAY @1183
= @1184
= @1185
= @1186
= @1187
= @1188
++ @1189 + KIPCST16.8
++ @1190 + KIPCST16.16
++ @1191 + KIPCST16.9
++ @1192 + KIPCST16.7
END

IF ~~ KIPCST16.11
SAY @1193
= @1182
IF ~~ THEN DO ~ReallyForceSpellRES("SPIN121",Player1) RestParty()~ EXIT
END

IF ~~ KIPCST16.12
SAY @1194
++ @1195 + KIPCST16.18
++ @1196 + KIPCST16.19
+ ~Class(Player1,BARD_ALL)~ + @1197 + KIPCST16.20
++ @1198 + KIPCST16.18
END

IF ~~ KIPCST16.13
SAY @1199
++ @1200 + KIPCST16.7
++ @1201  + KIPCST16.21
++ @1202 DO ~RestParty()~ EXIT
+~Gender(Player1,FEMALE) OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~+ @1163 + KIPCST16.12
END

IF ~~ KIPCST16.14
SAY @1203
IF ~~ THEN GOTO KIPCST16.9
END

IF ~~ KIPCST16.15
SAY @1204
= @1205
= @1206
++ @1207 + KIPCST16.7
++ @1208 + KIPCST16.22
END

IF ~~ KIPCST16.16
SAY @1209
= @1210
IF ~~ THEN DO ~ReallyForceSpellRES("SPIN121",Player1) RestParty()~ EXIT
END

IF ~~  KIPCST16.17
SAY @1211 
IF ~~ THEN GOTO KIPCST16.14
END

IF ~~ KIPCST16.18
SAY @1212
= @1213
++ @1214 + KIPCST16.7
++ @1215 + KIPCST16.23
++ @1216 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + KIPCST16.24
++ @1217  + KIPCST16.25
END

IF ~~ KIPCST16.19
SAY @1218
IF ~~ THEN GOTO KIPCST16.18
END

IF ~~ KIPCST16.20
SAY @1219
++ @1214 + KIPCST16.7
++ @1215 + KIPCST16.23
++ @1220 + KIPCST16.24
++ @1217  + KIPCST16.25
++ @1221  + KIPCST16.26
END

IF ~~ KIPCST16.21
SAY @1222
IF ~~ THEN GOTO KIPCST16.7
END

IF ~~ KIPCST16.22
SAY @1223
= @1224
= @1436
= @1225
= @1226
= @1227
= @1228
= @1229
= @1230
= @1231
= @1232
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KIPCST16.23
SAY @1233
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KIPCST16.24
SAY @1234
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ KIPCST16.25
SAY @1235
= @1236
IF ~~ THEN GOTO KIPCST16.7
END

IF ~~ KIPCST16.26
SAY @1237
IF ~~ THEN GOTO KIPCST16.7
END

//In the Underdark

IF WEIGHT #990
~Global("P#KivanUnderdarkEntry","GLOBAL",1)~ THEN BEGIN KivUnderdark
SAY @1238
++ @1239 DO ~SetGlobal("P#KivanUnderdarkEntry","GLOBAL",2)~ EXIT
++ @1240 DO ~SetGlobal("P#KivanUnderdarkEntry","GLOBAL",2)~ + KivUnderdark1.1
++ @1241 DO ~SetGlobal("P#KivanUnderdarkEntry","GLOBAL",2)~ + KivUnderdark1.2
++ @1242 DO ~SetGlobal("P#KivanUnderdarkEntry","GLOBAL",2)~ + KivUnderdark1.3
END

IF ~~ KivUnderdark1.8
SAY @1243
IF ~~ THEN GOTO KivUnderdark1.3
END

IF ~~ KivUnderdark1.7
SAY @1244
IF ~~ THEN GOTO KivUnderdark1.3
END

IF ~~ KivUnderdark1.6
SAY @1245
IF ~~ THEN GOTO KivUnderdark1.3
END

IF ~~ KivUnderdark1.5
SAY @1246
IF ~~ THEN GOTO KivUnderdark1.3
END

IF ~~ KivUnderdark1.4
SAY @1247
IF ~~ THEN EXIT
END

IF ~~ KivUnderdark1.3
SAY @1248
IF ~~ THEN EXIT
END

IF ~~ KivUnderdark1.2
SAY @1249
++ @1250 + KivUnderdark1.4
++ @1251 + KivUnderdark1.8
++ @1252 + KivUnderdark1.7
END

IF ~~ KivUnderdark1.1
SAY @1253
++ @1250 + KivUnderdark1.4
++ @1254 + KivUnderdark1.5
++ @1255 + KivUnderdark1.6
END

//In Ust Natha

IF WEIGHT #990
~Global("P#KivanUst","GLOBAL",1)~ THEN BEGIN KivUstNatha1
SAY @1256
++ @1257 DO ~SetGlobal("P#KivanUst","GLOBAL",2)~ + KIPCST17.1
+ ~Gender(Player1,MALE)~+ @1258 DO ~SetGlobal("P#KivanUst","GLOBAL",2)~ + KIPCST17.2M
+ ~Gender(Player1,FEMALE)~+ @1258 DO ~SetGlobal("P#KivanUst","GLOBAL",2)~ + KIPCST17.2F
++ @1259 DO ~SetGlobal("P#KivanUst","GLOBAL",2)~ + KIPCST17.3
++ @1260 DO ~SetGlobal("P#KivanUst","GLOBAL",2)~ + KIPCST17.4
++ @1261 DO ~SetGlobal("P#KivanUst","GLOBAL",2)~ + KIPCST17.5
END

IF ~~ KIPCST17.1
SAY @1262
++ @1263 + KIPCST17.6
++ @1264 + KIPCST17.4
++ @1261 + KIPCST17.5
+ ~!Race(Player1,ELF)~ + @1265 + KIPCST17.7
END

IF ~~ KIPCST17.2M
SAY @1266
++ @1267 DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~EXIT
++ @1268 EXIT
+ + @1269 + KIPCST17.8
END

IF ~~ KIPCST17.2F
SAY @1270
++ @1267 DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~EXIT
++ @1271 EXIT
+ ~OR(2) Global("P#DeherianaLives","GLOBAL",1)Global("P#DeherianaLives","GLOBAL",2)~ + @1272 + KIPCST17.8
+ ~OR(3) Global("P#DeherianaDead","GLOBAL",1) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @1273 + KIPCST17.9
END

IF ~~ KIPCST17.3
SAY @1274
= @1275
++ @1263 + KIPCST17.6
++ @1264 + KIPCST17.4
++ @1261 + KIPCST17.5
+ ~!Race(Player1,ELF)~ + @1265 + KIPCST17.7
END

IF ~~ KIPCST17.4
SAY @1276
++ @1277 + KIPCST17.10
++ @1278 + KIPCST17.11
++ @1279 + KIPCST17.8
++ @1280 + KIPCST17.12
+ ~!Race(Player1,ELF)~ + @1265 + KIPCST17.7
END

IF ~~ KIPCST17.5
SAY @1281
= @1282
++ @1283 + KIPCST17.8
++ @1284 + KIPCST17.4
++ @1285 + KIPCST17.13
END

IF ~~ KIPCST17.6
SAY @1286  
= @1287
IF ~~ THEN GOTO KIPCST17.4
END

IF ~~ KIPCST17.7
SAY @1288
= @1289
= @1290
= @1291
++ @1292 + KIPCST17.14
++ @1293 + KIPCST17.15
++ @1294 + KIPCST17.8
END

IF ~~ KIPCST17.8
SAY @1295
IF ~~ THEN EXIT
END

IF ~~ KIPCST17.9
SAY @1296
= @1297
++ @1298 + KIPCST17.8
++ @1299 + KIPCST17.4
++ @1300 + KIPCST17.16
END

IF ~~ KIPCST17.10
SAY @1301
= @1302
= @1303
++ @1304 + KIPCST17.8
++ @1305 + KIPCST17.17
++ @1306 + KIPCST17.18
END

IF ~~ KIPCST17.11
SAY @1307
= @1308
= @1309
= @1310
= @1291
++ @1292 + KIPCST17.14
++ @1293 + KIPCST17.15
++ @1294 + KIPCST17.8
END

IF ~~ KIPCST17.12
SAY @1311
= @1312
= @1313
= @1310
= @1291
++ @1292 + KIPCST17.14
++ @1293 + KIPCST17.15
++ @1294 + KIPCST17.8
END

IF ~~ KIPCST17.13
SAY @1314
++ @1315 + KIPCST17.7
++ @1316 + KIPCST17.8
END

IF ~~ KIPCST17.14
SAY @1317
IF ~~ THEN DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",5)~EXIT
END

IF ~~ KIPCST17.15
SAY @1318
IF ~~ THEN EXIT
END

IF ~~ KIPCST17.16
SAY @1319
= @1320
IF ~~ THEN EXIT
END

IF ~~ KIPCST17.17
SAY @1321
=@1322
= @1323
= @1324
IF ~~ THEN EXIT
END

IF ~~ KIPCST17.18
SAY @1325
IF ~~ THEN EXIT
END

//Merella died

IF WEIGHT #990
~Global("P#KivanRanger","GLOBAL",1)~ THEN BEGIN KivRanger1
SAY @1326
+ ~Class(Player1,RANGER_ALL)~ + @1327 DO ~SetGlobal("P#KivanRanger","GLOBAL",2)~ + KIST19.1
+ ~Class(Player1,RANGER_ALL)~ + @1328 DO ~SetGlobal("P#KivanRanger","GLOBAL",2)~ + KIST19.1
++ @1329 DO ~SetGlobal("P#KivanRanger","GLOBAL",2)~ EXIT
+ ~!Class(Player1,RANGER_ALL)~ + @1330 DO ~SetGlobal("P#KivanRanger","GLOBAL",2)~ + KIST19.2
+ ~!Class(Player1,RANGER_ALL)~ + @1331 DO ~SetGlobal("P#KivanRanger","GLOBAL",2)~ + KIST19.3
END

IF ~~ KIST19.1
SAY @1332
+~InParty("Minsc") InParty("Valygar") ~ + @1333 + KIST19.4
++ @1334 + KIST19.5
++ @1335+ KIST19.6
++ @1336+ KIST19.7
END

IF ~~  KIST19.2
SAY @1337
++ @1338 + KIST19.8
++ @1339 + KIST19.9
++ @1340 + KIST19.10
++ @1341 + KIST19.11
END

IF ~~ KIST19.3
SAY @1342
++ @1338 + KIST19.8
++ @1339 + KIST19.9
++ @1340 + KIST19.10
++ @1341 + KIST19.11
++ @1343 + KIST19.12
END

IF ~~ KIST19.4
SAY @1344
IF ~~ THEN EXIT
END

IF ~~  KIST19.5
SAY @1345
++ @1346 + KIST19.8
++ @1347 + KIST19.9
++ @1348 + KIST19.12
END

IF ~~ KIST19.6
SAY @1349
++ @1347 + KIST19.9
++ @1348 + KIST19.12
++ @1350 + KIST19.13
END

IF ~~ KIST19.7
SAY @1351
IF ~~ THEN EXIT
END

IF ~~ KIST19.8
SAY @1352
= @1353
= @1354
= @1355
IF ~!Class(Player1,RANGER_ALL)~ THEN EXIT
IF ~Class(Player1,RANGER_ALL)~ THEN GOTO KIST19.14
END

IF ~~ KIST19.9
SAY @1356
IF ~~ THEN EXIT
END

IF ~~ KIST19.12
SAY @1357
= @1358
= @1355
IF ~!Class(Player1,RANGER_ALL)~ THEN EXIT
IF ~Class(Player1,RANGER_ALL)~ THEN GOTO KIST19.14
END

IF ~~ KIST19.13
SAY @1359
++ @1360 EXIT
++ @1361 + KIST19.8
END

IF ~~ KIST19.14
SAY @1362
++ @1363 DO ~SetGlobal("P#RangerWantsHold","GLOBAL",1)~ +  KIST19.15
++ @1364 +  KIST19.16
++ @1365 +  KIST19.17
END

IF ~~ KIST19.15
SAY @1366
IF~~ THEN EXIT
END

IF ~~ KIST19.16
SAY @1367
IF~~ THEN EXIT
END

IF ~~ KIST19.17
SAY @1368
IF~~ THEN EXIT
END

//In Tethyr

IF WEIGHT #990
~Global("P#KivanTethir","GLOBAL",1)~ THEN BEGIN KivTethyr1
SAY @1369
++ @1370 DO ~SetGlobal("P#KivanTethir","GLOBAL",2)~ + KIST20.1
++ @1371 DO ~SetGlobal("P#KivanTethir","GLOBAL",2)~ + KIST20.2
++ @1372 DO ~SetGlobal("P#KivanTethir","GLOBAL",2)~ + KIST20.3
END

IF ~~ KIST20.1
SAY @1373
IF ~~ THEN GOTO KIST20.3
END

IF ~~ KIST20.2
SAY @1374
IF ~~ THEN GOTO KIST20.3
END

IF ~~ KIST20.3
SAY @1375
++ @1376 + KIST20.4
++ @1377 + KIST20.5
++ @1378 + KIST20.6
++ @1379 EXIT
END

IF ~~ KIST20.4
SAY @1380
= @1381
IF ~~ THEN EXIT
END

IF ~~ KIST20.5
SAY @1382
= @1383
IF ~~ THEN EXIT
END

IF ~~ KIST20.6
SAY @1384
= @1385
IF ~~ THEN EXIT
END

//Ellesime's Dream

IF WEIGHT #990
~Global("P#KivanElleDream","GLOBAL",2)~ THEN BEGIN KivEllesDream
SAY @1386
++ @1387 DO ~ SetGlobal("P#KivanElleDream","GLOBAL",3)~ + P#KiElDream1.1
++ @1388 DO ~ SetGlobal("P#KivanElleDream","GLOBAL",3)~ + P#KiElDream1.2
++ @1389 DO ~ SetGlobal("P#KivanElleDream","GLOBAL",3)~ + P#KiElDream1.3
END

IF ~~ P#KiElDream1.1
SAY @1390
= @1391
++ @1392 DO ~ SetGlobal("P#KivanElleDream","GLOBAL",3)~ + P#KiElDream1.2
++ @1389 DO ~ SetGlobal("P#KivanElleDream","GLOBAL",3)~ + P#KiElDream1.3
END

IF ~~ P#KiElDream1.2
SAY @1393
++ @1394 + P#KiElDream1.4
+ ~Gender(Player1,MALE)~ + @1395 + P#KiElDream1.5
++ @1389 DO ~ SetGlobal("P#KivanElleDream","GLOBAL",3)~ + P#KiElDream1.3
END

IF ~~ P#KiElDream1.3
SAY @1396
IF ~~ THEN DO ~IncrementGlobal("P#kivanOffence","GLOBAL",1)~ EXIT
END

IF ~~ P#KiElDream1.4
SAY @1397
++ @1398 + P#KiElDream1.6
+ ~Gender(Player1,MALE)~ + @1399 + P#KiElDream1.5
++ @1400 + P#KiElDream1.7
++ @1389 DO ~ SetGlobal("P#KivanElleDream","GLOBAL",3)~ + P#KiElDream1.3
END
IF ~~ P#KiElDream1.5
SAY @1401
IF ~~ THEN EXIT
END

IF ~~ P#KiElDream1.6
SAY @1402
IF ~~ THEN EXIT
END

IF ~~ P#KiElDream1.7
SAY @1403
IF ~~ THEN EXIT
END

//Pai'na//

IF WEIGHT #990
~Global("P#KivanCenteol","GLOBAL",1)~ THEN BEGIN KivCenteol
SAY @1465
++ @1437 DO ~SetGlobal("P#KivanCenteol","GLOBAL",2)~ + KiCenteol1.1
++ @1438 DO ~SetGlobal("P#KivanCenteol","GLOBAL",2)~ + KiCenteol1.2
++ @1439 DO ~SetGlobal("P#KivanCenteol","GLOBAL",2)~ + KiCenteol1.3
++ @1440 DO ~SetGlobal("P#KivanCenteol","GLOBAL",2)~ + KiCenteol1.4
END

IF ~~ KiCenteol1.12
SAY @1441 
IF ~~ THEN EXIT
END

IF ~~ KiCenteol1.11
SAY @1442
= @1443
IF ~~ THEN DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ EXIT
END

IF ~~ KiCenteol1.10
SAY @1444 
IF ~~ THEN EXIT
END

IF ~~ KiCenteol1.9
SAY @1445 
IF ~~ THEN EXIT
END

IF ~~ KiCenteol1.8
SAY @1446 
++ @1447 + KiCenteol1.12
++ @1448 + KiCenteol1.10
+ ~Gender(Player1,FEMALE)~+ @1449 + KiCenteol1.11
++ @1450 EXIT
END

IF ~~ KiCenteol1.7
SAY @1451
++ @1452 + KiCenteol1.5
++ @1453 + KiCenteol1.6
++ @1454 EXIT
++ @1455 + KiCenteol1.8
END

IF ~~ KiCenteol1.6
SAY @1456 
++ @1457 + KiCenteol1.9
++ @1458 + KiCenteol1.10
+ ~Gender(Player1,FEMALE)~+ @1449 + KiCenteol1.11
++ @1450 EXIT
END

IF ~~ KiCenteol1.5
SAY @1459 
++ @1457 + KiCenteol1.9
++ @1458 + KiCenteol1.10
+ ~Gender(Player1,FEMALE)~+ @1449 + KiCenteol1.11
++ @1450 EXIT
END

IF ~~ KiCenteol1.4
SAY @1460
++ @1452 + KiCenteol1.5
++ @1453 + KiCenteol1.6
++ @1461 + KiCenteol1.7
++ @1455 + KiCenteol1.8
END

IF ~~ KiCenteol1.3
SAY @1462
++ @1452 + KiCenteol1.5
++ @1453 + KiCenteol1.6
++ @1461 + KiCenteol1.7
++ @1455 + KiCenteol1.8
END

IF ~~ KiCenteol1.2
SAY @1463 
IF ~~ THEN EXIT
END

IF ~~ KiCenteol1.1
SAY @1464
++ @1452 + KiCenteol1.5
++ @1453 + KiCenteol1.6
++ @1461 + KiCenteol1.7
END

//lavok for a human

IF WEIGHT #990
~Global("P#LavokDead","GLOBAL",1)~ THEN BEGIN LavokDead
SAY @1466
++ @1467 DO ~SetGlobal("P#LavokDead","GLOBAL",2)~ + P#KiLa1.1
++ @1468 DO ~SetGlobal("P#LavokDead","GLOBAL",2)~ + P#KiLa1.2
++ @1469 DO ~SetGlobal("P#LavokDead","GLOBAL",2)~ + P#KiLa1.3
++ @1470 DO ~SetGlobal("P#LavokDead","GLOBAL",2)~ + P#KiLa1.4
END

IF ~~ P#KiLa1.14
SAY @1471
IF ~~ THEN EXIT
END

IF ~~ P#KiLa1.13
SAY @1472
IF ~~ THEN EXIT
END

IF ~~ P#KiLa1.12
SAY @1473
IF ~~ THEN EXIT
END

IF ~~ P#KiLa1.11
SAY @1474
IF ~~ THEN EXIT
END

IF ~~ P#KiLa1.10
SAY @1475
IF ~~ THEN EXIT
END

IF ~~ P#KiLa1.9
SAY @1476
++ @1477 + P#KiLa1.14
++ @1478 + P#KiLa1.7
++ @1479 + P#KiLa1.8
++ @1480 + P#KiLa1.12
END

IF ~~ P#KiLa1.8
SAY @1481
IF ~~ THEN EXIT
END

IF ~~ P#KiLa1.7
SAY @1482
IF ~~ THEN DO ~IncrementGlobal("P#KivanLove","GLOBAL",-1)~ EXIT
END

IF ~~ P#KiLa1.6
SAY @1483
IF ~~ THEN GOTO P#KiLa1.5
END

IF ~~ P#KiLa1.5
SAY @1484
IF ~~ THEN EXIT
END

IF ~~ P#KiLa1.4
SAY @1485
++ @1486 + P#KiLa1.13
++ @1487 EXIT
++ @1488 + P#KiLa1.3
END

IF ~~ P#KiLa1.3
SAY @1489
++ @1490 + P#KiLa1.10
++ @1491 + P#KiLa1.11
++ @1480 + P#KiLa1.12
END

IF ~~ P#KiLa1.2
SAY @1492
++ @1493 + P#KiLa1.7
++ @1494 + P#KiLa1.8
++ @1495 + P#KiLa1.9
END

IF ~~ P#KiLa1.1
SAY @1496
++ @1497 + P#KiLa1.5
++ @1498 + P#KiLa1.6
++ @1499 + P#KiLa1.3
++ @1470 + P#KiLa1.4
END

//bodhi dead

IF WEIGHT #990
~Global("P#BodhiDead","GLOBAL",1)~ THEN BEGIN BodhiDead
SAY @1500
++ @1501 DO ~SetGlobal("P#BodhiDead","GLOBAL",2)~ + P#KiBo1.1
++ @1502 DO ~SetGlobal("P#BodhiDead","GLOBAL",2)~ + P#KiBo1.2
++ @1503 DO ~SetGlobal("P#BodhiDead","GLOBAL",2)~ + P#KiBo1.3
++ @1504 DO ~SetGlobal("P#BodhiDead","GLOBAL",2)~ + P#KiBo1.4
+ ~PartyHasItem("MISCBP")~+ @1505 DO ~SetGlobal("P#BodhiDead","GLOBAL",2)~ + P#KiBo1.5
+ ~Global("P#KivanRomanceActive","GLOBAL",1)~ + @1506 DO ~SetGlobal("P#BodhiDead","GLOBAL",2)~ + P#KiBo1.6
+ ~Global("P#KivanRomanceActive","GLOBAL",1)~ + @1507 DO ~SetGlobal("P#BodhiDead","GLOBAL",2)~ + P#KiBo1.7
END

IF ~~ P#KiBo1.22
SAY @1508
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.21
SAY @1509
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.20
SAY @1510
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.19
SAY @1511
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.18
SAY @1512
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.17
SAY @1513
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.16
SAY @1514
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.15
SAY @1515
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.14
SAY @1516
IF ~~  THEN EXIT 
END


IF ~~ P#KiBo1.13
SAY @1517
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.12
SAY @1518
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.11
SAY @1519
++ @1520 + P#KiBo1.20
++ @1521 + P#KiBo1.21
++ @1522 + P#KiBo1.22
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.10
SAY @1523
IF ~~  THEN EXIT 
END

IF ~~ P#KiBo1.9
SAY @1524
IF ~~ THEN GOTO P#KiBo1.3
END

IF ~~ P#KiBo1.8
SAY @1525
IF ~~ THEN EXIT
END

IF ~~ P#KiBo1.7
SAY @1526
= @1527
++ @1528 + P#KiBo1.18
++ @1529 + P#KiBo1.19
++ @1530  + P#KiBo1.12
++ @1531 + P#KiBo1.13
END

IF ~~ P#KiBo1.6
SAY @1532
++ @1528 + P#KiBo1.18
++ @1529 + P#KiBo1.19
++ @1530  + P#KiBo1.12
++ @1533 + P#KiBo1.13
END

IF ~~ P#KiBo1.5
SAY @1534
++ @1535  + P#KiBo1.15
++ @1536 + P#KiBo1.16
++ @1537 + P#KiBo1.17
END

IF ~~ P#KiBo1.4
SAY @1538
IF ~~ THEN  GOTO P#KiBo1.3
END

IF ~~ P#KiBo1.3
SAY @1539
+ ~PartyHasItem("MISCBP")~+ @1540 + P#KiBo1.5
+ ~InPartyAllowDead(Player2) !InParty(Player2)~ + @1541 + P#KiBo1.8
+ ~InPartyAllowDead(Player3) !InParty(Player3) InParty(Player2)~ + @1541 + P#KiBo1.8
+ ~InPartyAllowDead(Player4) !InParty(Player4) InParty(Player2) InParty(Player3)~ + @1541 + P#KiBo1.8
+ ~InPartyAllowDead(Player5) !InParty(Player5) InParty(Player2) InParty(Player3) InParty(Player4)~ + @1541 + P#KiBo1.8
+ ~InPartyAllowDead(Player6) !InParty(Player6) InParty(Player2) InParty(Player3) InParty(Player4) InParty(Player5)~ + @1541 + P#KiBo1.8
++ @1542  + P#KiBo1.11
++ @1543  + P#KiBo1.12
++ @1544 + P#KiBo1.13
++ @1545  + P#KiBo1.14
END

IF ~~ P#KiBo1.2
SAY @1546
+ ~PartyHasItem("MISCBP")~+ @1540 + P#KiBo1.5
+ ~InPartyAllowDead(Player2) !InParty(Player2)~ + @1541 + P#KiBo1.8
+ ~InPartyAllowDead(Player3) !InParty(Player3) InParty(Player2)~ + @1541 + P#KiBo1.8
+ ~InPartyAllowDead(Player4) !InParty(Player4) InParty(Player2) InParty(Player3)~ + @1541 + P#KiBo1.8
+ ~InPartyAllowDead(Player5) !InParty(Player5) InParty(Player2) InParty(Player3) InParty(Player4)~ + @1541 + P#KiBo1.8
+ ~InPartyAllowDead(Player6) !InParty(Player6) InParty(Player2) InParty(Player3) InParty(Player4) InParty(Player5)~ + @1541 + P#KiBo1.8
++ @1542  + P#KiBo1.11
++ @1543  + P#KiBo1.12
++ @1544 + P#KiBo1.13
++ @1545  + P#KiBo1.14
END

IF ~~ P#KiBo1.1
SAY @1547
++ @1548 + P#KiBo1.3
+ ~InPartyAllowDead(Player2) !InParty(Player2)~ + @1549 + P#KiBo1.8
+ ~InPartyAllowDead(Player3) !InParty(Player3) InParty(Player2)~ + @1549 + P#KiBo1.8
+ ~InPartyAllowDead(Player4) !InParty(Player4) InParty(Player2) InParty(Player3)~ + @1549 + P#KiBo1.8
+ ~InPartyAllowDead(Player5) !InParty(Player5) InParty(Player2) InParty(Player3) InParty(Player4)~ + @1549 + P#KiBo1.8
+ ~InPartyAllowDead(Player6) !InParty(Player6) InParty(Player2) InParty(Player3) InParty(Player4) InParty(Player5)~ + @1549 + P#KiBo1.8
++ @1550 + P#KiBo1.9
++ @1551 + P#KiBo1.10
+ ~PartyHasItem("MISCBP")~+ @1540 + P#KiBo1.5
END

IF WEIGHT #990
~Global("P#HappinessTalk","GLOBAL",1)~ THEN BEGIN DeherianaLives
SAY @1552
++ @1553 DO ~SetGlobal("P#HappinessTalk","GLOBAL",2)~ + P#KiHa1.1
++ @1554 DO ~SetGlobal("P#HappinessTalk","GLOBAL",2)~ + P#KiHa1.2
++ @1555 DO ~SetGlobal("P#HappinessTalk","GLOBAL",2)~ + P#KiHa1.3
++ @1556 DO ~SetGlobal("P#HappinessTalk","GLOBAL",2)~ + P#KiHa1.4
END

IF ~~ P#KiHa1.22
SAY @1557
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.21
SAY @1558
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.20
SAY @1559
IF ~~ THEN GOTO  P#KiHa1.19
END

IF ~~ P#KiHa1.19
SAY @1560
= @1561
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.18
SAY @1562
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.17
SAY @1563
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.16
SAY @1564
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.15
SAY @1565
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.14
SAY @1566
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.13
SAY @1567
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.12
SAY @1568
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.11
SAY @1569
IF ~~ THEN EXIT
END

IF ~~ P#KiHa1.10
SAY @1570
++ @1571 + P#KiHa1.5
++ @1572  + P#KiHa1.18
++ @1573  + P#KiHa1.19
++ @1574  + P#KiHa1.21
++ @1575  + P#KiHa1.22
END

IF ~~ P#KiHa1.9
SAY @1576
= @1577
= @1578
++ @1579  + P#KiHa1.20
++ @1580 + P#KiHa1.5
++ @1581 + P#KiHa1.10
END

IF ~~ P#KiHa1.8
SAY @1582
++ @1579  + P#KiHa1.20
++ @1580 + P#KiHa1.5
++ @1581 + P#KiHa1.10
END

IF ~~  P#KiHa1.7
SAY @1583
++ @1584  + P#KiHa1.11
++ @1585  + P#KiHa1.12
++ @1586  + P#KiHa1.13
++ @1587  + P#KiHa1.14
++ @1588  + P#KiHa1.15
++ @1589  + P#KiHa1.16
++ @1590  + P#KiHa1.17
++ @1572  + P#KiHa1.18
++ @1573  + P#KiHa1.19
++ @1574  + P#KiHa1.21
END

IF ~~ P#KiHa1.6
SAY @1591
++ @1579  + P#KiHa1.20
++ @1580 + P#KiHa1.5
++ @1581 + P#KiHa1.10
END

IF ~~ P#KiHa1.5
SAY @1592
++ @1593  + P#KiHa1.11
++ @1585  + P#KiHa1.12
++ @1586  + P#KiHa1.13
++ @1587  + P#KiHa1.14
++ @1594  + P#KiHa1.15
++ @1589  + P#KiHa1.16
++ @1590  + P#KiHa1.17
++ @1572  + P#KiHa1.18
++ @1573  + P#KiHa1.19
END

IF ~~ P#KiHa1.4
SAY @1595
++ @1593  + P#KiHa1.11
++ @1585  + P#KiHa1.12
++ @1586  + P#KiHa1.13
++ @1587  + P#KiHa1.14
++ @1594  + P#KiHa1.15
++ @1589  + P#KiHa1.16
++ @1590  + P#KiHa1.17
++ @1572  + P#KiHa1.18
END

IF ~~ P#KiHa1.3
SAY @1596
++ @1580 + P#KiHa1.5
++ @1597 + P#KiHa1.8
++ @1598 + P#KiHa1.9
++ @1581 + P#KiHa1.10
END

IF ~~ P#KiHa1.2
SAY @1599
++ @1600 + P#KiHa1.5
++ @1601 + P#KiHa1.8
++ @1602 + P#KiHa1.9
++ @1581 + P#KiHa1.10
END

IF ~~ P#KiHa1.1
SAY @1603
++ @1604 + P#KiHa1.5
++ @1605 + P#KiHa1.6
++ @1606 + P#KiHa1.7
END
 
END

CHAIN  P#KIVJ  KIST19.11
@1404
== P#DEHJ IF ~InParty("P#DEHER")~ THEN @1405
== P#KIVJ IF ~!InParty("P#DEHER")~ THEN @1406
== P#KIVJ IF ~InParty("P#KIVAN")~ THEN @1407
EXIT

CHAIN  P#KIVJ KIST19.10
@1408
== P#DEHJ IF ~InParty("P#DEHER")~ THEN @1409
== P#KIVJ IF ~InParty("P#KIVAN")~ THEN @1410
== P#KIVJ IF ~!InParty("P#DEHER")~ THEN @1409
EXIT

//Dealing With Solaufein//

ADD_TRANS_TRIGGER UDSOLA01 126 ~OR(3) !InParty("P#kivan") Dead("P#kivan") StateCheck("P#kivan",STATE_SLEEPING)~


EXTEND_BOTTOM UDSOLA01 126
IF ~InParty("P#kivan") !Dead("P#kivan") !StateCheck("P#kivan",STATE_SLEEPING)~ THEN REPLY @1411 GOTO 127
IF ~InParty("P#kivan") !Dead("P#kivan") !StateCheck("P#kivan",STATE_SLEEPING)~ THEN REPLY @1412 EXTERN P#KIVJ P#KnifeSola
IF ~InParty("P#kivan") !Dead("P#kivan") !StateCheck("P#kivan",STATE_SLEEPING)~ THEN REPLY @1413 GOTO 133
END

CHAIN P#KIVJ P#KnifeSola
 @1414
== UDSOLA01 @1415
== P#KIVJ @1416
== UDSOLA01 @1417
== UDSOLA01 @1435
== P#KIVJ @1418
END 
IF ~~ THEN DO ~ApplyDamage("Solaufein",5,PIERCING)~ EXTERN P#KIVJ P#KnifeSola1

CHAIN P#KIVJ P#KnifeSola1
 @1419
== UDSOLA01 @1420
== P#KIVJ @1421
== P#KIVJ  IF ~InParty("Aerie")~ THEN @1422
== AERIEJ IF ~InParty("Aerie")~ THEN @1423
== UDSOLA01 IF ~InParty("Aerie")~ THEN @1424
== P#KIVJ IF ~InParty("Aerie")~ THEN @1425
== UDSOLA01 IF ~InParty("Aerie")~ THEN @1426
== P#KIVJ IF ~InParty("Aerie")~ THEN @1427
== AERIEJ  IF ~InParty("Aerie")~ THEN @1428
== UDSOLA01 IF ~InParty("Aerie")~ THEN @1429
== P#KIVJ  IF ~!InParty("Aerie")~ THEN @1430
== UDSOLA01 IF ~!InParty("Aerie")~ THEN @1431
== P#KIVJ @1432
END 
IF ~~ THEN DO ~ReallyForceSpellRES("SPIN101","solaufein")~ EXTERN UDSOLA01 128



