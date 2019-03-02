I_C_T2 P#KIVJ 1264 P#KivAmuanaMazzy
== MAZZYJ IF ~InParty("mazzy") !Dead("mazzy")
!StateCheck("mazzy",STATE_SLEEPING)~ THEN @0
END

I_C_T2 P#KIVJ 1264 P#KivAmuanaAnomen
== ANOMENJ IF ~InParty("anomen") !Dead("anomen")
!StateCheck("anomen",STATE_SLEEPING) Alignment("anomen",LAWFUL_NEUTRAL)
OR(3) !InParty("mazzy") Dead("mazzy")
StateCheck("mazzy",STATE_SLEEPING)
~ THEN @1
END

I_C_T2 P#KIVJ 1264 P#KivAmuanaMinsc
== MINSCJ IF ~
InParty("minsc") !Dead("minsc")
!StateCheck("minsc",STATE_SLEEPING)~ THEN @2
END

//Deheriana Stops Kivan from Taking Tazok's Heart//

INTERJECT P#KIVJ 377 P#DeherianaStopsKivan
== P#DEHJ IF ~InParty("P#DEHER") !Dead("P#DEHER") !StateCheck("P#DEHER",STATE_SLEEPING) ~ THEN @3
DO ~SetGlobal("P#TazokTalk","GLOBAL",2)~
EXIT

////SoA PID///

APPEND P#KIVJ

IF WEIGHT #100100 ~IsGabber(Player1)
CombatCounter(0)~ P#KiFlirt
SAY @4

+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) GlobalLT("P#KivanLove","GLOBAL",4)~ + @568 + P#KivanInitiateRomance

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @5 EXIT

+ ~Global("P#DeherianaDead","GLOBAL",1) !RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @6 + P#KivanRefusesToTalk

+ ~RandomNum(4,1) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @7 + KiFlirt1
+ ~RandomNum(4,2) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @7 + KiFlirt2
+ ~RandomNum(4,3) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @7 + KiFlirt3
+ ~RandomNum(4,4) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @7 + KiFlirt4

+ ~Global("SupportInitiated","GLOBAL",0) InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2)~ + @8 DO ~SetGlobal("SupportInitiated","GLOBAL",1) IncrementGlobal("P#PCSupport","GLOBAL",1)~ EXIT
+ ~Global("SupportInitiated","GLOBAL",0) InParty("P#DEHER") Global("P#DeherianaLives","GLOBAL",2) ~ + @9 DO ~SetGlobal("SupportInitiated","GLOBAL",1) IncrementGlobal("P#PCSupport","GLOBAL",-1)~ EXIT

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalLT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(2,1)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalLT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(2,2)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow2

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !HPPercentGT(Player1,50)~ + @10 + X#KiHow3

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") Global("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow4

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow7
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow8
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow9
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @10 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow10

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,1)~ + @11 + X#KiMaleEl1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,2)~ + @11 + X#KiMaleEl2
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,3)~ + @11 + X#KiMaleEl3
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,4)~ + @11 + X#KiMaleEl4
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,5)~ + @11 + X#KiMaleEl5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,6)~ + @11 + X#KiMaleEl6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,7)~ + @11 + X#KiMaleEl7
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,8)~ + @11 + X#KiMaleEl8

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,1)~ + @11 + X#KiMaleEl1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,2)~ + @11 + X#KiMaleEl2
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,3)~ + @11 + X#KiMaleEl3
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,4)~ + @11 + X#KiMaleEl4
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,5)~ + @11 + X#KiMaleEl5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,6)~ + @11 + X#KiMaleEl6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,7)~ + @11 + X#KiMaleEl7

+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,1)~ + @11 + X#KiMaleEl1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,2)~ + @11 + X#KiMaleEl2
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,3)~ + @11 + X#KiMaleEl3
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,4)~ + @11 + X#KiMaleEl4
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,5)~ + @11 + X#KiMaleEl5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,6)~ + @11 + X#KiMaleEl6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,7)~ + @11 + X#KiMaleEl7
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,8)~ + @11 + X#KiMaleEl8
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,9)~ + @11 + X#KiMaleEl9
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,10)~ + @11 + X#KiMaleEl10


+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,1)~ + @11 + X#KiMaleEl1
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,2)~ + @11 + X#KiMaleEl2
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,3)~ + @11 + X#KiMaleEl3
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,4)~ + @11 + X#KiMaleEl4
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,5)~ + @11 + X#KiMaleEl5
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,6)~ + @11 + X#KiMaleEl6
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,7)~ + @11 + X#KiMaleEl7
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,8)~ + @11 + X#KiMaleEl9
+ ~OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL") !InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,9)~ + @11 + X#KiMaleEl10

+ ~Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)
 RandomNum(8,1)~ + @12 + P#KIWho1
+ ~Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)
 RandomNum(8,2)~ + @12 + P#KIWho2
+ ~Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)
 RandomNum(8,3)~ + @12 + P#KIWho3
+ ~Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)
 RandomNum(8,4)~ + @12 + P#KIWho4
+ ~Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)
 RandomNum(8,5)~ + @12 + P#KIWho5
+ ~Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)
 RandomNum(8,6)~ + @12 + P#KIWho6
+ ~Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)
 RandomNum(8,7)~ + @12 + P#KIWho7
+ ~Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)
 RandomNum(8,8)~ + @12 + P#KIWho8

+ ~RandomNum(8,1) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @13 + P#KIElf1
+ ~RandomNum(8,2) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @13 + P#KIElf2
+ ~RandomNum(8,3) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @13 + P#KIElf3
+ ~RandomNum(8,4) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @13 + P#KIElf4
+ ~RandomNum(8,5) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @13 + P#KIElf5
+ ~RandomNum(8,6) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @13 + P#KIElf6
+ ~RandomNum(8,7) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @13 + P#KIElf7
+ ~RandomNum(8,8) OR(2) !Global("P#DeherianaDead","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")~ + @13 + P#KIElf8

+ ~Global("P#KivanRomanceActive","Global",1) PartyHasItem("P#Dream") Global("P#DreamCatcher","GLOBAL",1)~ + @14 + KiFlirt5

+ ~RandomNum(8,1) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @15 + P#KIHood1
+ ~RandomNum(8,2) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @15 + P#KIHood2
+ ~RandomNum(8,3) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @15 + P#KIHood3
+ ~RandomNum(8,4) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @15 + P#KIHood4
+ ~RandomNum(8,5) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @15 + P#KIHood5
+ ~RandomNum(8,6) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @15 + P#KIHood6
+ ~RandomNum(8,7) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @15 + P#KIHood7
+ ~RandomNum(8,8) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @15 + P#KIHood8

+ ~RandomNum(8,1) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @16 + P#KIWalk1
+ ~RandomNum(8,2) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @16 + P#KIWalk2
+ ~RandomNum(8,3) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @16 + P#KIWalk3
+ ~RandomNum(8,4) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @16 + P#KIWalk4
+ ~RandomNum(8,5) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @16 + P#KIWalk5
+ ~RandomNum(8,6) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @16 + P#KIWalk6
+ ~RandomNum(8,7) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @16 + P#KIWalk7
+ ~RandomNum(8,8) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @16 + P#KIWalk8

+ ~RandomNum(8,1) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @17 + P#KIHand1
+ ~RandomNum(8,2) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @17 + P#KIHand2
+ ~RandomNum(8,3) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @17 + P#KIHand3
+ ~RandomNum(8,4) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @17 + P#KIHand4
+ ~RandomNum(8,5) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @17 + P#KIHand5
+ ~RandomNum(8,6) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @17 + P#KIHand6
+ ~RandomNum(8,7) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @17 + P#KIHand7
+ ~RandomNum(8,8) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @17 + P#KIHand8

+ ~RandomNum(8,1) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @18 + P#KIClap1
+ ~RandomNum(8,2) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @18 + P#KIClap2
+ ~RandomNum(8,3) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @18 + P#KIClap3
+ ~RandomNum(8,4) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @18 + P#KIClap4
+ ~RandomNum(8,5) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @18 + P#KIClap5
+ ~RandomNum(8,6) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @18 + P#KIClap6
+ ~RandomNum(8,7) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @18 + P#KIClap7
+ ~RandomNum(8,8) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @18 + P#KIClap8

+ ~RandomNum(8,1) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @19 + P#KIShoul1
+ ~RandomNum(8,2) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @19 + P#KIShoul2
+ ~RandomNum(8,3) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @19 + P#KIShoul3
+ ~RandomNum(8,4) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @19 + P#KIShoul4
+ ~RandomNum(8,5) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @19 + P#KIShoul5
+ ~RandomNum(8,6) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @19 + P#KIShoul6
+ ~RandomNum(8,7) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @19 + P#KIShoul7
+ ~RandomNum(8,8) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @19 + P#KIShoul8

+ ~RandomNum(8,1) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @20 + P#KIKiss1
+ ~RandomNum(8,2) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @20 + P#KIKiss2
+ ~RandomNum(8,3) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @20 + P#KIKiss3
+ ~RandomNum(8,4) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @20 + P#KIKiss4
+ ~RandomNum(8,5) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @20 + P#KIKiss5
+ ~RandomNum(8,6) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @20 + P#KIKiss6
+ ~RandomNum(8,7) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @20 + P#KIKiss7
+ ~RandomNum(8,8) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @20 + P#KIKiss8

+ ~RandomNum(8,1) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @21 + P#KIHair1
+ ~RandomNum(8,2) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @21 + P#KIHair2
+ ~RandomNum(8,3) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @21 + P#KIHair3
+ ~RandomNum(8,4) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @21 + P#KIHair6
+ ~RandomNum(8,5) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @21 + P#KIHair4
+ ~RandomNum(8,6) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @21 + P#KIHair5
+ ~RandomNum(8,7) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @21 + P#KIHair7
+ ~RandomNum(8,8) Global("P#KivanMatch","GLOBAL",1)  GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("P#DisableKivanFlirts","GLOBAL",0) !Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1) RealGlobalTimerExpired("P#KivanFlirtTimer","GLOBAL")
GlobalLT("P#KivanOffence","GLOBAL",10)~ + @21 + P#KIHair8

+ ~AreaCheck("AR1300")~ + @22 +  NaliaTrolls

+ ~AreaCheck("AR2000")~ + @23 + P#Trademeet1

+ ~!Dead("Tazok") AreaCheck("AR1200")~ + @24 + P#Wspear1
+ ~Dead("Tazok") Dead("firkra02") AreaCheck("AR1200")~ + @24 + P#Wspear2

+ ~AreaCheck("AR1100") !Dead("shadel")~ + @25 + P#Umar
+ ~AreaCheck("AR1100") Dead("shadel")~ + @26 + P#Umar1

+ ~AreaCheck("AR1404") !Dead("shadel")~ + @27 + P#SHT
+ ~OR(2) AreaCheck("AR1400") AreaCheck("AR1404") Dead("shadel")~ + @28 + P#SHT1

+ ~AreaCheck("AR0700") !Global("P#KivanLoversQuest","GLOBAL",3) RandomNum(4,1)~ + @29 + P#Promenade1
+ ~AreaCheck("AR0700") !Global("P#KivanLoversQuest","GLOBAL",3) RandomNum(4,2)~ + @29 + P#Promenade2
+ ~AreaCheck("AR0700") !Global("P#KivanLoversQuest","GLOBAL",3) RandomNum(4,3)~ + @29 + P#Promenade3
+ ~AreaCheck("AR0700") !Global("P#KivanLoversQuest","GLOBAL",3) RandomNum(4,4)~ + @29 + P#Promenade4

+ ~AreaCheck("AR0700") Global("P#KivanLoversQuest","GLOBAL",3)~ + @30 + P#Promenade5

+ ~AreaCheck("AR1900")~ + @31 + P#Grove

+ ~AreaCheck("AR0400")~ + @32 + P#Slums

+ ~AreaCheck("AR0900")~ + @33 + P#Temple

+ ~AreaCheck("AR0800")~ + @34 + P#Grave

+ ~AreaCheck("AR1000")~ + @35 + P#GOVER

+ ~AreaCheck("AR0500")~ + @36 + P#Bridge

+ ~AreaCheck("AR2800")~ + @37 + P#Sul

+ ~AreaCheck("AR2300")~ + @38 + P#Sauh

+ ~AreaCheck("AR2500") See([ENEMY])~ + @39 + P#Temud

+ ~AreaCheck("AR2400")~ + @40 + P#Mindfl

+ ~AreaCheck("AR2402")~ + @41 + P#Kuo

+ ~AreaCheck("AR2101")~ + @42 + P#Behol

+ ~AreaCheck("AR2200") RandomNum(4,1)~ + @43 + P#USTN1
+ ~AreaCheck("AR2200")  RandomNum(4,2)~ + @43 + P#USTN2
+ ~AreaCheck("AR2200")  RandomNum(4,3)~ + @43 + P#USTN3
+ ~AreaCheck("AR2200")  RandomNum(4,4)~ + @43 + P#USTN4

+ ~AreaCheck("AR2200")~ + @44 + P#USTN5

+ ~AreaCheck("AR2100")~ + @45 + P#UD

+ ~AreaCheck("AR2600") Global("CoranJob","GLOBAL",0)~ + @46 + P#CW

+ ~AreaCheck("AR2600") GlobalGT("CoranJob","GLOBAL",0) !Dead("c6coran")~ + @47 + P#CW4

+ ~AreaCheck("AR1600") ~ + @48 + P#Bryn

+ ~AreaCheck("AR1500") ~ + @49 + NotInMood

+ ~Global("BodhiAppear","GLOBAL",1) GlobalLT("WorkingForAran","GLOBAL",1) GlobalLT("WorkingForBodhi","GLOBAL",1) Global("P#TalkedAboutBodhiAran","GLOBAL",0) ~ + @50  DO ~SetGlobal("P#TalkedAboutBodhiAran","GLOBAL",1)~ + P#BodhiAran

+ ~Global("P#KiOldFriend","GLOBAL",0) Global("P#AcknowledgePast","GLOBAL",0)  Gender(Player1,MALE)~ + @51 DO ~SetGlobal("P#KiOldFriend","GLOBAL",1) SetGlobal("P#AcknowledgePast","GLOBAL",1) ~ + P#KiOldFr1
+ ~Global("P#KiOldFriend","GLOBAL",0) Gender(Player1,FEMALE) Global("P#AcknowledgePast","GLOBAL",0) ~ + @51 DO ~SetGlobal("P#KiOldFriend","GLOBAL",1) SetGlobal("P#AcknowledgePast","GLOBAL",1) ~ + P#KiOldFr1
+ ~Global("P#KiOldFriend","GLOBAL",0) Gender(Player1,FEMALE) Global("P#AcknowledgePast","GLOBAL",0) ~ + @52 DO ~SetGlobal("P#AcknowledgePast","GLOBAL",1)  IncrementGlobal("P#KivanLove","GLOBAL",1)~ + P#KiOldFr2

+~Global("P#KivHow","GLOBAL",0)~ + @53 + P#KIHow1

+~Global("P#KivanCoA","GLOBAL",1)~ + @54 + P#KIAunt1

+~OR(2) Global("P#DeherianaDead","GLOBAL",1) Global("P#KivanCondolences","GLOBAL",0) Global("P#DeherianaLives","GLOBAL",3)~ + @55 + P#KIDehe1

+ ~Global("P#Eldreth","GLOBAL",1)~ + @56 + KivEld

+ ~Class(Player1,BARD_ALL) Global("P#KivanMatch","GLOBAL",1)
!Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1)
GlobalLT("P#KivanOffence","GLOBAL",10)
GlobalGT("P#KivanLove","GLOBAL",5)~ + @57 + P#KISong1

+ ~AreaCheck("AR1100") RandomNum(8,1) !GlobalTimerExpired("MairynAppear","GLOBAL") Global("RangerProtector","GLOBAL",1) Global("P#KivanRangerStronghold","GLOBAL",1)~ + @58 + KiRaPro1.1
+ ~AreaCheck("AR1100") RandomNum(8,2) !GlobalTimerExpired("MairynAppear","GLOBAL") Global("RangerProtector","GLOBAL",1) Global("P#KivanRangerStronghold","GLOBAL",1)~ + @58 + KiRaPro1.2
+ ~AreaCheck("AR1100") RandomNum(8,3) !GlobalTimerExpired("MairynAppear","GLOBAL") Global("RangerProtector","GLOBAL",1) Global("P#KivanRangerStronghold","GLOBAL",1)~ + @58 + KiRaPro1.3
+ ~AreaCheck("AR1100") RandomNum(8,4) !GlobalTimerExpired("MairynAppear","GLOBAL") Global("RangerProtector","GLOBAL",1) Global("P#KivanRangerStronghold","GLOBAL",1)~ + @58 + KiRaPro1.4
+ ~AreaCheck("AR1100") RandomNum(8,5) !GlobalTimerExpired("MairynAppear","GLOBAL") Global("RangerProtector","GLOBAL",1) Global("P#KivanRangerStronghold","GLOBAL",1)~ + @58 + KiRaPro1.5
+ ~AreaCheck("AR1100") RandomNum(8,6) !GlobalTimerExpired("MairynAppear","GLOBAL") Global("RangerProtector","GLOBAL",1) Global("P#KivanRangerStronghold","GLOBAL",1)~ + @58 + KiRaPro1.6
+ ~AreaCheck("AR1100") RandomNum(8,7) !GlobalTimerExpired("MairynAppear","GLOBAL") Global("RangerProtector","GLOBAL",1) Global("P#KivanRangerStronghold","GLOBAL",1)~ + @58 + KiRaPro1.7
+ ~AreaCheck("AR1100") RandomNum(8,8) !GlobalTimerExpired("MairynAppear","GLOBAL") Global("RangerProtector","GLOBAL",1) Global("P#KivanRangerStronghold","GLOBAL",1)~ + @58 + KiRaPro1.8

+ ~Global("IgenPlot","GLOBAL",1) !Global("IgenJob","GLOBAL",1)~ + @58 + KiRaPro1.9

+ ~Global("IgenPlot","GLOBAL",1) Global("IgenJob","GLOBAL",1)~ + @58 + KiRaPro1.10

+ ~Global("IgenPlot","GLOBAL",2) Global("RangerProtector","GLOBAL",1)~ + @58 + KiRaPro1.11

+ ~AreaCheck("AR1100") RandomNum(8,1) Global("Mairyn3","GLOBAL",0) Global("RangerProtector","GLOBAL",2) !Global("OgronAttack","GLOBAL",1)~ + @58 + KiRaPro1.1
+ ~AreaCheck("AR1100") RandomNum(8,2) Global("Mairyn3","GLOBAL",0) Global("RangerProtector","GLOBAL",2) !Global("OgronAttack","GLOBAL",1)~ + @58 + KiRaPro1.2
+ ~AreaCheck("AR1100") RandomNum(8,3) Global("Mairyn3","GLOBAL",0) Global("RangerProtector","GLOBAL",2) !Global("OgronAttack","GLOBAL",1)~ + @58 + KiRaPro1.3
+ ~AreaCheck("AR1100") RandomNum(8,4) Global("Mairyn3","GLOBAL",0) Global("RangerProtector","GLOBAL",2) !Global("OgronAttack","GLOBAL",1)~ + @58 + KiRaPro1.4
+ ~AreaCheck("AR1100") RandomNum(8,5) Global("Mairyn3","GLOBAL",0) Global("RangerProtector","GLOBAL",2) !Global("OgronAttack","GLOBAL",1)~ + @58 + KiRaPro1.5
+ ~AreaCheck("AR1100") RandomNum(8,6) Global("Mairyn3","GLOBAL",0) Global("RangerProtector","GLOBAL",2) !Global("OgronAttack","GLOBAL",1)~ + @58 + KiRaPro1.6
+ ~AreaCheck("AR1100") RandomNum(8,7) Global("Mairyn3","GLOBAL",0) Global("RangerProtector","GLOBAL",2) Global("GivenIgenReward","GLOBAL",1) !Global("OgronAttack","GLOBAL",1)~ + @58 + KiRaPro1.7
+ ~AreaCheck("AR1100") RandomNum(8,8) Global("Mairyn3","GLOBAL",0) Global("RangerProtector","GLOBAL",2) Global("GivenIgenReward","GLOBAL",1) !Global("OgronAttack","GLOBAL",1)~ + @58 + KiRaPro1.8

+ ~Global("OgronAttack","GLOBAL",1) Global("RangerProtector","GLOBAL",2) !Global("MadulfOgronDone","GLOBAL",1)~ + @58 + KiRaPro1.12

+ ~AreaCheck("AR1100") RandomNum(8,1) Global("Mairyn3","GLOBAL",0) OR(2) Global("RangerProtector","GLOBAL",3) Global("MadulfOgronDone","GLOBAL",1) Global("UmarPlot","GLOBAL",0)~ + @58 + KiRaPro1.1
+ ~AreaCheck("AR1100") RandomNum(8,2) Global("Mairyn3","GLOBAL",0) OR(2) Global("RangerProtector","GLOBAL",3) Global("MadulfOgronDone","GLOBAL",1) Global("UmarPlot","GLOBAL",0)~ + @58 + KiRaPro1.2
+ ~AreaCheck("AR1100") RandomNum(8,3) Global("Mairyn3","GLOBAL",0) OR(2) Global("RangerProtector","GLOBAL",3) Global("MadulfOgronDone","GLOBAL",1) Global("UmarPlot","GLOBAL",0)~ + @58 + KiRaPro1.3
+ ~AreaCheck("AR1100") RandomNum(8,4) Global("Mairyn3","GLOBAL",0) OR(2) Global("RangerProtector","GLOBAL",3) Global("MadulfOgronDone","GLOBAL",1) Global("UmarPlot","GLOBAL",0)~ + @58 + KiRaPro1.4
+ ~AreaCheck("AR1100") RandomNum(8,5) Global("Mairyn3","GLOBAL",0) OR(2) Global("RangerProtector","GLOBAL",3) Global("MadulfOgronDone","GLOBAL",1) Global("UmarPlot","GLOBAL",0)~ + @58 + KiRaPro1.5
+ ~AreaCheck("AR1100") RandomNum(8,6) Global("Mairyn3","GLOBAL",0) OR(2) Global("RangerProtector","GLOBAL",3) Global("MadulfOgronDone","GLOBAL",1) Global("UmarPlot","GLOBAL",0)~ + @58 + KiRaPro1.6
+ ~AreaCheck("AR1100") RandomNum(8,7) Global("Mairyn3","GLOBAL",0) OR(2) Global("RangerProtector","GLOBAL",3) Global("MadulfOgronDone","GLOBAL",1) Global("UmarPlot","GLOBAL",0)~ + @58 + KiRaPro1.7
+ ~AreaCheck("AR1100") RandomNum(8,8) Global("Mairyn3","GLOBAL",0) OR(2) Global("RangerProtector","GLOBAL",3) Global("MadulfOgronDone","GLOBAL",1) Global("UmarPlot","GLOBAL",0)~ + @58 + KiRaPro1.8

+ ~Global("RangerProtector","GLOBAL",3) Global("UmarPlot","GLOBAL",1) Global("Minister3","GLOBAL",1)~ + @58 + KiRaPro1.13

+ ~Global("RangerProtector","GLOBAL",3) Global("UmarPlot","GLOBAL",2) Global("Minister3","GLOBAL",1)~ + @58 + KiRaPro1.14

+ ~AreaCheck("AR1100") RandomNum(8,1) Global("RangerProtector","GLOBAL",4)~ + @58 + KiRaPro1.15
+ ~AreaCheck("AR1100") RandomNum(8,2) Global("RangerProtector","GLOBAL",4)~ + @58 + KiRaPro1.16
+ ~AreaCheck("AR1100") RandomNum(8,3) Global("RangerProtector","GLOBAL",4)~ + @58 + KiRaPro1.17
+ ~AreaCheck("AR1100") RandomNum(8,4) Global("RangerProtector","GLOBAL",4)~ + @58 + KiRaPro1.18
+ ~AreaCheck("AR1100") RandomNum(8,5) Global("RangerProtector","GLOBAL",4)~ + @58 + KiRaPro1.15
+ ~AreaCheck("AR1100") RandomNum(8,6) Global("RangerProtector","GLOBAL",4)~ + @58 + KiRaPro1.15
+ ~AreaCheck("AR1100") RandomNum(8,7) Global("RangerProtector","GLOBAL",4)~ + @58 + KiRaPro1.15
+ ~AreaCheck("AR1100") RandomNum(8,8) Global("RangerProtector","GLOBAL",4)~ + @58 + KiRaPro1.15

+ ~Global("P#DisableKivanFlirts","GLOBAL",0)
!Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1)~ + @59 DO ~SetGlobal("P#DisableKivanFlirts","GLOBAL",1)~ EXIT

++ @60 + KiVoice
END

IF ~~ P#KivanInitiateRomance
SAY @569
= @570
= @571
IF ~~ THEN DO ~IncrementGlobal("P#KivanLove","GLOBAL",4)~ EXIT
END

IF ~~ KiVoice
SAY @61
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

IF ~~ P#KivanRefusesToTalk
SAY @62
= @63
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.15
SAY @64
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.16
SAY @65
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.17
SAY @66
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.18
SAY @67
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.14
SAY @68
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.13
SAY @69
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.12
SAY @70
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.11
SAY @71
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.10
SAY @72
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.9
SAY @73
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.1
SAY @74
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.2
SAY @75
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.3
SAY @76
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.4
SAY @77
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.5
SAY @78
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.6
SAY @79
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.7
SAY @80
IF ~~ THEN EXIT
END

IF ~~ KiRaPro1.8
SAY @81
IF ~~ THEN EXIT
END

IF ~~ P#BodhiAran
SAY @82
++ @83 + P#BodhiAran1.1
++ @84  + P#BodhiAran1.2
++ @85 + P#BodhiAran1.3
++ @86 + P#BodhiAran1.4
END

IF ~~ P#BodhiAran1.10
SAY @87
= @88
IF ~~ THEN EXIT
END

IF ~~ P#BodhiAran1.9
SAY @89
= @88
IF ~~ THEN EXIT
END

IF ~~ P#BodhiAran1.8
SAY @90
= @88
IF ~~ THEN EXIT
END

IF ~~ P#BodhiAran1.7
SAY @91
++ @92 + P#BodhiAran1.8
+ ~Gender(Player1,MALE)~ + @93 + P#BodhiAran1.9
+ ~Gender(Player1,FEMALE)~ + @94 + P#BodhiAran1.10
++ @95 + P#BodhiAran1.6
END

IF ~~ P#BodhiAran1.6
SAY @96
IF ~~ THEN EXIT
END

IF ~~ P#BodhiAran1.5
SAY @97
IF ~~ THEN EXIT
END

IF ~~ P#BodhiAran1.4
SAY @98
= @99 
++ @100 + P#BodhiAran1.5
++ @101  + P#BodhiAran1.6
++ @102 + P#BodhiAran1.7
END

IF ~~ P#BodhiAran1.3
SAY @103
= @104 
++ @100 + P#BodhiAran1.5
++ @101  + P#BodhiAran1.6
++ @102 + P#BodhiAran1.7
END

IF ~~ P#BodhiAran1.2
SAY @105 
++ @100 + P#BodhiAran1.5
++ @101  + P#BodhiAran1.6
++ @102 + P#BodhiAran1.7
END


IF ~~ P#BodhiAran1.1
SAY @106 
++ @100 + P#BodhiAran1.5
++ @101  + P#BodhiAran1.6
++ @102 + P#BodhiAran1.7
END


IF ~~ P#KiOldFr1
SAY @107
IF ~~ THEN EXIT
END

IF ~~ P#KiOldFr2
SAY @108
IF ~~ THEN EXIT
END

IF ~~ P#Promenade5
SAY @109
IF ~~ THEN EXIT
END

IF ~~ P#Promenade1
SAY @110
IF ~~ THEN EXIT
END

IF ~~ P#Promenade2
SAY @111
IF ~~ THEN EXIT
END

IF ~~ P#Promenade4
SAY @112
IF ~~ THEN EXIT
END

IF ~~ P#Promenade3
SAY @113
++ @114 + P#Promenade3.1
++ @115 + P#Promenade3.1
++ @116 + P#Promenade3.2
END

IF ~~ P#Promenade3.1
SAY @117
IF ~~ THEN EXIT
END

IF ~~ P#Promenade3.2
SAY @118
IF ~~ THEN EXIT
END

IF ~~ P#KISong1
SAY @119
++ @120 EXIT
++ @121 + P#KISong2
++ @122 + P#KISong3
++ @123 EXIT
END

IF ~~ P#KISong2
SAY @124
++ @125 + KiSo4
++ @126 + P#KISong6
++ @127 + P#KISong7
++ @128 + P#KISong8
END

IF ~~ P#KISong9
SAY @129
++ @130 + KiSo4
++ @131 EXIT
++ @126 + P#KISong6
++ @127 + P#KISong7
++ @128 + P#KISong8
END

IF ~~ P#KISong4
SAY @132
++ @130 + KiSo4
++ @131 EXIT
++ @133 + P#KISong9
END

IF ~~ P#KISong5
SAY @134
++ @130 + KiSo4
++ @131 EXIT
++ @133 + P#KISong9
END


IF ~~ THEN BEGIN KiSo1
SAY @135
IF ~~ THEN REPLY @136 GOTO P#KISong3
IF ~~ THEN REPLY @137 GOTO P#KISong4
IF ~~ THEN REPLY @138 GOTO P#KISong5
END

IF ~~ P#KISong3
SAY @139 
IF ~~ THEN REPLY @140 GOTO KiSo1
IF ~~ THEN REPLY @141 GOTO KiSo2
IF ~~ THEN REPLY @142 GOTO KiSo3
IF ~~ THEN REPLY @143 GOTO KiSo4
END

IF ~~ THEN BEGIN KiSo4
SAY @144
IF ~~THEN EXIT
END

IF ~~ THEN BEGIN KiSo2
SAY @145
IF ~~THEN EXIT
END

IF ~~ THEN BEGIN KiSo3
SAY @146
IF ~~THEN EXIT
END

IF ~~ P#KISong6
SAY @147
++ @148 + P#KISong6.1
++ @149  + KiSo3
END

IF ~~ P#KISong6.1
SAY @150
++ @151 + P#KISong6.2
END

IF ~~ P#KISong6.2
SAY @152
IF ~~ THEN EXIT
END

IF ~~ P#KISong7
SAY @153
++ @154 EXIT
++ @155 EXIT
++ @156 + P#KISong7.1
END

IF ~~ P#KISong7.1
SAY @157
= @158
IF ~~ THEN EXIT
END

IF ~~ P#KISong8
SAY @159
++ @160 + P#KISong8.1
++ @149  + KiSo3
END

IF ~~ P#KISong8.1
SAY @161 
IF ~~ THEN EXIT
END

IF ~~ KivEld
SAY @162
= @163
= @164
= @165
IF ~~ THEN DO ~SetGlobal("P#Eldreth","GLOBAL",2)~ EXIT
END

IF ~~ P#KIDehe1
SAY @166
= @167
= @168
IF ~~ THEN DO ~SetGlobal("P#KivanCondolences","GLOBAL",1)~ EXIT
END

IF ~~ P#KIAunt1
SAY @169
= @170
= @171
= @172
= @173
= @174
= @175
= @176
= @177
= @178  
IF ~~ THEN DO ~SetGlobal("P#KivanCoA","GLOBAL",2)~ EXIT
END
 
IF ~~ P#KIHow1
SAY @179
++ @180 DO ~SetGlobal("P#KivHow","GLOBAL",1)~ + P#KIHow1.1
++ @181 DO ~SetGlobal("P#KivHow","GLOBAL",1)~ + P#KIHow1.2
++ @182 DO ~SetGlobal("P#KivHow","GLOBAL",1)~ + P#KIHow1.3
END

IF ~~ P#KIHow1.1
SAY @183
++ @184 + P#KIHow1.4
++ @185 + P#KIHow1.5
++ @186 + P#KIHow1.6
+ ~Gender(Player1,FEMALE)~ + @187 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + P#KIHow1.11
END

IF ~~  P#KIHow1.2
SAY @188
++ @189 + P#KIHow1.7
++ @190 + P#KIHow1.8
++ @191 + P#KIHow1.9
+ ~Gender(Player1,FEMALE)~ +  @192 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + P#KIHow1.11
END

IF ~~ P#KIHow1.3
SAY @193
= @194
++ @180 + P#KIHow1.1
++ @181 + P#KIHow1.2
END

IF ~~ P#KIHow1.4
SAY @195
++ @189 + P#KIHow1.7
++ @190 + P#KIHow1.8
++ @191 + P#KIHow1.9
+ ~Gender(Player1,FEMALE)~ +  @192 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + P#KIHow1.11
END

IF ~~ P#KIHow1.5
SAY @196
++ @197 + P#KIHow1.4
++ @198 + P#KIHow1.6
++ @199 + P#KIHow1.10
+ ~Gender(Player1,FEMALE)~ + @187 DO ~IncrementGlobal("P#KivanLove","GLOBAL",1)~ + P#KIHow1.11
END

IF ~~ P#KIHow1.6
SAY @200
IF ~~ THEN EXIT
END

IF ~~ P#KIHow1.7
SAY @201
IF ~~ THEN EXIT
END

IF ~~ P#KIHow1.8
SAY @202
IF ~~ THEN EXIT
END

IF ~~ P#KIHow1.9
SAY @203
IF ~~ THEN EXIT
END

IF ~~ P#KIHow1.10
SAY @204
IF ~~ THEN EXIT
END

IF ~~ P#KIHow1.11
SAY @205
IF ~~ THEN EXIT
END

IF ~~ P#KIHair1
SAY @206  
IF ~~ THEN EXIT
END

IF ~~ P#KIHair2
SAY @207  
IF ~~ THEN EXIT
END

IF ~~ P#KIHair3
SAY @208  
IF ~~ THEN EXIT
END

IF ~~ P#KIHair4
SAY @209  
IF ~~ THEN EXIT
END

IF ~~ P#KIHair5
SAY @210  
IF ~~ THEN EXIT
END

IF ~~ P#KIHair6
SAY @211  
IF ~~ THEN EXIT
END

IF ~~ P#KIHair7
SAY @212  
IF ~~ THEN EXIT
END

IF ~~ P#KIHair8
SAY @213  
IF ~~ THEN EXIT
END

IF ~~ P#KIKiss1
SAY @214
IF ~~ THEN EXIT
END

IF ~~ P#KIKiss2
SAY @215
IF ~~ THEN EXIT
END

IF ~~ P#KIKiss3
SAY @216
IF ~~ THEN EXIT
END

IF ~~ P#KIKiss4
SAY @217
IF ~~ THEN EXIT
END

IF ~~ P#KIKiss5
SAY @218
IF ~~ THEN EXIT
END

IF ~~ P#KIKiss6
SAY @219
IF ~~ THEN EXIT
END

IF ~~ P#KIKiss7
SAY @220
IF ~~ THEN EXIT
END

IF ~~ P#KIKiss8
SAY @221
IF ~~ THEN EXIT
END

IF ~~ P#KIShoul1
SAY@222 
IF ~~ THEN EXIT
END

IF ~~ P#KIShoul2
SAY@223 
IF ~~ THEN EXIT
END

IF ~~ P#KIShoul3
SAY@224 
IF ~~ THEN EXIT
END

IF ~~ P#KIShoul4
SAY@225 
IF ~~ THEN EXIT
END

IF ~~ P#KIShoul5
SAY@226 
IF ~~ THEN EXIT
END

IF ~~ P#KIShoul6
SAY@227 
IF ~~ THEN EXIT
END

IF ~~ P#KIShoul7
SAY@228 
IF ~~ THEN EXIT
END

IF ~~ P#KIShoul8
SAY@229 
IF ~~ THEN EXIT
END

IF ~~ P#KIClap1
SAY@230 
IF ~~ THEN EXIT
END

IF ~~ P#KIClap2
SAY@231 
IF ~~ THEN EXIT
END

IF ~~ P#KIClap3
SAY@232 
IF ~~ THEN EXIT
END

IF ~~ P#KIClap4
SAY@233 
IF ~~ THEN EXIT
END

IF ~~ P#KIClap5
SAY@234 
= @235
IF ~~ THEN EXIT
END

IF ~~ P#KIClap6
SAY@236 
IF ~~ THEN EXIT
END

IF ~~ P#KIClap7
SAY@237 
IF ~~ THEN EXIT
END

IF ~~ P#KIClap8
SAY@238 
IF ~~ THEN EXIT
END


IF ~~ P#KIHand1
SAY @239
IF ~~ THEN EXIT
END

IF ~~ P#KIHand2
SAY @240
IF ~~ THEN EXIT
END

IF ~~ P#KIHand3
SAY @241
IF ~~ THEN EXIT
END

IF ~~ P#KIHand4
SAY @242
++ @243  + P#KIHand4.1
++ @244  + P#KIHand4.2
++ @245  + P#KIHand4.3
END

IF ~~ P#KIHand4.1
SAY @246
IF ~~ THEN EXIT
END

IF ~~ P#KIHand4.2
SAY @247
IF ~~ THEN EXIT
END

IF ~~ P#KIHand4.3
SAY @248
= @249
IF ~~ THEN EXIT
END

IF ~~ P#KIHand5
SAY @250
++ @251 EXIT
++ @252 + P#KIHand5.1
++ @253 + P#KIHand5.1
END

IF ~~ P#KIHand5.1
SAY @254
= @255
IF ~~ THEN EXIT
END

IF ~~ P#KIHand6
SAY @256
IF ~~ THEN EXIT
END

IF ~~ P#KIHand7
SAY @257
IF ~~ THEN EXIT
END

IF ~~ P#KIHand8
SAY @258
IF ~~ THEN EXIT
END

IF ~~ P#KIWalk1
SAY @259
IF ~~ THEN EXIT
END

IF ~~ P#KIWalk2
SAY @260
IF ~~ THEN EXIT
END

IF ~~ P#KIWalk3
SAY @261
IF ~~ THEN EXIT
END

IF ~~ P#KIWalk4
SAY @262
IF ~~ THEN EXIT
END

IF ~~ P#KIWalk5
SAY @263
IF ~~ THEN EXIT
END

IF ~~ P#KIWalk6
SAY @263
IF ~~ THEN EXIT
END

IF ~~ P#KIWalk7
SAY @264
IF ~~ THEN EXIT
END

IF ~~ P#KIWalk8
SAY @265
IF ~~ THEN EXIT
END

IF ~~  P#KIHood1
SAY @266
++ @267 + P#KIHood1.1
++ @268 EXIT
++ @269 + P#KIHood1.2
END
  
IF ~~ P#KIHood1.1
SAY @270
= @521
IF ~~ THEN EXIT
END
  
IF ~~ P#KIHood1.2
SAY @271
IF ~~ THEN EXIT
END

IF ~~  P#KIHood2
SAY @272
IF ~~ THEN EXIT
END

IF ~~  P#KIHood3
SAY @273
IF ~~ THEN EXIT
END

IF ~~  P#KIHood4
SAY @274
IF ~~ THEN EXIT
END

IF ~~  P#KIHood5
SAY @275
IF ~~ THEN EXIT
END

IF ~~  P#KIHood6
SAY @276
IF ~~ THEN EXIT
END

IF ~~  P#KIHood7
SAY @277
= @278
= @279
IF ~~ THEN EXIT
END

IF ~~  P#KIHood8
SAY @280
IF ~~ THEN EXIT
END

IF ~~ P#KIElf1
SAY @281
IF ~~ THEN EXIT
END

IF ~~ P#KIElf2
SAY @282
= @283
= @284
IF ~~ THEN EXIT
END

IF ~~ P#KIElf3
SAY @285
IF ~~ THEN EXIT
END

END

CHAIN P#KIVJ P#KIElf4
@286
== P#KIVJ IF ~InParty("aerie")~ THEN @287
== P#KIVJ IF ~InParty("viconia")~ THEN @288
= @289
EXIT

APPEND P#KIVJ

IF ~~ P#KIElf5
SAY @290
IF ~~ THEN EXIT
END

IF ~~ P#KIElf6
SAY @291
IF ~~ THEN EXIT
END

IF ~~ P#KIElf7
SAY @292
IF ~~ THEN EXIT
END

IF ~~ P#KIElf8
SAY @293
IF ~~ THEN EXIT
END

IF ~~ P#KIWho1 
SAY @294
IF ~~ THEN EXIT
END

IF ~~ P#KIWho2 
SAY @295
IF ~~ THEN EXIT
END

IF ~~ P#KIWho3 
SAY @296
IF ~~ THEN EXIT
END

IF ~~ P#KIWho4 
SAY @297
IF ~~ THEN EXIT
END

IF ~~ P#KIWho5 
SAY @298
= @299
IF ~~ THEN EXIT
END

IF ~~ P#KIWho6 
SAY @300
= @301
IF ~~ THEN EXIT
END

IF ~~ P#KIWho7 
SAY @302
= @303
= @304
= @305 
= @306
IF ~~ THEN EXIT
END

IF ~~ P#KIWho8 
SAY @307
= @308
++ @309 + P#KIWho9
++ @310 + P#KIWho10
++ @311 + P#KIWho11
++ @312 + P#KIWho12
++ @313 + P#KIWho13
END

IF ~~ P#KIWho9
SAY @314
= @315
IF ~~ THEN EXIT
END

IF ~~ P#KIWho10
SAY @316
IF ~~ THEN EXIT
END

IF ~~ P#KIWho11
SAY @317
= @318
IF ~~ THEN EXIT
END

IF ~~ P#KIWho12
SAY @317
= @319
IF ~~ THEN EXIT
END

IF ~~ P#KIWho13
SAY @320
= @321
IF ~~ THEN EXIT
END

IF ~~ NotInMood
SAY @322
IF ~~ THEN EXIT
END

IF ~~  P#Bryn
SAY @323
++ @324 EXIT
++ @325 + P#Bryn1
++ @326 + P#Bryn2
END

IF ~~ P#Bryn1
SAY @327
IF ~~ THEN EXIT
END

IF ~~ P#Bryn2
SAY @328
IF ~~ THEN EXIT
END

IF ~~ P#CW
SAY @329
+ ~Gender(Player1,MALE)~+ @330 + P#CW1M
+ ~Global("P#KivanMatch","GLOBAL",1)~+ @331 + P#CW1F
++ @332 + P#CW2
++ @333  + P#CW3
END

IF ~~ P#CW1M
SAY @334
= @335
= @336
IF ~~ THEN EXIT
END

IF ~~ P#CW1F
SAY @337
= @335
= @336
IF ~~ THEN EXIT
END

IF ~~  P#CW2
SAY @338
IF ~~ THEN EXIT
END

IF ~~ P#CW3
SAY @339
IF ~~ THEN EXIT
END

IF ~~ P#CW4
SAY @340
++ @341 EXIT
++ @342 + P#CW5
END

IF ~~ P#CW5
SAY @343
= @344
IF ~~ THEN EXIT
END


IF ~~ P#UD
SAY @345
= @346
IF ~~ THEN EXIT
END

IF ~~  P#USTN5
SAY @347
++ @348 + P#USTN6
++ @349 + P#USTN7
++ @350 + P#USTN7
++ @351 + P#USTN8
END

IF ~~ P#USTN6
SAY @352
IF ~~ THEN EXIT
END

IF ~~ P#USTN7
SAY @353
IF ~~ THEN EXIT
END

IF ~~ P#USTN8
SAY @354
IF ~~ THEN EXIT
END


IF ~~ P#USTN1
SAY @355
IF ~~ THEN EXIT
END

IF ~~ P#USTN2
SAY @356
IF ~~ THEN EXIT
END

IF ~~ P#USTN3
SAY @357
IF ~~ THEN EXIT
END

IF ~~ P#USTN4
SAY @358
IF ~~ THEN EXIT
END


IF ~~  P#Behol
SAY @359
= @360
++ @361 + P#Behol1
++ @362 + P#Behol2
++ @363 + P#Behol3
END

IF ~~ P#Behol1
SAY @364
IF ~~ THEN EXIT
END

IF ~~ P#Behol2
SAY @365
IF ~~ THEN EXIT
END

IF ~~ P#Behol3
SAY @366
IF ~~ THEN EXIT
END

IF ~~ P#Kuo
SAY @367
= @368
= @369
= @370
IF ~~ THEN EXIT
END

IF ~~ P#Mindfl
SAY @371
++ @372 EXIT
++ @373 + P#Mindfl1
++ @374 EXIT
END

IF ~~ P#Mindfl1
SAY @375
= @376
IF ~~ THEN EXIT
END

IF ~~ P#Temud
SAY @377
= @378
= @379
IF ~~ THEN EXIT
END


IF ~~ P#Sauh
SAY @380
++ @381 EXIT
++ @382 + P#Sauh1
+ ~!Race(Player1,ELF)~+ @383 + P#Sauh2
+ ~Race(Player1,ELF)~+ @384 + P#Sauh3
+ ~Race(Player1,ELF)~+ @385 + P#Sauh2
END

IF ~~ P#Sauh1
SAY @386
= @387
++ @388 EXIT
++ @389 + P#Sauh4
END

IF ~~ P#Sauh2
SAY @390
= @391
++ @388 EXIT
++ @389 + P#Sauh4
END

IF ~~ P#Sauh3
SAY @392
= @393
= @391
++ @388 EXIT
++ @389 + P#Sauh4
END

IF ~~ P#Sauh4
SAY @394
= @395
IF ~~ THEN EXIT
END

IF ~~ P#Sul
SAY @396
IF ~~ THEN EXIT
END

IF ~~ P#Bridge
SAY @397
++ @398 EXIT
++ @399 + P#Bridge1
++ @400 + P#Bridge2
END

IF ~~  P#Bridge1
SAY @401
IF ~~ THEN EXIT
END
IF ~~  P#Bridge2
SAY @402
IF ~~ THEN EXIT
END

IF ~~ P#GOVER
SAY @403
= @404
IF ~~ THEN EXIT
END


IF ~~ P#Grave
SAY @405
++ @406 + P#Grave1
++ @407  + P#Grave2
++ @408  + P#Grave3
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @409  + P#Grave4
++ @410  + P#Grave5
END

IF ~~ P#Grave1
SAY @411
IF ~~ THEN EXIT
END

IF ~~ P#Grave2
SAY @412
= @413
= @414
= @415
IF ~~ THEN EXIT
END

IF ~~ P#Grave3
SAY @416
++ @417 +  P#Grave6
++ @418 +  P#Grave7
++ @419 +  P#Grave7
++ @420 +  P#Grave8
END

IF ~~ P#Grave4
SAY @421
= @422
= @423
++ @424 EXIT
++ @425 +  P#Grave9
++ @426 EXIT
END

IF ~~ P#Grave5
SAY @427
++ @428 EXIT
++ @429  +  P#Grave10
++ @430 +  P#Grave11
END


IF ~~ P#Grave6
SAY @431
IF ~~ THEN EXIT
END

IF ~~ P#Grave7
SAY @432
IF ~~ THEN EXIT
END

IF ~~ P#Grave8
SAY @433
IF ~~ THEN EXIT
END

IF ~~ P#Grave9
SAY @434
IF ~ Gender(Player1,MALE)~THEN EXIT
IF ~ Global("P#KivanMatch","GLOBAL",1)~THEN GOTO P#Grave12
END

IF ~~ P#Grave10
SAY @435
IF ~~ THEN EXIT
END

IF ~~ P#Grave11
SAY @436
IF ~~ THEN EXIT
END

IF ~~ P#Grave12
SAY @437
IF ~~ THEN EXIT
END

IF ~~ P#Temple
SAY @438
= @439
= @440
= @441
IF ~~ THEN EXIT
END


IF ~~ P#Slums
SAY @442
++ @443
+ P#Slums1
++ @444  + P#Slums2
++ @445 + P#Slums3
END

IF ~~ P#Slums1
SAY @446
+ ~Race(Player1,ELF)~ + @447 EXIT
+~!Race(Player1,ELF)~ + @448 + P#Slums4
++ @449 + P#Slums4
++ @450 EXIT
END

IF ~~ P#Slums2
SAY @451
IF ~~ THEN EXIT
END

IF ~~ P#Slums3
SAY @452
IF ~~ THEN EXIT
END

IF ~~ P#Slums4
SAY @453
= @454
IF ~~ THEN EXIT
END

IF ~~ P#Grove
SAY @455
IF ~~ THEN EXIT
END

IF ~~  P#SHT
SAY @456
= @457
IF ~~ THEN EXIT
END

IF ~~  P#SHT1
SAY @458
IF ~~ THEN EXIT
END

IF ~~ P#Umar
SAY @459
= @460
IF ~~ THEN EXIT
END

IF ~~ P#Umar1
SAY @461
IF ~~ THEN EXIT
END

IF ~~ P#Wspear1
SAY @462
IF ~~ THEN EXIT
END

IF ~~ P#Wspear2
SAY @463
= @464
= @465
++ @466 + P#Wspear3
++ @467 + P#Wspear4
++ @468 + P#Wspear5
++ @469 DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXIT
END

IF ~~ P#Wspear3
SAY @470
++ @467 + P#Wspear4
++ @468 + P#Wspear5
++ @469 DO ~IncrementGlobal("P#KivanOffence", "GLOBAL",1)~ EXIT
+ ~Global("P#KivanMatch","GLOBAL",1) Global("P#KivanMatch","GLOBAL",1)
!Global("P#KivanRomanceInactive","GLOBAL",1)
Global("P#KivanRomanceActive","GLOBAL",1)
GlobalLT("P#KivanOffence","GLOBAL",10)~+ @471 + P#Wspear6
END

IF ~~ P#Wspear4
SAY @472
= @473
IF ~~ THEN EXIT
END

IF ~~ P#Wspear5
SAY @474
= @475
IF ~~ THEN EXIT
END

IF ~~ P#Wspear6
SAY @476
= @475
IF ~~ THEN  EXIT
END

IF ~~ P#Trademeet1
SAY @477
++ @478 + P#Trademeet2
++ @479 + P#Trademeet3
END

IF ~~ P#Trademeet2
SAY @480
IF ~~ THEN EXIT
END

IF ~~ P#Trademeet3
SAY @481
IF ~~ THEN EXIT
END


IF ~~ NaliaTrolls 
SAY@482
++ @483 EXIT
++ @484 + P#Trolls1
++ @485 + P#Trolls2
END

IF ~~ P#Trolls1
SAY @486
++ @485 + P#Trolls2
++ @487 + P#Trolls3
++ @488 + P#Trolls4
++ @489 + P#Trolls5
END

IF ~~ P#Trolls2
SAY @490
++ @491 + P#Trolls3
++ @488 + P#Trolls4
++ @489 + P#Trolls5
END

IF ~~ P#Trolls3
SAY @492
IF ~~ THEN EXIT
END

IF ~~ P#Trolls4
SAY @493
++ @487 + P#Trolls3
++ @489 + P#Trolls5
END

IF ~~ P#Trolls5
SAY @494
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl1
SAY @495
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl2
SAY @496
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl3
SAY @497
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl4
SAY @498
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl5
SAY @499
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl6
SAY @500
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl7
SAY @501
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl9
SAY @502
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl10
SAY @503
IF ~~ THEN EXIT
END


IF ~~ X#KiHow1
SAY @504
IF ~~ THEN EXIT
END

IF ~~ X#KiHow2
SAY @505
IF ~~ THEN EXIT
END

IF ~~ X#KiHow3
SAY @506
IF ~~ THEN EXIT
END

IF ~~ X#KiHow4
SAY @507
IF ~~ THEN EXIT
END

IF ~~ X#KiHow5
SAY @508
IF ~~ THEN EXIT
END

IF ~~ X#KiHow6
SAY @509
IF ~~ THEN EXIT
END

IF ~~ X#KiHow7
SAY @510
IF ~~ THEN EXIT
END

IF ~~ X#KiHow8
SAY @511
IF ~~ THEN EXIT
END

IF ~~ X#KiHow9
SAY @512
IF ~~ THEN EXIT
END

IF ~~ X#KiHow10
SAY @513
IF ~~ THEN EXIT
END

IF ~~ KiFlirt1
SAY @514
IF ~~ THEN EXIT
END

IF ~~ KiFlirt2
SAY @515
IF ~~ THEN EXIT
END

IF ~~ KiFlirt3
SAY @516
IF ~~ THEN EXIT
END

IF ~~ KiFlirt4
SAY @517
IF ~~ THEN EXIT
END

IF ~~ KiFlirt5
SAY @518 /*This appears to stop in mid-sentence. What did you want to go here?*/
IF ~~ THEN DO ~DestroyItem("P#Dream") SetGlobal("P#DreamCatcher","GLOBAL",2)~ EXIT
END

END

CHAIN P#KIVJ X#KiMaleEl8
@519
== BVICONI @520
EXIT



