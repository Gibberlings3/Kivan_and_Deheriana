APPEND P#DE25J

IF WEIGHT #1000 
~IsGabber(Player1)~ P#DePIDToB
SAY @93

+ ~RandomNum(8,1)~ + @94 + DePID1.1
+ ~RandomNum(8,2)~ + @94 + DePID1.2
+ ~RandomNum(8,3)~ + @94 + DePID1.3
+ ~RandomNum(8,4)~ + @94 + DePID1.4
+ ~RandomNum(8,5)~ + @94 + DePID1.5
+ ~RandomNum(8,6)~ + @94 + DePID1.6
+ ~RandomNum(8,7)~ + @94 + DePID1.7
+ ~RandomNum(8,8)~ + @94 + DePID1.8

+ ~RandomNum(8,1)~ + @95 + DePID2.1
+ ~RandomNum(8,2)~ + @95 + DePID2.2
+ ~RandomNum(8,3)~ + @95 + DePID2.3
+ ~RandomNum(8,4)~ + @95 + DePID2.4
+ ~RandomNum(8,5)~ + @95 + DePID2.5
+ ~RandomNum(8,6)~ + @95 + DePID2.6
+ ~RandomNum(8,7)~ + @95 + DePID2.7
+ ~RandomNum(8,8)~ + @95 + DePID2.8

++ @96 + DePID3

+ ~RandomNum(8,1)~ + @97 + DePID4.1
+ ~RandomNum(8,2)~ + @97 + DePID4.2
+ ~RandomNum(8,3)~ + @97 + DePID4.3
+ ~RandomNum(8,4)~ + @97 + DePID4.4
+ ~RandomNum(8,5)~ + @97 + DePID4.5
+ ~RandomNum(8,6)~ + @97 + DePID4.6
+ ~RandomNum(8,7)~ + @97 + DePID4.7
+ ~RandomNum(8,8)~ + @97 + DePID4.8

+ ~RandomNum(8,1)~ + @98 +  DePID5.1
+ ~RandomNum(8,2)~ + @98 +  DePID5.2
+ ~RandomNum(8,3)~ + @98 +  DePID5.3
+ ~RandomNum(8,4)~ + @98 +  DePID5.4
+ ~RandomNum(8,5)~ + @98 +  DePID5.5
+ ~RandomNum(8,6)~ + @98 +  DePID5.6
+ ~RandomNum(8,7)~ + @98 +  DePID5.7
+ ~RandomNum(8,8)~ + @98 +  DePID5.8

++ @99 +  DePID6

+ ~RandomNum(8,1)~ + @100 + DePID7.1
+ ~RandomNum(8,2)~ + @100 + DePID7.2
+ ~RandomNum(8,3)~ + @100 + DePID7.3
+ ~RandomNum(8,4)~ + @100 + DePID7.4
+ ~RandomNum(8,5)~ + @100 + DePID7.5
+ ~RandomNum(8,6)~ + @100 + DePID7.6
+ ~RandomNum(8,7)~ + @100 + DePID7.7
+ ~RandomNum(8,8)~ + @100 + DePID7.8

++ @101 + DeVoice
 
++ @102 EXIT
END 

//Reset Voice

IF ~~ DeVoice
SAY @103
IF ~~ THEN DO ~SetName(@47)
    SetPlayerSound(Myself,@48,INITIAL_MEETING)
    SetPlayerSound(Myself,@49,MORALE)
    SetPlayerSound(Myself,@50,HAPPY)
    SetPlayerSound(Myself,@51,UNHAPPY_ANNOYED)
    SetPlayerSound(Myself,@52,UNHAPPY_SERIOUS)
    SetPlayerSound(Myself,@53,UNHAPPY_BREAKING_POINT)
    SetPlayerSound(Myself,@54,LEADER)
    SetPlayerSound(Myself,@55,TIRED)
    SetPlayerSound(Myself,@56,BORED)
    SetPlayerSound(Myself,@57,BATTLE_CRY1)
    SetPlayerSound(Myself,@58,BATTLE_CRY2)
    SetPlayerSound(Myself,@59,BATTLE_CRY3)
    SetPlayerSound(Myself,@60,BATTLE_CRY4)
    SetPlayerSound(Myself,@61,DAMAGE)
    SetPlayerSound(Myself,@62,DYING)
    SetPlayerSound(Myself,@63,HURT)
    SetPlayerSound(Myself,@64,AREA_FOREST)
    SetPlayerSound(Myself,@65,AREA_CITY)
    SetPlayerSound(Myself,@66,AREA_DUNGEON)
    SetPlayerSound(Myself,@67,AREA_DAY)
    SetPlayerSound(Myself,@68,AREA_NIGHT)
    SetPlayerSound(Myself,@69,SELECT_COMMON1)
    SetPlayerSound(Myself,@70,SELECT_COMMON2)
    SetPlayerSound(Myself,@71,SELECT_COMMON3)
    SetPlayerSound(Myself,@72,SELECT_COMMON4)
    SetPlayerSound(Myself,@73,SELECT_COMMON5)
    SetPlayerSound(Myself,@74,SELECT_COMMON6)
    SetPlayerSound(Myself,@75,SELECT_ACTION1)
    SetPlayerSound(Myself,@76,SELECT_ACTION2)
    SetPlayerSound(Myself,@77,SELECT_ACTION3)
    SetPlayerSound(Myself,@78,SELECT_ACTION4)
    SetPlayerSound(Myself,@79,SELECT_ACTION5)
    SetPlayerSound(Myself,@80,SELECT_ACTION6)
    SetPlayerSound(Myself,@81,SELECT_ACTION7)
    SetPlayerSound(Myself,@82,SELECT_RARE1)
    SetPlayerSound(Myself,@83,SELECT_RARE2)
    SetPlayerSound(Myself,@84,CRITICAL_HIT)
    SetPlayerSound(Myself,@85,CRITICAL_MISS)
    SetPlayerSound(Myself,@86,TARGET_IMMUNE)
    SetPlayerSound(Myself,@87,INVENTORY_FULL)
    SetPlayerSound(Myself,@88,PICKED_POCKET)
    SetPlayerSound(Myself,@89,HIDDEN_IN_SHADOWS)
    SetPlayerSound(Myself,@90,SPELL_DISRUPTED)
    SetPlayerSound(Myself,@91,SET_A_TRAP)
    SetPlayerSound(Myself,@92,EXISTANCE5)~ EXIT
END

//Time of Joy

IF ~~ DePID7.8
SAY @104
IF ~~ THEN EXIT
END

IF ~~ DePID7.7
SAY @105
IF ~~ THEN EXIT
END

IF ~~ DePID7.6
SAY @106
IF ~~ THEN EXIT
END

IF ~~ DePID7.5.6
SAY @107
IF ~~ THEN GOTO DePID7.5.3
END

IF ~~ DePID7.5.5
SAY @108
IF ~~ THEN GOTO DePID7.5.3
END

IF ~~ DePID7.5.4
SAY @109
IF ~~ THEN GOTO DePID7.5.3
END

IF ~~ DePID7.5.3
SAY @110
IF ~~ THEN EXIT
END

IF ~~ DePID7.5.2
SAY @111
IF ~~ THEN EXIT
END

IF ~~ DePID7.5.1
SAY @112
IF ~~ THEN EXIT
END

IF ~~ DePID7.5
SAY @113
++ @114 +  DePID7.5.1
++ @115 +  DePID7.5.2
+ ~!InParty("Nalia") !InParty("Valygar") !InParty("Aerie")~ + @116 +  DePID7.5.3
+ ~InParty("Valygar") !InParty("Aerie") !InParty("Nalia")~ + @116 +  DePID7.5.4
+ ~InParty("Nalia") !InParty("Aerie")~ + @116 +  DePID7.5.5
+ ~InParty("Aerie")~ + @116 +  DePID7.5.6
END

IF ~~ DePID7.4
SAY @117
IF ~~ THEN EXIT
END

IF ~~ DePID7.3
SAY @118
IF ~~ THEN EXIT
END

IF ~~ DePID7.2
SAY @119
IF ~~ THEN EXIT
END

IF ~~ DePID7.1
SAY @120
IF ~~ THEN EXIT
END

//Love Kivan

IF ~~  DePID6
SAY @121
++ @122 + DePID6.1
++ @123 + DePID6.2
++ @124 EXIT
END

IF ~~ DePID6.8
SAY @125
IF ~~ THEN EXIT
END

IF ~~ DePID6.7
SAY @126
IF ~~ THEN EXIT
END

IF ~~ DePID6.5
SAY @127
++ @128 + DePID6.4
++ @129 + DePID6.4
++ @124 EXIT
END

IF ~~ DePID6.4
SAY @130
= @131
IF ~~ THEN EXIT
END

IF ~~ DePID6.3
SAY @132
++ @133 + DePID6.8 
++ @134 + DePID6.4
+ ~Gender(Player1,MALE)~ + @135 + DePID6.5
+ ~Gender(Player1,FEMALE)~ + @136 + DePID6.5
++ @137 + DePID6.7
END

IF ~~ DePID6.2
SAY @138 
++ @139 + DePID6.3
++ @140 + DePID6.3
++ @141 + DePID6.4
+ ~Gender(Player1,MALE)~ + @135 + DePID6.5
+ ~Gender(Player1,FEMALE)~ + @136 + DePID6.5
++ @137 + DePID6.7
END

IF ~~  DePID6.1
SAY @142 
++ @139 + DePID6.3
++ @140 + DePID6.3
++ @141 + DePID6.4
+ ~Gender(Player1,MALE)~ + @135 + DePID6.5
+ ~Gender(Player1,FEMALE)~ + @136 + DePID6.5
++ @137 + DePID6.7
END


//Regrets 

IF ~~ DePID5.8
SAY @143
IF ~~ THEN EXIT
END

IF ~~ DePID5.7
SAY @144
IF ~~ THEN EXIT
END

IF ~~ DePID5.6
SAY @145
IF ~~ THEN EXIT
END

IF ~~ DePID5.5
SAY @146
= @147
IF ~~ THEN EXIT
END

IF ~~ DePID5.4
SAY @148
IF ~~ THEN EXIT
END

IF ~~ DePID5.3
SAY @149
IF ~~ THEN EXIT
END

IF ~~ DePID5.2
SAY @150
IF ~~ THEN EXIT
END

IF ~~ DePID5.1
SAY @151
IF ~~ THEN EXIT
END


//Hair

IF ~~ DePID4.8
SAY @152
IF ~~ THEN EXIT
END

IF ~~ DePID4.7
SAY @153
IF ~~ THEN EXIT
END

IF ~~ DePID4.6
SAY @154
IF ~~ THEN EXIT
END

IF ~~ DePID4.5
SAY @155
IF ~~ THEN EXIT
END

IF ~~ DePID4.4
SAY @156
IF ~~ THEN EXIT
END

IF ~~ DePID4.3
SAY @157
IF ~~ THEN EXIT
END

IF ~~ DePID4.2
SAY @158
IF ~~ THEN EXIT
END

IF ~~ DePID4.1
SAY @159
IF ~~ THEN EXIT
END

//Death

IF ~~ DePID3
SAY @160
++ @161 + DePID3.1
++ @162 + DePID3.2
++ @163 + DePID3.3
++ @164 + DePID3.4
END


IF ~~ DePID3.5
SAY @165
= @166
IF ~~ THEN EXIT
END

IF ~~ DePID3.4
SAY @167
= @168
++ @169 EXIT
++ @170 + DePID3.5
END

IF ~~ DePID3.3
SAY @171
= @168
++ @169 EXIT
++ @170 + DePID3.5
END

IF ~~ DePID3.2
SAY @172
= @173
++ @169 EXIT
++ @170 + DePID3.5
END

IF ~~ DePID3.1
SAY @174
= @175
++ @169 EXIT
++ @170 + DePID3.5
END

//Arvanaith

IF ~~ DePID2.8
SAY @176
IF ~~ THEN EXIT
END

IF ~~ DePID2.7
SAY @177
IF ~~ THEN EXIT
END

IF ~~ DePID2.6
SAY @178
IF ~~ THEN EXIT
END

IF ~~ DePID2.5
SAY @179
IF ~~ THEN EXIT
END

IF ~~ DePID2.4
SAY @180
IF ~~ THEN EXIT
END

IF ~~ DePID2.3
SAY @181
IF ~~ THEN EXIT
END

IF ~~ DePID2.2
SAY @182
IF ~~ THEN EXIT
END

IF ~~ DePID2.1
SAY @183
IF ~~ THEN EXIT
END

//Smile

IF ~~ DePID1.8
SAY @184
IF ~~ THEN EXIT
END

IF ~~ DePID1.7
SAY @185
IF ~~ THEN EXIT
END

IF ~~ DePID1.6
SAY @186
IF ~~ THEN EXIT
END

IF ~~ DePID1.5
SAY @187
IF ~~ THEN EXIT
END

IF ~~ DePID1.4
SAY @188
IF ~~ THEN EXIT
END

IF ~~ DePID1.3
SAY @189
IF ~~ THEN EXIT
END

IF ~~ DePID1.2
SAY @190
IF ~~ THEN EXIT
END

IF ~~ DePID1.1
SAY @191
IF ~~ THEN EXIT
END

END

