BEGIN P#KI25P
APPEND P#KI25P

IF ~Global("P#KivanJoined","GLOBAL",1)~ THEN BEGIN KickOut
SAY @0
IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
IF ~InParty("P#DEHER") 
!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR3000") //Watcher's Keep//
!AreaCheck("AR3001") //Watcher’s Keep -- Altar level//
!AreaCheck("AR3003") //Watcher’s Keep -- Compass level //
!AreaCheck("AR3004") //Watcher’s Keep  //
!AreaCheck("AR3005") //Watcher’s Keep -- tieflings//
!AreaCheck("AR3006") //Watcher’s Keep -- Succubus
!AreaCheck("AR3007") //Watcher’s Keep --Cambion
!AreaCheck("AR3008") //Watcher’s Keep -- Balor (Paladin Sword)
!AreaCheck("AR3009") //Watcher’s Keep --") //Wild Magic ?
!AreaCheck("AR3010") //Watcher’s Keep -- Tanar’ri -- Obelisk
!AreaCheck("AR3011") //Watcher’s Keep -- Bard’s Gloves, Manman’s Journal
!AreaCheck("AR3012") //Watcher’s Keep -- Tahazzar
!AreaCheck("AR3013") //Watcher’s Keep -- Ka’rashur
!AreaCheck("AR3014") //Watcher’s Keep --") //White Dragon Scales
!AreaCheck("AR3015") //Watcher’s Keep -- Aesgareth
!AreaCheck("AR3016") //Watcher’s Keep -- Chromatic Demon; Elementalist Level
!AreaCheck("AR3017") //Watcher’s Keep -- Carston and the machine
!AreaCheck("AR3018") //Watcher’s Keep -- Saladrex (Dragon)
!AreaCheck("AR3019") //Watcher’s Keep -- Helmite Level -- Last Seals
!AreaCheck("AR3020") //Watcher’s Keep -- Imprisoned One
!AreaCheck("AR3021") //Watcher’s Keep -- Ilithids
!AreaCheck("AR3022") //Watcher’s Keep -- Anti-Paladins
!AreaCheck("AR3023") //Watcher’s Keep -- "Adventure Level" (Mini Map!!!)
!AreaCheck("AR3024") //Watcher’s Keep -- Dragon -- Fear Challenge
!AreaCheck("AR3025") //Watcher’s Keep -- Orcs -- Ixil’s Nail
!AreaCheck("AR3026") //Watcher’s Keep -- Imp -- Game
!AreaCheck("AR3027") //Watcher’s Keep -- Crypt -- Demi-Lich
~ THEN REPLY @2 DO ~SetGlobal("P#KivanJoined","GLOBAL",0) LeaveParty() SetGlobal("DeherJoined","GLOBAL",0) ActionOverride("P#DEHER",LeaveParty()) ~ EXIT
IF ~!InParty("P#DEHER")
!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR3000") //Watcher's Keep
!AreaCheck("AR3001") //Watcher’s Keep -- Altar level
!AreaCheck("AR3003") //Watcher’s Keep -- Compass level
!AreaCheck("AR3004") //Watcher’s Keep
!AreaCheck("AR3005") //Watcher’s Keep -- tieflings
!AreaCheck("AR3006") //Watcher’s Keep -- Succubus
!AreaCheck("AR3007") //Watcher’s Keep --Cambion
!AreaCheck("AR3008") //Watcher’s Keep -- Balor (Paladin Sword)
!AreaCheck("AR3009") //Watcher’s Keep --") //Wild Magic ?
!AreaCheck("AR3010") //Watcher’s Keep -- Tanar’ri -- Obelisk
!AreaCheck("AR3011") //Watcher’s Keep -- Bard’s Gloves, Manman’s Journal
!AreaCheck("AR3012") //Watcher’s Keep -- Tahazzar
!AreaCheck("AR3013") //Watcher’s Keep -- Ka’rashur
!AreaCheck("AR3014") //Watcher’s Keep --") //White Dragon Scales
!AreaCheck("AR3015") //Watcher’s Keep -- Aesgareth
!AreaCheck("AR3016") //Watcher’s Keep -- Chromatic Demon; Elementalist Level
!AreaCheck("AR3017") //Watcher’s Keep -- Carston and the machine
!AreaCheck("AR3018") //Watcher’s Keep -- Saladrex (Dragon)
!AreaCheck("AR3019") //Watcher’s Keep -- Helmite Level -- Last Seals
!AreaCheck("AR3020") //Watcher’s Keep -- Imprisoned One
!AreaCheck("AR3021") //Watcher’s Keep -- Ilithids
!AreaCheck("AR3022") //Watcher’s Keep -- Anti-Paladins
!AreaCheck("AR3023") //Watcher’s Keep -- "Adventure Level" (Mini Map!!!)
!AreaCheck("AR3024") //Watcher’s Keep -- Dragon -- Fear Challenge
!AreaCheck("AR3025") //Watcher’s Keep -- Orcs -- Ixil’s Nail
!AreaCheck("AR3026") //Watcher’s Keep -- Imp -- Game
!AreaCheck("AR3027") //Watcher’s Keep -- Crypt -- Demi-Lich
~ THEN REPLY @2 DO ~SetGlobal("P#KivanJoined","GLOBAL",0) LeaveParty()~ EXIT
IF ~!InParty("P#DEHER")~ THEN REPLY @3 GOTO PoliteRefuse
IF ~InParty("P#DEHER")~ THEN REPLY @3 GOTO PoliteRefuseD
IF ~OR(2) Global("P#DeherianaLives","GLOBAL",0) Global("P#DeherianaDead","GLOBAL",1)
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @4 DO ~SetGlobal("P#KivanJoined","GLOBAL",0) ~ + KivanWindSpear
END

IF ~~  KivanWindSpear
SAY @5
= @6
IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR1200",894,3209,0) ~ EXIT
END

IF ~~ THEN BEGIN PoliteRefuse
SAY @7
IF ~~ THEN DO ~ LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN PoliteRefuse1
SAY @7
IF ~~ THEN DO ~ LeaveParty() EscapeArea()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDialogue
SAY @8
IF ~!InParty("P#DEHER")~ THEN REPLY @9 DO ~SetGlobal("P#KivanJoined","GLOBAL",1)
JoinParty()~ EXIT
IF ~InParty("P#DEHER")~ THEN REPLY @10 DO ~SetGlobal("P#KivanJoined","GLOBAL",1)
JoinParty() ActionOverride("P#DEHER",JoinParty())~ EXIT
IF ~~ THEN REPLY @11 GOTO RefusedAgain
IF ~!Global("P#DeherianaLives","GLOBAL",2) !Global("P#DeherianaLives","GLOBAL",6)~ THEN REPLY @3 GOTO PoliteRefuse1
IF ~OR(2) Global("P#DeherianaLives","GLOBAL",2) Global("P#DeherianaLives","GLOBAL",6)~ THEN REPLY @3 GOTO PoliteRefuse1D
END

IF ~~ THEN BEGIN RefusedAgain
SAY @12
IF ~~ THEN EXIT
END
END

CHAIN IF ~~ THEN P#KI25P PoliteRefuseD
@13
== P#KI25P @14
END
IF ~~ THEN DO ~ActionOverride("P#DEHER",LeaveParty()) ActionOverride("P#DEHER", EscapeArea()) LeaveParty() EscapeArea()~ EXIT


CHAIN IF ~~ THEN P#KI25P PoliteRefuse1D
@13
== P#KI25P @14
END
IF ~~ THEN DO ~ActionOverride("P#DEHER",LeaveParty()) ActionOverride("P#DEHER", EscapeArea()) LeaveParty() EscapeArea()~ EXIT

BEGIN P#DE25P
APPEND P#DE25P
IF ~Global("DeherJoined","GLOBAL",1)~ THEN BEGIN KickOut
SAY @15 
IF ~~ THEN REPLY @16 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @17 GOTO LeaveWKivan
END

IF ~~ THEN BEGIN LeaveWKivan
SAY @18 
IF ~~ THEN DO ~ActionOverride("P#Kivan",LeaveParty()) ActionOverride("P#KIVAN", EscapeArea()) LeaveParty() EscapeArea()~ EXIT
END

IF ~InParty("P#Kivan") NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDeheriana
SAY @19 
IF ~~ THEN REPLY @20 DO ~SetGlobal("DeherJoined","GLOBAL",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @21 GOTO RefusedToTake
IF ~~ THEN REPLY @22 GOTO DropKivan
END

IF ~Global("P#DehWelcome","GLOBAL",2)~ THEN BEGIN RefusedToTake
SAY @23
IF ~~ THEN EXIT
END

IF ~Global("P#DehWelcome","GLOBAL",2)~ DropKivan
SAY @24 
IF ~~ THEN DO ~ActionOverride("P#KIVAN",LeaveParty()) EscapeArea() ActionOverride("P#KIVAN",EscapeArea())~
EXIT
END

IF ~!InParty("P#Kivan") NumTimesTalkedToGT(0)~ THEN BEGIN NoKivan
SAY @25 
+ ~!Dead("P#Kivan") ~ + @26 + NoKivanJoin
+ ~Dead("P#Kivan")~ + @27 + KivDead
++ @28 + Thankyou
END

IF ~~ NoKivanJoin
SAY @29
IF ~~ THEN EXIT
END

IF ~~ KivDead
SAY @30
IF ~~ THEN DO ~EscapeArea()~
EXIT
END

IF ~~ Thankyou
SAY @31
IF ~~ THEN EXIT
END

END

//Tob Bow Upgrade

EXTEND_BOTTOM BOTSMITH 77
IF ~PartyHasItem("bow20")
PartyHasItem("bow22") PartyHasItem("p#bow01")~ THEN GOTO P#HasAllThreeBows
IF ~PartyHasItem("bow20")
!PartyHasItem("bow22") PartyHasItem("p#bow01")~ THEN GOTO P#HasDarkfireOnly
  IF ~!PartyHasItem("bow20")
PartyHasItem("bow22") PartyHasItem("p#bow01")~ THEN GOTO P#HasTaralashOnly
  IF ~!PartyHasItem("bow20")
!PartyHasItem("bow22") PartyHasItem("p#bow01")~ THEN GOTO P#HasKivanBowOnly
END

APPEND BOTSMITH

IF ~~ THEN BEGIN P#HasAllThreeBows
  SAY @32
  IF ~PartyGoldLT(5000)~ THEN REPLY @33 GOTO 10
  IF ~PartyGoldGT(4999)~ THEN REPLY @34 DO ~SetGlobal("ItemMaker","GLOBAL",19)
TakePartyGold(5000)
TakePartyItemNum("compon10",1)
DestroyItem("compon10")
TakePartyItemNum("bow20",1)
DestroyItem("bow20")
DestroyGold(5000)~ GOTO 11
  IF ~PartyGoldGT(4999)~ THEN REPLY @35 DO ~SetGlobal("ItemMaker","GLOBAL",20)
TakePartyGold(5000)
TakePartyItemNum("compon10",1)
DestroyItem("compon10")
TakePartyItemNum("bow22",1)
DestroyItem("bow22")
DestroyGold(5000)~ GOTO 11
  IF ~PartyGoldGT(4999)~ THEN REPLY @36 DO ~SetGlobal("ItemMaker","GLOBAL",87)
TakePartyGold(5000)
TakePartyItemNum("compon10",1)
DestroyItem("compon10")
TakePartyItemNum("p#bow01",1)
DestroyItem("p#bow01")
DestroyGold(5000)~ GOTO 11
  IF ~~ THEN REPLY @37 GOTO 82
END

IF ~~ THEN BEGIN P#HasDarkfireOnly
  SAY @32
  IF ~PartyGoldLT(5000)~ THEN REPLY @33 GOTO 10
  IF ~PartyGoldGT(4999)~ THEN REPLY @34 DO ~SetGlobal("ItemMaker","GLOBAL",19)
TakePartyGold(5000)
TakePartyItemNum("compon10",1)
DestroyItem("compon10")
TakePartyItemNum("bow20",1)
DestroyItem("bow20")
DestroyGold(5000)~ GOTO 11
  IF ~PartyGoldGT(4999)~ THEN REPLY @36 DO ~SetGlobal("ItemMaker","GLOBAL",87)
TakePartyGold(5000)
TakePartyItemNum("compon10",1)
DestroyItem("compon10")
TakePartyItemNum("p#bow01",1)
DestroyItem("p#bow01")
DestroyGold(5000)~ GOTO 11
  IF ~~ THEN REPLY @37 GOTO 82
END

IF ~~ THEN BEGIN P#HasTaralashOnly
  SAY @32
  IF ~PartyGoldLT(5000)~ THEN REPLY @33 GOTO 10
  IF ~PartyGoldGT(4999)~ THEN REPLY @35 DO ~SetGlobal("ItemMaker","GLOBAL",20)
TakePartyGold(5000)
TakePartyItemNum("compon10",1)
DestroyItem("compon10")
TakePartyItemNum("bow22",1)
DestroyItem("bow22")
DestroyGold(5000)~ GOTO 11
  IF ~PartyGoldGT(4999)~ THEN REPLY @36 DO ~SetGlobal("ItemMaker","GLOBAL",87)
TakePartyGold(5000)
TakePartyItemNum("compon10",1)
DestroyItem("compon10")
TakePartyItemNum("p#bow01",1)
DestroyItem("p#bow01")
DestroyGold(5000)~ GOTO 11
  IF ~~ THEN REPLY @37 GOTO 82
END

IF ~~ THEN BEGIN P#HasKivanBowOnly
  SAY @38
  IF ~PartyGoldLT(5000)~ THEN REPLY @33 GOTO 10
  IF ~PartyGoldGT(4999)~ THEN REPLY @39 DO ~SetGlobal("ItemMaker","GLOBAL",87)
TakePartyGold(5000)
TakePartyItemNum("compon10",1)
DestroyItem("compon10")
TakePartyItemNum("p#bow01",1)
DestroyItem("p#bow01")
DestroyGold(5000)~ GOTO 11
  IF ~~ THEN REPLY @37 GOTO 82
END

END

BEGIN P#KI25J
BEGIN P#DE25J

//Interjections

//Throne of Bhaal:

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("P#Kivan") !Dead("P#Kivan") 
!Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2)~ THEN EXTERN ~P#KI25J~ P#KivThrone1
END

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("P#Kivan") !Dead("P#Kivan") 
!Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2)~ THEN EXTERN ~P#KI25J~ P#KivThrone2_29
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("P#Kivan") !Dead("P#Kivan") 
!Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2)~ THEN EXTERN ~P#KI25J~ P#KivThrone2_30
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("P#Kivan") !Dead("P#Kivan") 
!Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2)~ THEN EXTERN ~P#KI25J~ P#KivThrone2_31
END

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("P#Kivan") !Dead("P#Kivan") 
!Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2)~ THEN EXTERN ~P#KI25J~ P#KivThrone3
END

APPEND P#KI25J

IF ~~ P#KivThrone1
SAY @40
= @41
= @42
IF ~Race(Player1,ELF)~ THEN GOTO P#KivThrone1Elf
IF ~!Race(Player1,ELF)~ THEN GOTO P#KivThrone1NotElf
END

IF ~~ P#KivThrone1NotElf
SAY @43
= @44
++ @45 + KiEnd1.1
++ @46 + KiEnd1.1
++ @47 + KiEnd1.1
++ @48 + KiEnd1.2
++ @49 + KiEnd1.3
++ @50 + KiEnd1.3
++ @51 + KiEnd1.4
END

IF ~~ P#KivThrone1Elf
SAY @52
++ @45 + KiEnd1.1
++ @46 + KiEnd1.1
++ @47 + KiEnd1.1
++ @48 + KiEnd1.2
++ @49 + KiEnd1.3
++ @50 + KiEnd1.3
++ @51 + KiEnd1.4
END


IF ~~ KiEnd1.1
SAY @53
= @54
COPY_TRANS ~FINSOL01~ 27
END

IF ~~ KiEnd1.2
SAY @55
= @54
COPY_TRANS ~FINSOL01~ 27
END

IF ~~ KiEnd1.3
SAY @56
= @54
COPY_TRANS ~FINSOL01~ 27
END

IF ~~ KiEnd1.4
SAY @57
= @54
COPY_TRANS ~FINSOL01~ 27
END

//

IF ~~ P#KivThrone3
SAY @58
COPY_TRANS ~FINSOL01~ 32
END

IF ~~ P#KivThrone2_29
SAY @59
COPY_TRANS ~FINSOL01~ 29
END

IF ~~ P#KivThrone2_30
SAY @59
COPY_TRANS ~FINSOL01~ 30
END

IF ~~ P#KivThrone2_31
SAY @59
COPY_TRANS ~FINSOL01~ 31
END

END

//Watcher's Keep

I_C_T2 GORDEMO 1 P#DehWKIO
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @60
END

I_C_T2 GORDEMO 1 P#KivWKIO
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @61
END

I_C_T2 GORDEMO 18 P#KivWKIO1
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @62
END

I_C_T2 GORDEMO 24 P#KivWKIO2
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @63
END

I_C_T2 GORCHR 11 P#DehWKChrDemon
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @64
END

I_C_T2 GORCHR 6 P#KivWKCHR
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @65
END

I_C_T2 GORCAR 15 P#KivWKCarston
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @66
END

I_C_T2 GORCAR 15 P#DehWKCarston
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @67
END

I_C_T2 GORCAMB 20 P#DehWKDeck
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @68
END

I_C_T2 GORAPR 10 P#KivWKApprentice
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @69
END

I_C_T2 GORAPP1 10 P#KivWKFinal
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @70
END

I_C_T2 GORAPP1 10 P#DehWKFinal
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @71
END

INTERJECT GORSUC01 8 P#KivWKSuccubus
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")
!Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2)
~ THEN @72
END
++ @73 EXTERN P#KI25J KiSucc1
++ @74 EXTERN P#KI25J KiSucc2
++ @75 EXTERN P#KI25J KiSucc3
++ @76 EXTERN P#KI25J KiSucc4


APPEND P#KI25J

IF ~~  KiSucc1
SAY @77
COPY_TRANS GORSUC01 8
END

IF ~~  KiSucc2
SAY @78
COPY_TRANS GORSUC01 8
END

IF ~~  KiSucc3
SAY @79
COPY_TRANS GORSUC01 8
END

IF ~~  KiSucc4
SAY @80
COPY_TRANS GORSUC01 8
END

END

I_C_T2 GORMAD1 39 P#KivWKYakman
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @81
END

I_C_T2 GORMAD1 40 P#KivWKYakman
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @81
END

I_C_T2 GORPOL1 17 P#DehWKPol
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @82
END

I_C_T2 GORMAD1 2 P#DehWKYakman
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @83
END

I_C_T2 GORIMP01 4 P#DehWKImp
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @84
END

//Abzigail

I_C_T2 AMELM01 16 P#KivElminster
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @85
= @86
= @87
END

I_C_T2 BAZEYE01 10 P#DehEyes
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @88
END


I_C_T2 BAZDRA03 12 P#DehDragonAbz
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @89
== BAZDRA03 IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @90
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @91
== BAZDRA03 IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @92
END

//Sendai

I_C_T SENBEH01 3 P#DehDrowBeholder
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @93
END

I_C_T2 SENPRI 4 P#DehDrowPristess
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @94
END

I_C_T2 SENGUA01 16 P#DehDrowGuard
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @95
END

I_C_T2 SENGUA01 19 P#DehDrowGuard
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @95
END

//Amkethran

I_C_T2 AMSAEMON 3 P#KivanSaemon
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @96
== AMSAEMON IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @97
END

I_C_T2 AMASANA 3 P#DehAsana
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @98
END

I_C_T2 AMTGEN01 1 P#KivanJamis
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @99
== AMTGEN01 IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @100
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @101
== AMTGEN01 IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @102
END

I_C_T2 AMCLER01 8 P#KivanClericAm
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @103
END

//Yaga Shura

I_C_T2 HGNYA01 30 P#DehNyaleeSpirits
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @104
END

I_C_T2 YAGCON 11 P#KivanNortherner
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN") !Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2)~ THEN @105
END

I_C_T2 YAGA01 6 P#KivanYaga
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @106
END

//Saradush

INTERJECT SARMEL01 18 P#KivanMelissan1
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @107
END
++ @108 EXTERN P#KI25J KiGro1
++ @109 EXTERN P#KI25J KiGro2
++ @110 EXTERN P#KI25J KiGro3
++ @111 EXTERN P#KI25J KiGro4


APPEND P#KI25J

IF ~~  KiGro1
SAY @112
COPY_TRANS SARMEL01 18
END

IF ~~  KiGro2
SAY @113
COPY_TRANS SARMEL01 18
END

IF ~~  KiGro3
SAY @114
COPY_TRANS SARMEL01 18
END

IF ~~  KiGro4
SAY @115
COPY_TRANS SARMEL01 18
END

END

I_C_T2 GROMNIR 3 P#KivanGromnir
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @116
END

I_C_T2 25SPELL 0 P#DehArcana
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @118
END

I_C_T2 SARCNT01 10 P#DehCountess
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @119
END

I_C_T2 SARKIS01 22 P#DehKiser
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @120
END

I_C_T2 ORPHAN2 3 P#DehFezhak
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @121
END

I_C_T2 SARTEM01 20 P#KivanTemple
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @122
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @123
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @124
END

I_C_T2 SARELF01 2 P#KivanElfMale
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @125
END

I_C_T2 SARELF03 0 P#DehElfFemme
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @126
END

I_C_T2 SARVIE01 7 P#DehViekang
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @127
END

//Pocket Plane//

I_C_T2 BOTSMITH 1 P#DehCespenar
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @128
= @129
END

I_C_T2 SAREV25A 1 P#KivanSarevokIntro
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @130
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @131
== SAREV25A IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @132
END

I_C_T2 SAREV25A 2 P#KivanSarevokIntro
== P#KI25J IF ~InParty("P#kivan") InMyArea("P#KIVAN") ~ THEN @130
== P#DE25J IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @131
== SAREV25A IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @132
END

//Heart//

EXTEND_BOTTOM HGNYA01 6
IF ~InParty("P#kivan") InMyArea("P#KIVAN") PartyHasItem("P#TAHE")~ THEN GOTO P#KivanHeart
END

APPEND HGNYA01

IF WEIGHT #-1 ~
OR(2) 
Global("P#KivanInterruptNyalee","GLOBAL",1)
Global("P#NyaleeTakesHeart","LOCALS",1)
~ THEN BEGIN 7New
  SAY @133
  IF ~~ THEN REPLY @134 DO ~SetGlobal("P#KivanInterruptNyalee","GLOBAL",2) SetGlobal("P#NyaleeTakesHeart","LOCALS",2)~ GOTO 8
  IF ~~ THEN REPLY @135 DO ~SetGlobal("P#KivanInterruptNyalee","GLOBAL",2) SetGlobal("P#NyaleeTakesHeart","LOCALS",2)~ GOTO 9
  IF ~~ THEN REPLY @136 DO ~SetGlobal("P#KivanInterruptNyalee","GLOBAL",2) SetGlobal("P#NyaleeTakesHeart","LOCALS",2)~ GOTO 11
  IF ~~ THEN REPLY @137 DO ~SetGlobal("P#KivanInterruptNyalee","GLOBAL",2) SetGlobal("P#NyaleeTakesHeart","LOCALS",2)~ GOTO 10
END

IF ~~ P#KivanHeart
SAY @138
+ ~InParty("P#DEHER")~+ @139 EXTERN P#DE25J KiNya1.1
+ ~InParty("P#DEHER")~+ @140  EXTERN P#DE25J KiNya1.1
+ ~InParty("P#DEHER")~+ @141  EXTERN P#DE25J KiNya1.1
+ ~!InParty("P#DEHER")~+ @139 + KiNya1.2
+ ~!InParty("P#DEHER")~+ @140  + KiNya1.2
+ ~!InParty("P#DEHER")~+ @141  + KiNya1.2
++ @142  + KiNya1.3
END

IF ~~ KiNya1.2
SAY @143
IF ~~ THEN GOTO 7
END

IF ~~ KiNya1.3
SAY @144
= @145 
++ @146 EXTERN P#KI25J KiNya1.5
++ @147 + KiNya1.4
++ @148 + KiNya1.6
END

IF ~~ KiNya1.4
SAY @149
IF ~~ THEN DO ~
DialogInterrupt(FALSE)
SetInterrupt(FALSE)
SetGlobal("P#NyaleeTakesHeart","LOCALS",1)
TakePartyItem("P#TAHE")
DestroyItem("P#TAHE")
PlaySound("CAS_P06")
Wait(2)
CreateVisualEffectObject("SPGENHLB",Myself)
Wait(3)
CreateVisualEffectObject("SPFDEATH","P#Kivan")
ActionOverride("P#Kivan",PlayDead(60))
Wait(3)
ReallyForceSpellRES("SPWISH04","P#KIVAN")
ReallyForceSpellRES("SPWISH04","P#KIVAN")
ReallyForceSpellRES("SPWISH04","P#KIVAN")
ReallyForceSpellRES("SPWISH04","P#KIVAN")
Wait(3)
CreateVisualEffectObject("SPFINODI","P#Kivan")
Wait(2)
DialogInterrupt(TRUE)
SetInterrupt(TRUE)
StartDialogueNoSet([PC])~ EXIT
END

IF ~~ KiNya1.6
SAY @150
IF ~~ THEN GOTO 7
END

END

CHAIN P#DE25J KiNya1.1
@151
== HGNYA01 @152
= @153 
END
++ @146 EXTERN P#KI25J KiNya1.5
++ @147 EXTERN HGNYA01 KiNya1.4
++ @154 EXTERN HGNYA01 KiNya1.6

CHAIN P#KI25J KiNya1.5
@155 
END
IF ~~ THEN DO ~SetGlobal("P#KivanInterruptNyalee","GLOBAL",1) LeaveParty() Enemy() ActionOverride("P#DEHER",LeaveParty()) ActionOverride("P#DEHER",Enemy())~ EXIT

//Watcher's Keep  in SoA

I_C_T2 GORDEMO 1 P#DehWKIO
== P#DEHJ IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @60
END

I_C_T2 GORDEMO 1 P#KivWKIO
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @61
END

I_C_T2 GORDEMO 18 P#KivWKIO1
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @62
END

I_C_T2 GORDEMO 24 P#KivWKIO2
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @63
END

I_C_T2 GORCHR 11 P#DehWKChrDemon
== P#DEHJ IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @64
END

I_C_T2 GORCHR 6 P#KivWKCHR
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @65
END

I_C_T2 GORCAR 15 P#KivWKCarston
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @66
END

I_C_T2 GORCAR 15 P#DehWKCarston
== P#DEHJ IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @67
END

I_C_T2 GORCAMB 20 P#DehWKDeck
== P#DEHJ IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @68
END

I_C_T2 GORAPR 10 P#KivWKApprentice
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @69
END

I_C_T2 GORAPP1 10 P#KivWKFinal
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @70
END

I_C_T2 GORAPP1 10 P#DehWKFinal
== P#DEHJ IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @71
END

INTERJECT GORSUC01 8 P#KivWKSuccubus
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")
!Global("P#KivanRomanceInactive","GLOBAL",1) Global("P#KivanRomanceActive","GLOBAL",2)
~ THEN @72
END
++ @73 EXTERN P#KIVJ KiSucc1
++ @74 EXTERN P#KIVJ KiSucc2
++ @75 EXTERN P#KIVJ KiSucc3
++ @76 EXTERN P#KIVJ KiSucc4


APPEND P#KIVJ

IF ~~  KiSucc1
SAY @77
COPY_TRANS GORSUC01 8
END

IF ~~  KiSucc2
SAY @78
COPY_TRANS GORSUC01 8
END

IF ~~  KiSucc3
SAY @79
COPY_TRANS GORSUC01 8
END

IF ~~  KiSucc4
SAY @80
COPY_TRANS GORSUC01 8
END

END

I_C_T2 GORMAD1 39 P#KivWKYakman
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @81
END

I_C_T2 GORMAD1 40 P#KivWKYakman
== P#KIVJ IF ~InParty("P#kivan") InMyArea("P#KIVAN")~ THEN @81
END

I_C_T2 GORPOL1 17 P#DehWKPol
== P#DEHJ IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @82
END

I_C_T2 GORMAD1 2 P#DehWKYakman
== P#DEHJ IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @83
END

I_C_T2 GORIMP01 4 P#DehWKImp
== P#DEHJ IF ~InParty("P#DEHER") InMyArea("P#DEHER") ~ THEN @84
END

//Volo in Saradush  //from 156//

EXTEND_BOTTOM SARVOLO 9
IF ~InParty("P#Kivan")
Global("P#KivanRomanceActive","GLOBAL",2)~ THEN REPLY @157 GOTO VoloKivan1
  IF ~InParty("P#Kivan")
OR(2) !Global("P#KivanRomanceActive","GLOBAL",0) Global("P#KivanRomanceInactive","GLOBAL",1)~ THEN REPLY @157 GOTO VoloKivan2
IF ~InParty("P#DEHER")~ THEN REPLY @158 GOTO VoloDeheriana
END

//Spirit of Fate

EXTEND_TOP FATESP 6
+ ~!InMyArea("P#KIVAN")
Global("P#KivanSummoned","GLOBAL",0)~ + @164 DO ~SetGlobal("P#KivanSummoned","GLOBAL",2)~ + 7
+ ~!InMyArea("P#DEHER")
Global("P#DeherianaSummoned","GLOBAL",0)~ + @165 DO ~SetGlobal("P#DeherianaSummoned","GLOBAL",2)~ + 7
END

APPEND SARVOLO

IF ~~ THEN BEGIN VoloKivan1
  SAY @159
  IF ~!IsValidForPartyDialogue("P#Kivan")~ THEN GOTO 9
  IF ~IsValidForPartyDialogue("P#KIVAN")~ THEN EXTERN P#KI25J VoloReaction1
END

IF ~~ THEN BEGIN VoloKivan2
  SAY @160
 IF ~!IsValidForPartyDialogue("P#Kivan")~ THEN GOTO 9
  IF ~IsValidForPartyDialogue("P#KIVAN")~ THEN EXTERN P#KI25J VoloReaction1
END
 
 IF ~~ THEN BEGIN VoloDeheriana
  SAY @161
 IF ~!IsValidForPartyDialogue("P#DEHER")~ THEN GOTO 9
  IF ~IsValidForPartyDialogue("P#DEHER")~ THEN EXTERN P#DE25J VoloReaction2
END

END

APPEND P#KI25J

IF ~~ THEN BEGIN VoloReaction1
  SAY @162
  IF ~~ THEN EXTERN SARVOLO 9
END

IF ~Global("P#KivanAdric","GLOBAL",1)~ THEN BEGIN P#KiAd
SAY @117
IF ~~ THEN DO ~SetGlobal("P#KivanAdric","GLOBAL",2)~EXIT
END

END

APPEND P#DE25J

IF ~~ THEN BEGIN VoloReaction2
  SAY @163
  IF ~~ THEN EXTERN SARVOLO 9
END

END

/*
APPEND FATESP

IF ~~ P#FSDehDead
SAY @166
IF ~~ THEN GOTO 6
END
END
*/
