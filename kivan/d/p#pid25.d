APPEND P#KI25J

IF WEIGHT #1000 
~IsGabber(Player1) Global("P#DisableKivanFlirts","GLOBAL",0) OR(2)Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",0)~ P#KiFlirtToB
SAY @0

+ ~RandomNum(4,1) InParty("P#DEHER")~ + @1 + KiFlirt1
+ ~RandomNum(4,2) InParty("P#DEHER")~ + @1 + KiFlirt2
+ ~RandomNum(4,3) InParty("P#DEHER")~ + @1 + KiFlirt3
+ ~RandomNum(4,4) InParty("P#DEHER")~ + @1 + KiFlirt4

+ ~RandomNum(4,1) !InParty("P#DEHER")~ + @1 + KiFlirt5
+ ~RandomNum(4,2) !InParty("P#DEHER")~ + @1 + KiFlirt2
+ ~RandomNum(4,3) !InParty("P#DEHER")~ + @1 + KiFlirt3
+ ~RandomNum(4,4) !InParty("P#DEHER")~ + @1 + KiFlirt4

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalLT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(2,1)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalLT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(2,2)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow2

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !HPPercentGT(Player1,50)~ + @2 + X#KiHow3

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") Global("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow4

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow7
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow8
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow9
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow10

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,1)~ + @3 + X#KiMaleEl1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,2)~ + @3 + X#KiMaleEl2
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,3)~ + @3 + X#KiMaleEl3
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,4)~ + @3 + X#KiMaleEl4
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,5)~ + @3 + X#KiMaleEl5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,6)~ + @3 + X#KiMaleEl6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,7)~ + @3 + X#KiMaleEl7
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,8)~ + @3 + X#KiMaleEl8

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,1)~ + @3 + X#KiMaleEl1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,2)~ + @3 + X#KiMaleEl2
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,3)~ + @3 + X#KiMaleEl3
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,4)~ + @3 + X#KiMaleEl4
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,5)~ + @3 + X#KiMaleEl5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,6)~ + @3 + X#KiMaleEl6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,7)~ + @3 + X#KiMaleEl7

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,1)~ + @3 + X#KiMaleEl1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,2)~ + @3 + X#KiMaleEl2
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,3)~ + @3 + X#KiMaleEl3
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,4)~ + @3 + X#KiMaleEl4
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,5)~ + @3 + X#KiMaleEl5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,6)~ + @3 + X#KiMaleEl6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,7)~ + @3 + X#KiMaleEl7
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,8)~ + @3 + X#KiMaleEl8
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,9)~ + @3 + X#KiMaleEl9
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,10)~ + @3 + X#KiMaleEl10


+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,1)~ + @3 + X#KiMaleEl1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,2)~ + @3 + X#KiMaleEl2
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,3)~ + @3 + X#KiMaleEl3
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,4)~ + @3 + X#KiMaleEl4
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,5)~ + @3 + X#KiMaleEl5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,6)~ + @3 + X#KiMaleEl6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,7)~ + @3 + X#KiMaleEl7
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,8)~ + @3 + X#KiMaleEl9
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,9)~ + @3 + X#KiMaleEl10

++ @520 + KiVoice
END

IF ~~ KiVoice
SAY @521
IF ~~ THEN DO ~SetName(@522)
    SetPlayerSound(Myself,@523,INITIAL_MEETING)
    SetPlayerSound(Myself,@524,MORALE)
    SetPlayerSound(Myself,@525,HAPPY)
    SetPlayerSound(Myself,@526,UNHAPPY_ANNOYED)
    SetPlayerSound(Myself,@527,UNHAPPY_SERIOUS)
    SetPlayerSound(Myself,@528,UNHAPPY_BREAKING_POINT)
    SetPlayerSound(Myself,@529,LEADER)
    SetPlayerSound(Myself,@530,TIRED)
    SetPlayerSound(Myself,@531,BORED)
    SetPlayerSound(Myself,@532,BATTLE_CRY1)
    SetPlayerSound(Myself,@533,BATTLE_CRY2)
    SetPlayerSound(Myself,@534,BATTLE_CRY3)
    SetPlayerSound(Myself,@535,BATTLE_CRY4)
    SetPlayerSound(Myself,@536,DAMAGE)
    SetPlayerSound(Myself,@537,DYING)
    SetPlayerSound(Myself,@538,HURT)
    SetPlayerSound(Myself,@539,AREA_FOREST)
    SetPlayerSound(Myself,@540,AREA_CITY)
    SetPlayerSound(Myself,@541,AREA_DUNGEON)
    SetPlayerSound(Myself,@542,AREA_DAY)
    SetPlayerSound(Myself,@543,AREA_NIGHT)
    SetPlayerSound(Myself,@544,SELECT_COMMON1)
    SetPlayerSound(Myself,@545,SELECT_COMMON2)
    SetPlayerSound(Myself,@546,SELECT_COMMON3)
    SetPlayerSound(Myself,@547,SELECT_COMMON4)
    SetPlayerSound(Myself,@548,SELECT_COMMON5)
    SetPlayerSound(Myself,@549,SELECT_COMMON6)
    SetPlayerSound(Myself,@550,SELECT_ACTION1)
    SetPlayerSound(Myself,@551,SELECT_ACTION2)
    SetPlayerSound(Myself,@552,SELECT_ACTION3)
    SetPlayerSound(Myself,@553,SELECT_ACTION4)
    SetPlayerSound(Myself,@554,SELECT_ACTION5)
    SetPlayerSound(Myself,@555,SELECT_ACTION6)
    SetPlayerSound(Myself,@556,SELECT_ACTION7)
    SetPlayerSound(Myself,@557,SELECT_RARE1)
    SetPlayerSound(Myself,@558,SELECT_RARE2)
    SetPlayerSound(Myself,@559,CRITICAL_HIT)
    SetPlayerSound(Myself,@560,CRITICAL_MISS)
    SetPlayerSound(Myself,@561,TARGET_IMMUNE)
    SetPlayerSound(Myself,@562,INVENTORY_FULL)
    SetPlayerSound(Myself,@563,PICKED_POCKET)
    SetPlayerSound(Myself,@564,HIDDEN_IN_SHADOWS)
    SetPlayerSound(Myself,@565,SPELL_DISRUPTED)
    SetPlayerSound(Myself,@566,SET_A_TRAP)
    SetPlayerSound(Myself,@567,EXISTANCE5)~ EXIT
    END

IF ~~ X#KiMaleEl1
SAY @4
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl2
SAY @5
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl3
SAY @6
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl4
SAY @7
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl5
SAY @8
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl6
SAY @9
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl7
SAY @10
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl9
SAY @11
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl10
SAY @12
IF ~~ THEN EXIT
END


IF ~~ X#KiHow1
SAY @13
IF ~~ THEN EXIT
END

IF ~~ X#KiHow2
SAY @14
IF ~~ THEN EXIT
END

IF ~~ X#KiHow3
SAY @15
IF ~~ THEN EXIT
END

IF ~~ X#KiHow4
SAY @16
IF ~~ THEN EXIT
END

IF ~~ X#KiHow5
SAY @17
IF ~~ THEN EXIT
END

IF ~~ X#KiHow6
SAY @18
IF ~~ THEN EXIT
END

IF ~~ X#KiHow7
SAY @19
IF ~~ THEN EXIT
END

IF ~~ X#KiHow8
SAY @20
IF ~~ THEN EXIT
END

IF ~~ X#KiHow9
SAY @21
IF ~~ THEN EXIT
END

IF ~~ X#KiHow10
SAY @22
IF ~~ THEN EXIT
END


IF ~~ KiFlirt1
SAY @23
IF ~~ THEN EXIT
END

IF ~~ KiFlirt2
SAY @24
IF ~~ THEN EXIT
END

IF ~~ KiFlirt3
SAY @25
IF ~~ THEN EXIT
END

IF ~~ KiFlirt4
SAY @26
IF ~~ THEN EXIT
END

IF ~~ KiFlirt5
SAY @27
IF ~~ THEN EXIT
END


IF WEIGHT #1000 
~IsGabber(Player1) Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2) GlobalLT("P#KivanOffence","GLOBAL",10) GlobalGT("P#KiLOTOBTalk","GLOBAL",2)~ P#KiFlirt25
SAY @28

+ ~HPPercentLT("P#Kivan",50) RandomNum(6,1)~ + @29 + KiHurt1.1
+ ~HPPercentLT("P#Kivan",50) RandomNum(6,2)~ + @29 + KiHurt1.2
+ ~HPPercentLT("P#Kivan",50) RandomNum(6,3)~ + @29 + KiHurt1.3
+ ~HPPercentLT("P#Kivan",50) RandomNum(6,4)~ + @29 + KiHurt1.4
+ ~HPPercentLT("P#Kivan",50) RandomNum(6,5)~ + @29 + KiHurt1.5
+ ~HPPercentLT("P#Kivan",50) RandomNum(6,6)~ + @29 + KiHurt1.6

+ ~RandomNum(8,1)~ + @30 + P#KiKISM1.1
+ ~RandomNum(8,2)~ + @30 + P#KiKISM1.2
+ ~RandomNum(8,3)~ + @30 + P#KiKISM1.3
+ ~RandomNum(8,4)~ + @30 + P#KiKISM1.4
+ ~RandomNum(8,5)~ + @30 + P#KiKISM1.5
+ ~RandomNum(8,6)~ + @30 + P#KiKISM1.6
+ ~RandomNum(8,7)~ + @30 + P#KiKISM1.7
+ ~RandomNum(8,8)~ + @30 + P#KiKISM1.8

++ @31 + P#KiKIAP0

+ ~RandomNum(8,1)~ + @32 + P#KiKILA1.1
+ ~RandomNum(8,2)~ + @32 + P#KiKILA1.2
+ ~RandomNum(8,3)~ + @32 + P#KiKILA1.3
+ ~RandomNum(8,4)~ + @32 + P#KiKILA1.4
+ ~RandomNum(8,5)~ + @32 + P#KiKILA1.5
+ ~RandomNum(8,6)~ + @32 + P#KiKILA1.6
+ ~RandomNum(8,7)~ + @32 + P#KiKILA1.7
+ ~RandomNum(8,8)~ + @32 + P#KiKILA1.8

+ ~RandomNum(8,1)~ + @33 + P#KiCHES1.1
+ ~RandomNum(8,2)~ + @33 + P#KiCHES1.2
+ ~RandomNum(8,3)~ + @33 + P#KiCHES1.3
+ ~RandomNum(8,4)~ + @33 + P#KiCHES1.4
+ ~RandomNum(8,5)~ + @33 + P#KiCHES1.5
+ ~RandomNum(8,6)~ + @33 + P#KiCHES1.6
+ ~RandomNum(8,7)~ + @33 + P#KiCHES1.7
+ ~RandomNum(8,8)~ + @33 + P#KiCHES1.8

+ ~RandomNum(4,1)~ + @34 + P#KiPALM1.1
+ ~RandomNum(4,2)~ + @34 + P#KiPALM1.2
+ ~RandomNum(4,3)~ + @34 + P#KiPALM1.3
+ ~RandomNum(4,4)~ + @34 + P#KiPALM1.4

+ ~RandomNum(8,1)~ + @35 + P#KiHAWA1.1
+ ~RandomNum(8,2)~ + @35 + P#KiHAWA1.2
+ ~RandomNum(8,3)~ + @35 + P#KiHAWA1.3
+ ~RandomNum(8,4)~ + @35 + P#KiHAWA1.4
+ ~RandomNum(8,5)~ + @35 + P#KiHAWA1.5
+ ~RandomNum(8,6)~ + @35 + P#KiHAWA1.6
+ ~RandomNum(8,7)~ + @35 + P#KiHAWA1.7
+ ~RandomNum(8,8)~ + @35 + P#KiHAWA1.8

++ @36+ P#KiHAIR1

+ ~RandomNum(8,1)~ + @37 + P#KiEYES1.1
+ ~RandomNum(8,2)~ + @37 + P#KiEYES1.2
+ ~RandomNum(8,3)~ + @37 + P#KiEYES1.3
+ ~RandomNum(8,4)~ + @37 + P#KiEYES1.4
+ ~RandomNum(8,5)~ + @37 + P#KiEYES1.5
+ ~RandomNum(8,6)~ + @37 + P#KiEYES1.6
+ ~RandomNum(8,7)~ + @37 + P#KiEYES1.7
+ ~RandomNum(8,8)~ + @37 + P#KiEYES1.8

++ @38 + P#KiTIRE0

++ @39 + P#HUGI0

++ @40 + P#ELVI0

++ @41 + P#EARS0

++ @42 + P#FACE0

+ ~RandomNum(4,1)~+ @43 + P#GOWN1
+ ~RandomNum(4,2)~+ @43 + P#GOWN2
+ ~RandomNum(4,3)~+ @43 + P#GOWN3
+ ~RandomNum(4,4)~+ @43 + P#GOWN4

++ @44 DO ~SetGlobal("P#DisableKivanFlirts","GLOBAL",1)~ EXIT
+ ~!Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",2)~ + @45 + P#Sorry

++ @520 + KiVoice

END

//Sorry and No Flirts//

IF ~~ P#Sorry
SAY @46
IF ~~ THEN DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) IncrementGlobal("P#KivanOffence","GLOBAL",7)~ EXIT
END

//Flit Replies

//tease//

IF ~~ P#GOWN1
SAY @47
++ @48 + P#GOWN1.1
++ @49 + P#GOWN1.2
++ @50 + P#GOWN1.3
END

IF ~~ P#GOWN1.1
SAY @51
IF ~~ THEN EXIT
END

IF ~~ P#GOWN1.2
SAY @52
IF ~~ THEN EXIT
END

IF ~~ P#GOWN1.3
SAY @53
IF ~~ THEN EXIT
END

IF ~~ P#GOWN2
SAY @54
+~!InParty("J#Kelsey")~ + @55 + P#GOWN2.1A
+~InParty("J#Kelsey")~ + @55 + P#GOWN2.1B
++ @56 + P#GOWN2.2
++ @57 + P#GOWN2.3
END

IF ~~ P#GOWN2.1A
SAY @58
IF ~~ THEN EXIT
END

IF ~~ P#GOWN2.1B
SAY @59
IF ~~ THEN EXIT
END

IF ~~ P#GOWN2.2
SAY @60
IF ~~ THEN EXIT
END

IF ~~ P#GOWN2.3
SAY @61
IF ~~ THEN EXIT
END

IF ~~ P#GOWN3
SAY @62
++ @63 + P#GOWN3.1
++ @64 + P#GOWN3.2
++ @65 + P#GOWN3.3
END

IF ~~ P#GOWN3.1
SAY @66
IF ~~ THEN EXIT
END

IF ~~ P#GOWN3.2
SAY @67
IF ~~ THEN EXIT
END

IF ~~ P#GOWN3.3
SAY @68
IF ~~ THEN EXIT
END

IF ~~ P#GOWN4
SAY @69
++ @70 + P#GOWN4.1
++ @71 + P#GOWN4.2
++ @72 + P#GOWN4.2
++ @73 + P#GOWN4.3
END

IF ~~ P#GOWN4.1
SAY @74
IF ~~ THEN EXIT
END 

IF ~~ P#GOWN4.2
SAY @75
IF ~~ THEN EXIT
END 

IF ~~ P#GOWN4.3
SAY @76
= @77
IF ~~ THEN EXIT
END 

//face//

IF ~~ P#FACE0
SAY @78
+ ~RandomNum(4,1)~ + @79 + P#FACE1.1
+ ~RandomNum(4,2)~ + @80 + P#FACE1.2
+ ~RandomNum(4,3)~ + @80 + P#FACE1.3
+ ~RandomNum(4,4)~ + @80 + P#FACE1.4
+ ~RandomNum(4,1)~ + @81 + P#FACE2.1
+ ~RandomNum(4,2)~ + @81 + P#FACE2.2
+ ~RandomNum(4,3)~ + @81 + P#FACE2.3
+ ~RandomNum(4,4)~ + @81 + P#FACE2.4
+ ~RandomNum(4,1)~ + @82 + P#FACE3.1
+ ~RandomNum(4,2)~ + @82 + P#FACE3.2
+ ~RandomNum(4,3)~ + @82 + P#FACE3.3
+ ~RandomNum(4,4)~ + @82 + P#FACE3.4
+ ~TimeOfDay(DAY)~ + @83 + P#FACE4
+ ~TimeOfDay(NIGHT)~ + @84 + P#FACE5
END

IF ~~  P#FACE5
SAY @85
IF ~~ THEN EXIT
END 

IF ~~  P#FACE4
SAY @86
IF ~~ THEN EXIT
END 

IF ~~ P#FACE1.1
SAY @87
IF ~~ THEN EXIT
END

IF ~~ P#FACE1.2
SAY @88
IF ~~ THEN EXIT
END

IF ~~ P#FACE1.3
SAY @89
IF ~~ THEN EXIT
END

IF ~~ P#FACE1.4
SAY @90
IF ~~ THEN EXIT
END

IF ~~ P#FACE2.1
SAY @91
IF ~~ THEN EXIT
END

IF ~~ P#FACE2.2
SAY @92
IF ~~ THEN EXIT
END

IF ~~ P#FACE2.3
SAY @93
IF ~~ THEN EXIT
END

IF ~~ P#FACE2.4
SAY @94
IF ~~ THEN EXIT
END

IF ~~ P#FACE3.1
SAY @95
IF ~~ THEN EXIT
END

IF ~~ P#FACE3.2
SAY @96
IF ~~ THEN EXIT
END

IF ~~ P#FACE3.3
SAY @97
IF ~~ THEN EXIT
END

IF ~~ P#FACE3.4
SAY @98
++ @99 + P#FACE3.4.1
++ @100 + P#FACE3.4.2
++ @101  + P#FACE3.4.3
END

IF ~~ P#FACE3.4.1
SAY@102
= @103
IF ~~ THEN EXIT
END

IF ~~ P#FACE3.4.2
SAY@104
= @105
= @106
IF ~~ THEN EXIT
END

IF ~~ P#FACE3.4.3
SAY @107
IF ~~ THEN EXIT
END

//ear//

IF ~~ P#EARS0
SAY @108
+ ~RandomNum(4,1)~ + @109 + P#EARS1.1
+ ~RandomNum(4,2)~ + @109 + P#EARS1.2
+ ~RandomNum(4,3)~ + @109 + P#EARS1.3
+ ~RandomNum(4,4)~ + @109 + P#EARS1.4
+ ~RandomNum(4,1)~ + @110 + P#EARS2.1
+ ~RandomNum(4,2)~ + @110 + P#EARS2.2
+ ~RandomNum(4,3)~ + @110 + P#EARS2.3
+ ~RandomNum(4,4)~ + @110 + P#EARS2.4
+ ~RandomNum(4,1) !Race(Player1, ELF)~ + @111 + P#EARS3.1
+ ~RandomNum(4,2) !Race(Player1, ELF)~ + @111 + P#EARS3.2
+ ~RandomNum(4,3) !Race(Player1, ELF)~ + @111 + P#EARS3.3
+ ~RandomNum(4,4) !Race(Player1, ELF)~ + @111 + P#EARS3.4
+ ~RandomNum(4,1) Race(Player1, ELF)~ + @112 + P#EARS3.1
+ ~RandomNum(4,2) Race(Player1, ELF)~ + @112 + P#EARS4.2
+ ~RandomNum(4,3) Race(Player1, ELF)~ + @112 + P#EARS4.3
+ ~RandomNum(4,4) Race(Player1, ELF)~ + @112 + P#EARS3.4
++ @113 EXIT
END

IF ~~ P#EARS1.1
SAY @114 
IF ~~ THEN EXIT
END

IF ~~ P#EARS1.2
SAY @115 
IF ~~ THEN EXIT
END

IF ~~ P#EARS1.3
SAY @116 
IF ~~ THEN EXIT
END 

IF ~~ P#EARS1.4
SAY @117
IF ~~ THEN EXIT
END 

IF ~~ P#EARS2.1
SAY @118 
IF ~~ THEN EXIT
END

IF ~~ P#EARS2.2
SAY @119 
IF ~~ THEN EXIT
END 

IF ~~ P#EARS2.3
SAY @120 
IF ~~ THEN EXIT
END 

IF ~~ P#EARS2.4
SAY @121
IF ~~ THEN EXIT
END 

IF ~~ P#EARS3.1
SAY @122 
IF ~~ THEN EXIT
END 

IF ~~ P#EARS3.2
SAY @123 
IF ~~ THEN EXIT
END

IF ~~ P#EARS3.3
SAY @124 
IF ~~ THEN EXIT
END 

IF ~~ P#EARS3.4
SAY @125
IF ~~ THEN EXIT
END 

IF ~~ P#EARS4.2
SAY @126
IF ~~ THEN EXIT
END 

IF ~~ P#EARS4.3
SAY @127 
IF ~~ THEN EXIT
END 

//HUG//

IF ~~ P#HUGI0
SAY @128
+ ~RandomNum(4,1)~ + @129 + P#HUGI1.1
+ ~RandomNum(4,2)~ + @129 + P#HUGI1.2
+ ~RandomNum(4,3)~ + @129 + P#HUGI1.3
+ ~RandomNum(4,4)~ + @129 + P#HUGI1.4
+ ~RandomNum(4,1)~ + @130 + P#HUGI2.1
+ ~RandomNum(4,2)~ + @130 + P#HUGI2.2
+ ~RandomNum(4,3)~ + @130 + P#HUGI2.3
+ ~RandomNum(4,4)~ + @130 + P#HUGI2.4
+ ~RandomNum(4,1)~ + @131 + P#HUGI3.1
+ ~RandomNum(4,2)~ + @131 + P#HUGI3.2
+ ~RandomNum(4,3)~ + @131 + P#HUGI3.3
+ ~RandomNum(4,4)~ + @131 + P#HUGI3.4
+ ~RandomNum(4,1)~ + @132 + P#HUGI4.1
+ ~RandomNum(4,2)~ + @132 + P#HUGI4.2
+ ~RandomNum(4,3)~ + @132 + P#HUGI4.3
+ ~RandomNum(4,4)~ + @132 + P#HUGI4.3
+ ~RandomNum(4,1)~ + @133 + P#HUGI5.1
+ ~RandomNum(4,2)~ + @133 + P#HUGI5.2
+ ~RandomNum(4,3)~ + @133 + P#HUGI5.3
+ ~RandomNum(4,4)~ + @133 + P#HUGI5.4
END

IF ~~ P#HUGI5.4
SAY @134
IF ~~ THEN EXIT
END

IF ~~ P#HUGI5.3
SAY @135
IF ~~ THEN EXIT
END

IF ~~ P#HUGI5.2
SAY @136
IF ~~ THEN EXIT
END

IF ~~ P#HUGI5.1
SAY @137
IF ~~ THEN EXIT
END

IF ~~ P#HUGI4.3
SAY @138
IF ~~ THEN EXIT
END

IF ~~ P#HUGI4.2
SAY @139
IF ~~ THEN EXIT
END

IF ~~ P#HUGI4.1
SAY @140
IF ~~ THEN EXIT
END

IF ~~ P#HUGI3.4
SAY @141
IF ~~ THEN EXIT
END

IF ~~ P#HUGI3.3
SAY @142
IF ~~ THEN EXIT
END

IF ~~ P#HUGI3.2
SAY @143
IF ~~ THEN EXIT
END

IF ~~ P#HUGI3.1
SAY @144
IF ~~ THEN EXIT
END

IF ~~ P#HUGI2.4
SAY @145
IF ~~ THEN EXIT
END

IF ~~ P#HUGI2.3
SAY @146
IF ~~ THEN EXIT
END

IF ~~ P#HUGI2.2
SAY @147
IF ~~ THEN EXIT
END

IF ~~ P#HUGI2.1
SAY @148
= @149
++ @150 + P#HUGI2.1.1
++ @151 + P#HUGI2.1.2
++ @152 + P#HUGI2.1.3
++ @153 + P#HUGI2.1.2
END

IF ~~ P#HUGI2.1.1
SAY @154
IF ~~ THEN EXIT
END

IF ~~ P#HUGI2.1.2
SAY @155
IF ~~ THEN EXIT
END

IF ~~ P#HUGI2.1.3
SAY @156
IF ~~ THEN EXIT
END


IF ~~ P#HUGI1.1
SAY @157
IF ~~ THEN EXIT
END

IF ~~ P#HUGI1.2
SAY @158
IF ~~ THEN EXIT
END

IF ~~ P#HUGI1.3
SAY @159
IF ~~ THEN EXIT
END

IF ~~ P#HUGI1.4
SAY @160
IF ~~ THEN EXIT
END

//Crash course in Elvish//

IF ~~ P#ELVI0
SAY @161
+ ~RandomNum(8,1)~ + @162 + P#ELVI1.1
+ ~RandomNum(8,2)~ + @162 + P#ELVI1.2
+ ~RandomNum(8,3)~ + @162 + P#ELVI1.3
+ ~RandomNum(8,4)~ + @162 + P#ELVI1.4
+ ~RandomNum(8,5)~ + @162 + P#ELVI1.5
+ ~RandomNum(8,6)~ + @162 + P#ELVI1.6
+ ~RandomNum(8,7)~ + @162 + P#ELVI1.7
+ ~RandomNum(8,8)~ + @162 + P#ELVI1.8
++ @163 + P#ELVI2
++ @164 + P#ELVI3
END

IF ~~ P#ELVI3
SAY @165 
IF ~~ THEN EXIT
END

IF ~~ P#ELVI1.1
SAY @166
= @167
IF ~~ THEN EXIT
END

IF ~~ P#ELVI1.2
SAY @168
= @169
IF ~~ THEN EXIT
END

IF ~~ P#ELVI1.3
SAY @170
= @171
= @172
IF ~~ THEN EXIT
END

IF ~~ P#ELVI1.4
SAY @173
= @174
IF ~~ THEN EXIT
END

IF ~~ P#ELVI1.5
SAY @175
= @176
IF ~~ THEN EXIT
END

IF ~~ P#ELVI1.6
SAY @177
IF ~~ THEN EXIT
END

IF ~~ P#ELVI1.7
SAY @178
= @179
IF ~~ THEN EXIT
END

IF ~~ P#ELVI1.8
SAY @180
IF ~~ THEN EXIT
END

IF ~~ P#ELVI2
SAY @181
++ @182 + P#ELVI2.1
+ ~RandomNum(7,1)~ + @183 + P#ELVI3.1
+ ~RandomNum(7,2)~ + @183 + P#ELVI3.2
+ ~RandomNum(7,3)~ + @183 + P#ELVI3.3
+ ~RandomNum(7,4)~ + @183 + P#ELVI3.4
+ ~RandomNum(7,5)~ + @183 + P#ELVI3.5
+ ~RandomNum(7,6)~ + @183 + P#ELVI3.6
+ ~RandomNum(7,7)~ + @183 + P#ELVI3.7
++ @164 + P#ELVI3
END

IF ~~ P#ELVI2.1
SAY @184
++ @185 + P#ELVI2.2
++ @186 + P#ELVI2.3
++ @187 + P#ELVI2.4
++ @188 + P#ELVI2.5
++ @189 + P#ELVI2.6
END

IF ~~ P#ELVI2.5
SAY @190
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ P#ELVI2.4
SAY @191
= @192
IF ~~ THEN EXIT
END

IF ~~ P#ELVI2.3.1
SAY @92
IF ~~ THEN EXIT
END

IF ~~ P#ELVI2.3
SAY @193
++ @194 + P#ELVI2.3.1
++ @195 EXIT
++ @196 + P#ELVI2.1
END

IF ~~ P#ELVI2.2
SAY @197
++ @198 + P#ELVI2.2.1
++ @199 + P#ELVI2.2.2
++ @200 + P#ELVI2.2.3
++ @196 + P#ELVI2.1
END

IF ~~ P#ELVI2.2.1
SAY @201
= @202
IF ~~ THEN EXIT
END

IF ~~ P#ELVI2.2.2
SAY @203
IF ~~ THEN EXIT
END

IF ~~ P#ELVI2.2.3
SAY @204
IF ~~ THEN EXIT
END

IF ~~ P#ELVI3.1
SAY @205
IF ~~ THEN EXIT
END

IF ~~ P#ELVI2.6
SAY @206
= @207
IF ~~ THEN EXIT
END

IF ~~ P#ELVI3.2
SAY @208
IF ~~ THEN EXIT
END

IF ~~ P#ELVI3.3
SAY @209
IF ~~ THEN EXIT
END

IF ~~ P#ELVI3.4
SAY @210
IF ~~ THEN EXIT
END

IF ~~ P#ELVI3.5
SAY @211
IF ~~ THEN EXIT
END

IF ~~ P#ELVI3.6
SAY @212
IF ~~ THEN EXIT
END

IF ~~ P#ELVI3.7
SAY @212
IF ~~ THEN EXIT
END

//Tired//

IF ~~ P#KiTIRE0
SAY @213
+ ~RandomNum(4,1)~ + @214 + P#KiTIRE1.1
+ ~RandomNum(4,2)~ + @214 + P#KiTIRE1.2
+ ~RandomNum(4,3)~ + @214 + P#KiTIRE1.3
+ ~RandomNum(4,4)~ + @214 + P#KiTIRE1.4
+ ~RandomNum(4,1)~ + @215 + P#KiTIRE2.1
+ ~RandomNum(4,2)~ + @215 + P#KiTIRE2.2
+ ~RandomNum(4,3)~ + @215 + P#KiTIRE2.3
+ ~RandomNum(4,4)~ + @215 + P#KiTIRE2.4
+ ~RandomNum(4,1)~ + @216 + P#KiTIRE3.1
+ ~RandomNum(4,2)~ + @216 + P#KiTIRE3.2
+ ~RandomNum(4,3)~ + @216 + P#KiTIRE3.3
+ ~RandomNum(4,4)~ + @216 + P#KiTIRE3.4
+ ~RandomNum(4,1)~ + @217 + P#KiTIRE4.1
+ ~RandomNum(4,2)~ + @217 + P#KiTIRE4.2
+ ~RandomNum(4,3)~ + @217 + P#KiTIRE4.3
+ ~RandomNum(4,4)~ + @217 + P#KiTIRE4.4
+ ~RandomNum(4,1)~ + @218 + P#KiTIRE5.1
+ ~RandomNum(4,2)~ + @218 + P#KiTIRE5.2
+ ~RandomNum(4,3)~ + @218 + P#KiTIRE5.3
+ ~RandomNum(4,4)~ + @218 + P#KiTIRE5.4
END

IF ~~ P#KiTIRE5.4
SAY @219
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE5.3
SAY @220
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE5.2
SAY @221
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE5.1
SAY @222
++ @223 EXIT
++ @224 + P#KiTIRE5.1.1
++ @225 + P#KiTIRE5.1.2
++ @226 + P#KiTIRE5.1.3
END

IF ~~ P#KiTIRE5.1.3
SAY @227
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE5.1.2
SAY @228
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE5.1.1
SAY @229
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE4.4
SAY @230
= @231
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE4.3
SAY @232
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE4.2
SAY @233
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE4.1
SAY @234
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE3.4
SAY @235
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE3.3
SAY @236
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE3.2
SAY @237
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE3.1
SAY @238
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE2.4
SAY @239
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE2.3
SAY @240
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE2.2
SAY @241
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE2.1
SAY @242
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.1
SAY @243
++ @244 + P#KiTIRE1.1.1
++ @245 + P#KiTIRE1.1.2
++ @246 + P#KiTIRE1.1.3
++ @247 + P#KiTIRE1.1.4
END

IF ~~ P#KiTIRE1.1.1
SAY @248
= @249
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.1.2
SAY @250
++ @251 + P#KiTIRE1.1.2.1
++ @252 + P#KiTIRE1.1.2.2
++ @253 + P#KiTIRE1.1.2.3
++ @254 + P#KiTIRE1.1.2.2
END

IF ~~ P#KiTIRE1.1.2.1
SAY @255
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.1.2.2
SAY @256
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.1.2.3
SAY @257
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.1.3
SAY @258
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.1.4
SAY @259
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.2
SAY @260
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.3
SAY @261
IF ~~ THEN EXIT
END

IF ~~ P#KiTIRE1.4
SAY @262
IF ~~ THEN EXIT
END

//Eyes

IF ~~ P#KiEYES1.1
SAY @263
IF ~~ THEN EXIT
END

IF ~~ P#KiEYES1.2
SAY @264
IF ~~ THEN EXIT
END

IF ~~ P#KiEYES1.3
SAY @265
IF ~~ THEN EXIT
END

IF ~~ P#KiEYES1.4
SAY @266
IF ~~ THEN EXIT
END

IF ~~ P#KiEYES1.5
SAY @267
IF ~~ THEN EXIT
END

IF ~~ P#KiEYES1.6
SAY @268
IF ~~ THEN EXIT
END

IF ~~ P#KiEYES1.7
SAY @269
IF ~~ THEN EXIT
END

IF ~~ P#KiEYES1.8
SAY @270
IF ~~ THEN EXIT
END

//His Hair//

IF ~~  P#KiHAIR1.1
SAY @271
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR1.3
SAY @272
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR1.4
SAY @273
IF ~~ THEN EXIT
END

IF ~~ P#KiHAIR1.2
SAY @274
++ @275+P#KiHAIR1.2.1
++ @276+P#KiHAIR1.2.2
++ @277+P#KiHAIR1.2.3
++ @278+P#KiHAIR1.2.4
END

IF ~~  P#KiHAIR1.2.1
SAY @279
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR1.2.2
SAY @280
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR1.2.3
SAY @281
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR1.2.4
SAY @282
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR2.4
SAY @283
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR2.3
SAY @284
= @285
= @286
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR2.2
SAY @287
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR2.1
SAY @288
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR3.4
SAY @289
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR3.3
SAY @290
= @291
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR3.2
SAY @292
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR3.1
SAY @293
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR4.4
SAY @294
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR4.3
SAY @295
= @296
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR4.2
SAY @297
IF ~~ THEN EXIT
END

IF ~~  P#KiHAIR4.1
SAY @298
IF ~~ THEN EXIT
END

IF ~~ P#KiHAIR5.1
SAY @299
IF ~~ THEN EXIT
END

IF ~~ P#KiHAIR5.2
SAY @300
IF ~~ THEN EXIT
END

IF ~~ P#KiHAIR5.3
SAY @301
IF ~~ THEN EXIT
END

IF ~~ P#KiHAIR5.4
SAY @302
IF ~~ THEN EXIT
END

IF ~~ P#KiHAIR6
SAY @303
= @304
IF ~~ THEN EXIT
END


IF ~~ P#KiHAIR1
SAY @305
+ ~RandomNum(4,1)~+ @306 +  P#KiHAIR1.1
+ ~RandomNum(4,2)~+ @306 +  P#KiHAIR1.2
+ ~RandomNum(4,3)~+ @306 +  P#KiHAIR1.3
+ ~RandomNum(4,4)~+ @306 +  P#KiHAIR1.4
+ ~RandomNum(4,1)~+ @307 +  P#KiHAIR2.1
+ ~RandomNum(4,2)~+ @307 +  P#KiHAIR2.2
+ ~RandomNum(4,3)~+ @307 +  P#KiHAIR2.3
+ ~RandomNum(4,4)~+ @307 +  P#KiHAIR2.4
+ ~RandomNum(4,1)~+ @308 +  P#KiHAIR3.1
+ ~RandomNum(4,2)~+ @308 +  P#KiHAIR3.2
+ ~RandomNum(4,3)~+ @308 +  P#KiHAIR3.3
+ ~RandomNum(4,4)~+ @308 +  P#KiHAIR3.4
+ ~RandomNum(4,1)~+ @309 +  P#KiHAIR4.1
+ ~RandomNum(4,2)~+ @309 +  P#KiHAIR4.2
+ ~RandomNum(4,3)~+ @309 +  P#KiHAIR4.3
+ ~RandomNum(4,4)~+ @309 +  P#KiHAIR4.4
+ ~RandomNum(4,1)~+ @310 +  P#KiHAIR5.1
+ ~RandomNum(4,2)~+ @310 +  P#KiHAIR5.2
+ ~RandomNum(4,3)~+ @310 +  P#KiHAIR5.3
+ ~RandomNum(4,4)~+ @310 +  P#KiHAIR5.4
++ @311 +  P#KiHAIR6
END

//Hair Wave//

IF ~~ P#KiHAWA1.1
SAY @312
IF ~~ THEN EXIT
END

IF ~~ P#KiHAWA1.2
SAY @313
IF ~~ THEN EXIT
END

IF ~~ P#KiHAWA1.3
SAY @314
IF ~~ THEN EXIT
END

IF ~~ P#KiHAWA1.4
SAY @315
IF ~~ THEN EXIT
END

IF ~~ P#KiHAWA1.5
SAY @316
IF ~~ THEN EXIT
END

IF ~~ P#KiHAWA1.6
SAY @317
IF ~~ THEN EXIT
END

IF ~~ P#KiHAWA1.7
SAY @318
IF ~~ THEN EXIT
END

IF ~~ P#KiHAWA1.8
SAY @319
IF ~~ THEN EXIT
END

//Palm//

IF ~~ P#KiPALM1.4
SAY @320
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.7.4
SAY @321
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.7.3
SAY @322
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.7.2
SAY @323
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.7.1
SAY @324
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.6.4
SAY @325
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.6.3
SAY @326
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.6.2
SAY @327
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.6.1
SAY @328
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.18
SAY @329
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.17
SAY @330
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.16
SAY @331
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.15
SAY @332
IF ~~ THEN EXIT
END 

IF ~~ P#KiPALM3.5.14
SAY @333
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.13
SAY @334
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.12
SAY @335
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.11
SAY @336
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.10
SAY @337
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.9
SAY @338
= @339
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.8
SAY @340
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.7
SAY @341
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.6
SAY @342
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.5
SAY @343
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.4
SAY @344
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.3
SAY @345
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.2
SAY @346
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5.1
SAY @347
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.5
SAY @348
+~RandomNum(3,1)~+ @349 + P#KiPALM3.5.1
+~RandomNum(3,2)~+ @349 + P#KiPALM3.5.2
+~RandomNum(3,3)~+ @349 + P#KiPALM3.5.3
+~RandomNum(3,1)~+ @350 + P#KiPALM3.5.4
+~RandomNum(3,2)~+ @350 + P#KiPALM3.5.5
+~RandomNum(3,3)~+ @350 + P#KiPALM3.5.6
+~RandomNum(3,1)~+ @351 + P#KiPALM3.5.7
+~RandomNum(3,2)~+ @351 + P#KiPALM3.5.8
+~RandomNum(3,3)~+ @351 + P#KiPALM3.5.9
+~RandomNum(3,1)~+ @352 + P#KiPALM3.5.10
+~RandomNum(3,2)~+ @352 + P#KiPALM3.5.11
+~RandomNum(3,3)~+ @352 + P#KiPALM3.5.12
+~RandomNum(3,1)~+ @353 + P#KiPALM3.5.13
+~RandomNum(3,2)~+ @353 + P#KiPALM3.5.14
+~RandomNum(3,3)~+ @353 + P#KiPALM3.5.15
+~RandomNum(3,1)~+ @354 + P#KiPALM3.5.16
+~RandomNum(3,2)~+ @354 + P#KiPALM3.5.17
+~RandomNum(3,3)~+ @354 + P#KiPALM3.5.18
END

IF ~~ P#KiPALM3.4
SAY @355
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.3
SAY @356
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.2
SAY @357
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM3.1
SAY @358
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM2.4
SAY @359
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM2.3
SAY @360
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM2.2
SAY @361
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM2.1
SAY @362
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM1.3.3
SAY @363
+ ~RandomNum(4,1)~+ @364 + P#KiPALM2.1
+ ~RandomNum(4,2)~+ @364 + P#KiPALM2.2
+ ~RandomNum(4,3)~+ @364 + P#KiPALM2.3
+ ~RandomNum(4,4)~+ @364 + P#KiPALM2.4
+ ~RandomNum(4,1)~+ @365 + P#KiPALM3.1
+ ~RandomNum(4,2)~+ @365 + P#KiPALM3.2
+ ~RandomNum(4,3)~+ @365 + P#KiPALM3.3
+ ~RandomNum(4,4)~+ @365 + P#KiPALM3.4
++ @366 + P#KiPALM3.5
+ ~RandomNum(4,1)~ + @367 + P#KiPALM3.6.1
+ ~RandomNum(4,2)~ + @367 + P#KiPALM3.6.2
+ ~RandomNum(4,3)~ + @367 + P#KiPALM3.6.3
+ ~RandomNum(4,4)~ + @367 + P#KiPALM3.6.4
+ ~ RandomNum(4,1)~ + @368 + P#KiPALM3.7.1
+ ~ RandomNum(4,2)~ + @368 + P#KiPALM3.7.2
+ ~ RandomNum(4,3)~ + @368 + P#KiPALM3.7.3
+ ~ RandomNum(4,4)~ + @368 + P#KiPALM3.7.4
END

IF ~~ P#KiPALM1.3
SAY @369
++ @370 + P#KiPALM1.3.1 
++ @371 + P#KiPALM1.3.2
++ @372 + P#KiPALM1.3.3
END

IF ~~ P#KiPALM1.3.2
SAY @373
++ @372 + P#KiPALM1.3.3
++ @374+ P#KiPALM1.3.2A
++ @375 + P#KiPALM1.3.1
END

IF ~~ P#KiPALM1.3.2A
SAY @376
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM1.3.1
SAY @377
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM1.2
SAY @378
IF ~~ THEN EXIT
END

IF ~~ P#KiPALM1.1
SAY @379
IF ~~ THEN EXIT
END

//Solace//

IF ~~ P#KiCHES1.8
SAY @380
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.7
SAY @381
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.6
SAY @382
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.5
SAY @383
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.4
SAY @384
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.3
SAY @385
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.1
SAY @386
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.2
SAY @387
++ @388 + P#KiCHES1.2.1
++ @389 + P#KiCHES1.2.2
++ @390 + P#KiCHES1.2.3
END

IF ~~ P#KiCHES1.2.3
SAY @391
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.2.2
SAY @392
IF ~~ THEN EXIT
END

IF ~~ P#KiCHES1.2.1
SAY @393
IF ~~ THEN EXIT
END

//Big Kiss//

IF ~~ P#KiKILA1.1
SAY @394
IF ~~ THEN EXIT
END

IF ~~ P#KiKILA1.2
SAY @395
IF ~~ THEN EXIT
END

IF ~~ P#KiKILA1.3
SAY @396
IF ~~ THEN EXIT
END

IF ~~ P#KiKILA1.4
SAY @397
IF ~~ THEN EXIT
END

IF ~~ P#KiKILA1.5
SAY @398
IF ~~ THEN EXIT
END

IF ~~ P#KiKILA1.6
SAY @399
IF ~~ THEN EXIT
END

IF ~~ P#KiKILA1.7
SAY @400
IF ~~ THEN EXIT
END

IF ~~ P#KiKILA1.8
SAY @401
IF ~~ THEN EXIT
END

//Apple//

IF ~~ P#KiKIAP0
SAY @402
++ @403 EXIT
++ @404 EXIT
+~RandomNum(6,1)~ + @405 + P#KiKIAP1
+~RandomNum(6,2)~ + @405 + P#KiKIAP2
+~RandomNum(6,3)~ + @405 + P#KiKIAP3
+~RandomNum(6,4)~ + @405 + P#KiKIAP4
+~RandomNum(6,5)~ + @405 + P#KiKIAP5
+~RandomNum(6,6)~ + @405 + P#KiKIAP6
END

IF ~~ P#KiKIAP1
SAY @406
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP2
SAY @407
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP3
SAY @408
++ @409 + P#KiKIAP3.1
++ @410 + P#KiKIAP3.2
++ @411 + P#KiKIAP3.3
END

IF ~~ P#KiKIAP3.3
SAY @412
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP3.2
SAY @413
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP3.1
SAY @414
++ @415 +  P#KiKIAP3.1.1
++ @416 +  P#KiKIAP3.1.2
++ @417 + P#KiKIAP4.2.3
END

IF ~~ P#KiKIAP3.1.1
SAY @92
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP3.1.2
SAY @418
IF ~~ THEN EXIT
END
 
IF ~~ P#KiKIAP4
SAY @419
++ @420 + P#KiKIAP4.1
++ @421 + P#KiKIAP4.2
++ @422 + P#KiKIAP4.3
END

IF ~~  P#KiKIAP4.1
SAY @423
IF ~~ THEN EXIT
END

IF ~~  P#KiKIAP4.2
SAY @424
= @425
++ @426 + P#KiKIAP4.2.1
++ @427 + P#KiKIAP4.2.2
++ @417 + P#KiKIAP4.2.3
END

IF ~~ P#KiKIAP4.2.1
SAY @428
= @429
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP4.2.2
SAY @430
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP4.2.3
SAY @431
IF ~~ THEN EXIT
END

IF ~~  P#KiKIAP4.3
SAY @432
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP5
SAY @433
IF ~~ THEN EXIT
END

IF ~~ P#KiKIAP6
SAY @434
IF ~~ THEN EXIT
END

//Small Kiss//

IF ~~ P#KiKISM1.1
SAY @435
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.2
SAY @436
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.3
SAY @437
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.4
SAY @438
= @439
++ @440 + P#KiKISM1.4.1 
++ @441 + P#KiKISM1.4.2
++ @442 + P#KiKISM1.4.3
++ @443 + P#KiKISM1.4.4
END

IF ~~ P#KiKISM1.4.1
SAY @444
IF ~~ THEN GOTO P#KiKISM1.4.0
END

IF ~~ P#KiKISM1.4.2
SAY @445
= @446
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.4.3
SAY @447
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.4.4
SAY @448
IF ~~ THEN GOTO P#KiKISM1.4.0
END

IF ~~ P#KiKISM1.4.0
SAY @449
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.5
SAY @450
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.6
SAY @451
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.7
SAY @452
IF ~~ THEN EXIT
END

IF ~~ P#KiKISM1.8
SAY @453
IF ~~ THEN EXIT
END

//Hurt//

IF ~~ KiHurt1.1
SAY @454
IF ~~ THEN EXIT
END

IF ~~ KiHurt1.2
SAY @455
IF ~~ THEN EXIT
END

IF ~~ KiHurt1.3
SAY @456
IF ~~ THEN EXIT
END

IF ~~ KiHurt1.5
SAY @457   
IF ~~ THEN EXIT
END

IF ~~ KiHurt1.6
SAY @458
IF ~~ THEN EXIT
END

IF ~~ KiHurt1.4
SAY @459
++ @460 + KiHurt1.4.1
++ @461  + KiHurt1.4.2
++ @462   + KiHurt1.4.3
END

IF ~~  KiHurt1.4.3
SAY @463
IF ~~ THEN EXIT
END

IF ~~  KiHurt1.4.2
SAY @464
IF ~~ THEN EXIT
END

IF ~~  KiHurt1.4.1
SAY @465
IF ~~ THEN EXIT
END

END

CHAIN P#KI25J X#KiMaleEl8
@466
== BVICONI @467
EXIT
