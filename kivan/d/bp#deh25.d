//Deheriana Banter ToB - repeat of SoA

BEGIN ~BP#DEH25~

//Sarevok//

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("SAREVOK")
See("SAREVOK")
!StateCheck("SAREVOK",STATE_SLEEPING)
!Alignment("sarevok",MASK_GOOD)
Global("P#DESA1","LOCALS",0)~ THEN BP#DEH25 DESA1
@0
DO ~SetGlobal("P#DESA1","LOCALS",1)~
== BSAREV25 @1
== BP#DEH25 @2
== BSAREV25 @3
== BP#DEH25 @4
== BSAREV25 @5
= @6
EXIT

CHAIN
IF WEIGHT #1002 ~CombatCounter(0) !See([ENEMY])
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
!Alignment("sarevok",MASK_GOOD)
Global("P#DESA2","LOCALS",0)~ THEN BSAREV25 DESA2
@7
DO ~SetGlobal("P#DESA2","LOCALS",1)~
== BP#DEH25 @8
== BSAREV25 @9
== BP#DEH25 @10
== BSAREV25 @11
== BP#DEH25 @12
== BSAREV25 @13
== BP#DEH25 @14
== BSAREV25 @15
== BP#DEH25 @16
EXIT

//Aerie//

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("AERIE")
See("AERIE")
!StateCheck("AERIE",STATE_SLEEPING)
Global("P#DEAEP1","LOCALS",0)~ THEN BP#DEH25 DEPAE1
@17
DO ~SetGlobal("P#DEAEP1","LOCALS",1)~
== BAERIE25 @18
== BP#DEH25 @19
== BAERIE25 @20
== BP#DEH25 @21
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
Global("P#DEANP1","LOCALS",0)~ THEN BANOME25 DEANP1
@22
DO ~SetGlobal("P#DEANP1","LOCALS",1)~
== BP#DEH25 @23
== BANOME25 @24
== BP#DEH25 @25
= @26
== BANOME25 @27
== BP#DEH25 @28
== BANOME25 @29
== BP#DEH25 @30
== BANOME25 @31
== BP#DEH25 @32
== BANOME25 @33
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("CERND")
See("CERND")
!StateCheck("CERND",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DECEP1","LOCALS",0)~ THEN BP#DEH25 DEPCE1
@34
DO ~SetGlobal("P#DECEP1","LOCALS",1)~
== BCERND25 @35
== BP#DEH25 @36
== BCERND25 @37
== BP#DEH25 @38
= @39
= @40
= @41
= @42
= @43
= @44
= @45
= @46
= @47
== BCERND25 @48
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
Global("P#DEPED1","LOCALS",0)~ THEN BEDWIN25 DEPED1
@49
DO ~SetGlobal("P#DEPED1","LOCALS",1)~
== BP#DEH25 @50
== BEDWIN25 @51
== BP#DEH25 @52
== BEDWIN25 @53
== BP#DEH25 @54
== BEDWIN25 @55
== BP#DEH25 @56
== BEDWIN25 @57
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0)
InParty("P#KIVAN")
See("P#KIVAN")
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
!StateCheck("P#KIVAN",STATE_SLEEPING)
InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEIMP1","LOCALS",0)~ THEN BP#DEH25 DEPIM1
@58
DO ~SetGlobal("P#DEIMP1","LOCALS",1)~
== BIMOEN25 @59
== BP#DEH25 @60
== BIMOEN25 @61
== BP#DEH25 @62
== BIMOEN25 @63
== BP#DEH25 @64
== BIMOEN25 @65
== BP#DEH25 @66
== BIMOEN25 @67
= @68
== BP#DEH25 @69
== BIMOEN25 @70
= @71
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEJAP1","LOCALS",0)~ THEN BP#DEH25 DEPJA1
@72
DO ~SetGlobal("P#DEJAP1","LOCALS",1)~
== BJAHEI25 @73
== BP#DEH25 @74
== BJAHEI25 @75
== BP#DEH25 @76
== BJAHEI25 @77
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEPJAN1","LOCALS",0)~ THEN BJAN25 DEPJAN1
@78
DO ~SetGlobal("P#DEPJAN1","LOCALS",1)~
== BP#DEH25 @79
== BJAN25 @80
== BP#DEH25 @81
== BJAN25 @82
== BP#DEH25 @83
== BJAN25 @84
== BP#DEH25 @85
== BJAN25 @86
== BP#DEH25 @87
== BJAN25 @88
== BP#DEH25 @89
== BJAN25 @90
= @91
== BP#DEH25 @92
== BJAN25 @93
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) !See([ENEMY])
InParty("P#DEHER")
See("P#DEHER")
!StateCheck("P#DEHER",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEPHA1","LOCALS",0)~ THEN BHAERD25 DEPHA1
@94
= @95
DO ~SetGlobal("P#DEPHA1","LOCALS",1)~
== BP#DEH25 @96
== BHAERD25 @97
== BP#DEH25 @98
== BHAERD25 @99
== BP#DEH25 @100
== BHAERD25 @101
== BP#DEH25 @102
== BHAERD25 @103
== BP#DEH25 @104
== BHAERD25 @105
== BP#DEH25 @106
== BHAERD25 @107
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("KELDORN")
See("KELDORN")
!StateCheck("KELDORN",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEKEP1","LOCALS",0)~ THEN BP#DEH25 DEPKE1
@108
DO ~SetGlobal("P#DEKEP1","LOCALS",1)~
== BKELDO25 @109
== BP#DEH25 @110
== BKELDO25 @111
== BP#DEH25 @112
== BKELDO25 @113
== BP#DEH25 @114
== BKELDO25 @115
== BP#DEH25 @116
== BKELDO25 @117
= @118
== BP#DEH25 @119
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("MAZZY")
See("MAZZY")
!StateCheck("MAZZY",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEMAP1","LOCALS",0)~ THEN BP#DEH25 DEPMA1
@120
DO ~SetGlobal("P#DEMAP1","LOCALS",1)~
== BMAZZY25 @121
== BP#DEH25 @122
== BMAZZY25 @123
== BP#DEH25 @124
== BMAZZY25 @125
== BP#DEH25 @126
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
Global("P#DEMIP1","LOCALS",0)~   THEN BP#DEH25 DEPMI1
@127
DO ~SetGlobal("P#DEMIP1","LOCALS",1)~
== BMINSC25 @128
== BP#DEH25 @129
== BMINSC25 @130
== BP#DEH25 @131
== BMINSC25 @132
== BP#DEH25 @133
= @134
== BP#KIV25 @135
== BMINSC25 @136
= @137
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("NALIA")
See("NALIA")
!StateCheck("NALIA",STATE_SLEEPING)
Global("NaliaKeepPlot","GLOBAL",1)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DENAP1","LOCALS",0)~  THEN BP#DEH25 DEPNA1
@138
DO ~SetGlobal("P#DENAP1","LOCALS",1)~
== BNALIA25 @139
== BP#DEH25 @140
== BNALIA25 @141
== BP#DEH25 @142
== BNALIA25 @143
== BP#DEH25 @144
== BNALIA25 @145
== BP#DEH25 @146
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
Global("P#DEVAP1","LOCALS",0)~ THEN BP#DEH25 DEPVA1
@147
= @148
DO ~SetGlobal("P#DEVAP1","LOCALS",1)~
== BVALYG25 @149
== BP#DEH25 @150
== BVALYG25 @151
== BP#DEH25 @152
== BVALYG25 @153
== BP#DEH25 @154
== BVALYG25 @155
== BP#DEH25 @156
== BVALYG25 @157
== BP#DEH25 @158
== BVALYG25 @159
== BP#DEH25 @160
EXIT

CHAIN
IF WEIGHT #1001 ~CombatCounter(0) 
InParty("VICONIA")
See("VICONIA")
!StateCheck("VICONIA",STATE_SLEEPING)
Global("P#DeherianaLives","GLOBAL",6)
Global("P#DEVIP1","LOCALS",0)~ THEN BP#DEH25 DEPVI1
@161
DO ~SetGlobal("P#DEVIP1","LOCALS",1)~
== BVICON25 @162
== BP#DEH25 @163
== BVICON25 @164
= @165
== BP#DEH25 @166
== BVICON25 @167
== BP#DEH25 @168
== BVICON25 @169
= @170
EXIT

