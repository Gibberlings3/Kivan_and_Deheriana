//Deheriana//

APPEND P#DE25J

IF WEIGHT #990
~Global("P#DeFRTOBTalk","GLOBAL",2)~ THEN BEGIN DeherianaFriendTalk1
SAY @0 
++ @1 + P#FTDE1.1
++ @2 + P#FTDE1.2
++ @3 + P#FTDE1.3
+ ~Gender(Player1,MALE)~ + @4 + P#FTDE1.4
END

IF ~~ P#FTDE1.9
SAY @5
= @6
IF ~~ THEN EXIT
END

IF ~~ P#FTDE1.8
SAY @7
= @8
IF ~~ THEN EXIT
END

IF ~~ P#FTDE1.7
SAY @9
IF ~~ THEN EXIT
END

IF ~~ P#FTDE1.6
SAY @10
= @11
IF ~~ THEN EXIT
END

IF ~~ P#FTDE1.5
SAY @12
= @11
IF ~~ THEN EXIT
END

IF ~~ P#FTDE1.4
SAY @13
++ @14 + P#FTDE1.3A
++ @15 + P#FTDE1.1
++ @16 + P#FTDE1.1
++ @17 + P#FTDE1.3
END

IF ~~ P#FTDE1.3A
SAY @18
= @11
IF ~~ THEN EXIT
END


IF ~~ P#FTDE1.3
SAY @19
= @11
IF ~~ THEN EXIT
END

IF ~~ P#FTDE1.2
SAY @20
++ @21 + P#FTDE1.6
+ ~Gender(Player1,FEMALE)~ + @22 + P#FTDE1.7
++ @23 + P#FTDE1.8
++ @24 + P#FTDE1.9
END

IF ~~ P#FTDE1.1
SAY @25
++ @26 + P#FTDE1.5
++ @27 + P#FTDE1.6
+ ~Gender(Player1,FEMALE)~ + @22 + P#FTDE1.7
++ @28 + P#FTDE1.8
++ @24 + P#FTDE1.9
END

//Talk 2

IF WEIGHT #990
~Global("P#DeFRTOBTalk","GLOBAL",4)~ THEN BEGIN DeherianaFriendTalk2
SAY @29 
++ @30 + P#FTDE2.1
+ ~Gender(Player1,MALE)~ + @31 + P#FTDE2.2
+ ~Gender(Player1,FEMALE)~ + @32 + P#FTDE2.2
++ @33 + P#FTDE2.3
++ @34 + P#FTDE2.4
END

IF ~~ P#FTDE2.15
SAY @35
IF ~~ THEN GOTO P#FTDE2.11
END

IF ~~ P#FTDE2.14
SAY @36
IF ~~ THEN GOTO P#FTDE2.11
END

IF ~~ P#FTDE2.13
SAY @37
IF ~~ THEN EXIT
END

IF ~~ P#FTDE2.12
SAY @38
IF ~~ THEN GOTO P#FTDE2.11
END

IF ~~ P#FTDE2.11
SAY @39
= @40
IF ~~ THEN EXIT
END

IF ~~ P#FTDE2.10
SAY @41
IF ~~ THEN EXIT
END

IF ~~ P#FTDE2.9
SAY @42
= @43
++ @44 + P#FTDE2.11
++ @45 + P#FTDE2.4A
END

IF ~~ P#FTDE2.8
SAY @46
= @47
++ @44 + P#FTDE2.11
++ @48 + P#FTDE2.4A
++ @45 + P#FTDE2.4A
END


IF ~~ P#FTDE2.7
SAY @49
IF ~~ THEN EXIT
END

IF ~~ P#FTDE2.6
SAY @50
++ @51 + P#FTDE2.7
++ @52 + P#FTDE2.4
++ @53 + P#FTDE2.3
END

IF ~~ P#FTDE2.5
SAY @54
++ @55 + P#FTDE2.13
++ @56 + P#FTDE2.14
++ @57 + P#FTDE2.15
END

IF ~~ P#FTDE2.4A
SAY @58
++ @44 + P#FTDE2.11
++ @59 + P#FTDE2.12
++ @60 + P#FTDE2.11
END

IF ~~ P#FTDE2.4
SAY @61
++ @44 + P#FTDE2.11
++ @59 + P#FTDE2.12
++ @62 + P#FTDE2.11
END

IF ~~ P#FTDE2.3
SAY @63
++ @44 + P#FTDE2.11
++ @48 + P#FTDE2.4A
++ @45 + P#FTDE2.4A
END

IF ~~ P#FTDE2.2
SAY @64
++ @65 + P#FTDE2.8
++ @66 + P#FTDE2.9
++ @67 + P#FTDE2.10
END

IF ~~ P#FTDE2.1
SAY @68
++ @69 + P#FTDE2.7
++ @70 + P#FTDE2.5
++ @71 + P#FTDE2.6
END

//Talk 3

IF WEIGHT #990
~Global("P#DeFRTOBTalk","GLOBAL",6)~ THEN BEGIN DeherianaFriendTalk3
SAY @72 
++ @73 + P#FTDE3.1
++ @74 + P#FTDE3.2
++ @75 + P#FTDE3.3
END

IF ~~ P#FTDE3.11
SAY @76
IF ~~ THEN EXIT
END

IF ~~ P#FTDE3.10
SAY @77
++ @78 + P#FTDE3.9
++ @79 + P#FTDE3.11
++ @80+ P#FTDE3.7
END

IF ~~ P#FTDE3.9
SAY @81
IF ~~ THEN EXIT
END

IF ~~ P#FTDE3.8
SAY @82
++ @78 + P#FTDE3.9
++ @79 + P#FTDE3.11
++ @80+ P#FTDE3.7
END

IF ~~ P#FTDE3.7
SAY @83
= @84
IF ~~ THEN EXIT
END

IF ~~ P#FTDE3.6
SAY @85
= @86
++ @87 + P#FTDE3.8
++ @78 + P#FTDE3.9
++ @88 + P#FTDE3.10
++ @80+ P#FTDE3.7
END

IF ~~ P#FTDE3.5
SAY @89
= @90
++ @87 + P#FTDE3.8
++ @78 + P#FTDE3.9
++ @88 + P#FTDE3.10
++ @80+ P#FTDE3.7
END

IF ~~ P#FTDE3.4
SAY @91
IF ~~ THEN EXIT
END

IF ~~ P#FTDE3.3
SAY @92
++ @87 + P#FTDE3.8
++ @78 + P#FTDE3.9
++ @88 + P#FTDE3.10
++ @80+ P#FTDE3.7
END

IF ~~ P#FTDE3.2
SAY @93
++ @94 + P#FTDE3.5
++ @95 + P#FTDE3.6
++ @96 + P#FTDE3.5
++ @97 + P#FTDE3.7
END

IF ~~ P#FTDE3.1
SAY @98
= @99
 ++ @100 + P#FTDE3.4
++ @101 + P#FTDE3.2
++ @75 + P#FTDE3.3
END

//Talk 4

IF WEIGHT #990
~Global("P#DeFRTOBTalk","GLOBAL",8)~ THEN BEGIN DeherianaFriendTalk4
SAY @102  
++ @103 + P#FTDE4.1
++ @104 + P#FTDE4.2
++ @105 + P#FTDE4.3
++ @106 + P#FTDE4.4
++ @107 + P#FTDE4.5
END

IF ~~ P#FTDE4.14
SAY @108
IF ~~ THEN EXIT
END

IF ~~ P#FTDE4.13
SAY @109
IF ~~ THEN EXIT
END

IF ~~ P#FTDE4.12
SAY @110
= @111
++ @112 + P#FTDE4.8
++ @113 + P#FTDE4.9
++ @114 + P#FTDE4.10
++ @115 + P#FTDE4.14
END

IF ~~ P#FTDE4.11
SAY @116
= @117
= @118
++ @112 + P#FTDE4.8
++ @113 + P#FTDE4.9
++ @114 + P#FTDE4.10
++ @115 + P#FTDE4.14
END

IF ~~ P#FTDE4.10
SAY @119
IF ~~ THEN EXIT
END

IF ~~ P#FTDE4.9
SAY @120
++ @121 + P#FTDE4.13
++ @115 + P#FTDE4.14
++ @114 + P#FTDE4.10
END

IF ~~ P#FTDE4.8
SAY @122
= @123
++ @124 + P#FTDE4.13
++ @113 + P#FTDE4.9
++ @114 + P#FTDE4.10
END

IF ~~ P#FTDE4.7
SAY @125
++ @126 + P#FTDE4.11
++ @127 + P#FTDE4.12
++ @128 + P#FTDE4.4
++ @105 + P#FTDE4.3
END

IF ~~ P#FTDE4.6
SAY @129
= @130
++ @112 + P#FTDE4.8
++ @113 + P#FTDE4.9
++ @114 + P#FTDE4.10
++ @115 + P#FTDE4.14
END

IF ~~ P#FTDE4.5
SAY @131
IF ~~ THEN EXIT
END

IF ~~ P#FTDE4.4
SAY @132
IF ~~ THEN GOTO P#FTDE4.2
END

IF ~~ P#FTDE4.3
SAY @133
= @134
= @111
++ @112 + P#FTDE4.8
++ @113 + P#FTDE4.9
++ @114 + P#FTDE4.10
++ @115 + P#FTDE4.14
END

IF ~~ P#FTDE4.2
SAY @135
= @111
++ @112 + P#FTDE4.8
++ @113 + P#FTDE4.9
++ @114 + P#FTDE4.10
++ @115 + P#FTDE4.14
END

IF ~~ P#FTDE4.1
SAY @136
++ @137 + P#FTDE4.6
++ @138 + P#FTDE4.7
++ @105 + P#FTDE4.3
++ @106 + P#FTDE4.4
END

//Talk 5

IF WEIGHT #990
~Global("P#DeFRTOBTalk","GLOBAL",10)~ THEN BEGIN DeherianaFriendTalk5
SAY @139  
+ ~!Race(Player1,ELF)~ + @140 + P#FTDE5.1
++ @141 + P#FTDE5.2
++ @142 + P#FTDE5.3
++ @143 + P#FTDE5.4
END

IF ~~ P#FTDE5.16
SAY @144
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.15
SAY @145
= @146
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.14
SAY @147
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.13
SAY @148
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.12
SAY @149
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.11
SAY @150
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.10
SAY @151
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.9
SAY @152
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.8
SAY @153
IF ~~ THEN GOTO P#FTDE5.4
END

IF ~~ P#FTDE5.7
SAY @154
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.6
SAY @155
IF ~~ THEN EXIT
END

IF ~~ P#FTDE5.5
SAY @156
++ @157 + P#FTDE5.14
++ @158 + P#FTDE5.15
++ @159 + P#FTDE5.4
++ @160 + P#FTDE5.16
END

IF ~~ P#FTDE5.4
SAY @161
++ @162 + P#FTDE5.11
++ @163 + P#FTDE5.12
++ @164 + P#FTDE5.13
END

IF ~~ P#FTDE5.3
SAY @165
++ @166  + P#FTDE5.8
++ @167 + P#FTDE5.4
++ @168 + P#FTDE5.9
++ @169 + P#FTDE5.10
END

IF ~~ P#FTDE5.2
SAY @170
++ @171 + P#FTDE5.6
++ @172 + P#FTDE5.7
++ @173 + P#FTDE5.4
END

IF ~~ P#FTDE5.1
SAY @174
+ ~Class(Player1,BARD_ALL)~ + @175 + P#FTDE5.5
++ @176 + P#FTDE5.2
++ @177 + P#FTDE5.3
++ @143 + P#FTDE5.4
END

END
