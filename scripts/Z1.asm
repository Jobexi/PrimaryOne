Z1_Script:	
	call EnableAutoTextBoxDrawing
	ld hl, Z1TrainerHeader1
	ld de, Z1_ScriptPointers
	ld a, [wPrimaryLeagueCurScript]
	call ExecuteCurMapScriptInTable
	ld [wPrimaryLeagueCurScript], a
	ret

Z1Pewter_5c3a4:
	ld hl, GymZ1CityName
	ld de, GymZ1LeaderName
	jp LoadGymLeaderAndCityName

GymZ1CityName:
	db "PEWTER CITY@"

GymZ1LeaderName:
	db "BROCK@"

Z1_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw Z1PewterText11

Z1_TextPointers:

	dw Z1PewterText1
	dw Z1PewterText2
	dw Z1PewterText3
	dw Z1PewterText4
	dw Z1PewterText5
	dw Z1PewterText6
	dw Z1PewterText7
	dw Z1PewterText8
	dw Z1PewterText9
	dw Z1PewterText10
	dw Z1PewterText11
	dw Z1PewterText12


Z1TrainerHeader1:
	dbEventFlagBit EVENT_9E1
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E1
	dw Z1PewterBattleText1 ; TextBeforeBattle
	dw Z1PewterAfterBattleText1 ; TextAfterBattle
	dw Z1PewterEndBattleText1 ; TextEndBattle
	dw Z1PewterEndBattleText1 ; TextEndBattle
	
Z1TrainerHeader2:
	dbEventFlagBit EVENT_9E2
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E2
	dw Z1PewterBattleText2 ; TextBeforeBattle
	dw Z1PewterAfterBattleText2 ; TextAfterBattle
	dw Z1PewterEndBattleText2 ; TextEndBattle
	dw Z1PewterEndBattleText2 ; TextEndBattle
	
Z1TrainerHeader3:
	dbEventFlagBit EVENT_9E3
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E3
	dw Z1PewterBattleText3 ; TextBeforeBattle
	dw Z1PewterAfterBattleText3 ; TextAfterBattle
	dw Z1PewterEndBattleText3 ; TextEndBattle
	dw Z1PewterEndBattleText3 ; TextEndBattle
	
Z1TrainerHeader4:
	dbEventFlagBit EVENT_9E4
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E4
	dw Z1PewterBattleText4 ; TextBeforeBattle
	dw Z1PewterAfterBattleText4 ; TextAfterBattle
	dw Z1PewterEndBattleText4 ; TextEndBattle
	dw Z1PewterEndBattleText4 ; TextEndBattle
	
Z1TrainerHeader5:
	dbEventFlagBit EVENT_9E5
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E5
	dw Z1PewterBattleText5 ; TextBeforeBattle
	dw Z1PewterAfterBattleText5 ; TextAfterBattle
	dw Z1PewterEndBattleText5 ; TextEndBattle
	dw Z1PewterEndBattleText5 ; TextEndBattle

Z1TrainerHeader6:
	dbEventFlagBit EVENT_9E6
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E6
	dw Z1PewterBattleText6 ; TextBeforeBattle
	dw Z1PewterAfterBattleText6 ; TextAfterBattle
	dw Z1PewterEndBattleText6 ; TextEndBattle
	dw Z1PewterEndBattleText6 ; TextEndBattle
	
Z1TrainerHeader7:
	dbEventFlagBit EVENT_9E7
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E7
	dw Z1PewterBattleText7 ; TextBeforeBattle
	dw Z1PewterAfterBattleText7 ; TextAfterBattle
	dw Z1PewterEndBattleText7 ; TextEndBattle
	dw Z1PewterEndBattleText7 ; TextEndBattle

Z1TrainerHeader8:
	dbEventFlagBit EVENT_9E8, 1
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E8, 1
	dw Z1PewterBattleText8 ; TextBeforeBattle
	dw Z1PewterAfterBattleText8 ; TextAfterBattle
	dw Z1PewterEndBattleText8 ; TextEndBattle
	dw Z1PewterEndBattleText8 ; TextEndBattle
	
Z1TrainerHeader9:
	dbEventFlagBit EVENT_9E9, 1
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E9, 1
	dw Z1PewterBattleText9 ; TextBeforeBattle
	dw Z1PewterAfterBattleText9 ; TextAfterBattle
	dw Z1PewterEndBattleText9 ; TextEndBattle
	dw Z1PewterEndBattleText9 ; TextEndBattle
	
Z1TrainerHeader10:
	dbEventFlagBit EVENT_9EA, 1
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9EA, 1
	dw Z1PewterBattleText10 ; TextBeforeBattle
	dw Z1PewterAfterBattleText10 ; TextAfterBattle
	dw Z1PewterEndBattleText10 ; TextEndBattle
	dw Z1PewterEndBattleText10 ; TextEndBattle

	db $ff

Z1PewterBattleText1:
	TX_FAR _Z1PewterBattleText1
	db "@"

Z1PewterEndBattleText1:
	TX_FAR _Z1PewterEndBattleText1
	db "@"

Z1PewterAfterBattleText1:
	TX_FAR _Z1PewterAfterBattleText1
	db "@"
	
Z1PewterBattleText2:
	TX_FAR _Z1PewterBattleText2
	db "@"

Z1PewterEndBattleText2:
	TX_FAR _Z1PewterEndBattleText2
	db "@"

Z1PewterAfterBattleText2:
	TX_FAR _Z1PewterAfterBattleText2
	db "@"	

Z1PewterBattleText3:
	TX_FAR _Z1PewterBattleText3
	db "@"

Z1PewterEndBattleText3:
	TX_FAR _Z1PewterEndBattleText3
	db "@"

Z1PewterAfterBattleText3:
	TX_FAR _Z1PewterAfterBattleText3
	db "@"
	
Z1PewterBattleText4:
	TX_FAR _Z1PewterBattleText4
	db "@"

Z1PewterEndBattleText4:
	TX_FAR _Z1PewterEndBattleText4
	db "@"

Z1PewterAfterBattleText4:
	TX_FAR _Z1PewterAfterBattleText4
	db "@"

Z1PewterBattleText5:
	TX_FAR _Z1PewterBattleText5
	db "@"

Z1PewterEndBattleText5:
	TX_FAR _Z1PewterEndBattleText5
	db "@"

Z1PewterAfterBattleText5:
	TX_FAR _Z1PewterAfterBattleText5
	db "@"

Z1PewterBattleText6:
	TX_FAR _Z1PewterBattleText6
	db "@"

Z1PewterEndBattleText6:
	TX_FAR _Z1PewterEndBattleText6
	db "@"

Z1PewterAfterBattleText6:
	TX_FAR _Z1PewterAfterBattleText6
	db "@"

Z1PewterBattleText7:
	TX_FAR _Z1PewterBattleText7
	db "@"

Z1PewterEndBattleText7:
	TX_FAR _Z1PewterEndBattleText7
	db "@"

Z1PewterAfterBattleText7:
	TX_FAR _Z1PewterAfterBattleText7
	db "@"
	
Z1PewterBattleText8:
	TX_FAR _Z1PewterBattleText8
	db "@"

Z1PewterEndBattleText8:
	TX_FAR _Z1PewterEndBattleText8
	db "@"

Z1PewterAfterBattleText8:
	TX_FAR _Z1PewterAfterBattleText8
	db "@"
	
Z1PewterBattleText9:
	TX_FAR _Z1PewterBattleText9
	db "@"

Z1PewterEndBattleText9:
	TX_FAR _Z1PewterEndBattleText9
	db "@"

Z1PewterAfterBattleText9:
	TX_FAR _Z1PewterAfterBattleText9
	db "@"
	
Z1PewterBattleText10:
	TX_FAR _Z1PewterBattleText10
	db "@"

Z1PewterEndBattleText10:
	TX_FAR _Z1PewterEndBattleText10
	db "@"

Z1PewterAfterBattleText10:
	TX_FAR _Z1PewterAfterBattleText10
	db "@"

Z1PewterText1:
	TX_ASM
	ld a, $4
	ld [wJobexi1], a	
	ld hl, Z1TrainerHeader1	
	call TalkToTrainer
	jp TextScriptEnd

Z1PewterText2:
	TX_ASM
	ld a, $4
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader2	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText3:
	TX_ASM
	ld a, $3
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader3	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText4:
	TX_ASM
	ld a, $4
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader4	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText5:
	TX_ASM
	ld a, $4
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader5	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText6:
	TX_ASM
	ld a, $4
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader6	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText7:
	TX_ASM
	ld a, $4
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader7	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText8:
	TX_ASM
	ld a, $4
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader8	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText9:
	TX_ASM
	ld a, $3
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader9	
	call TalkToTrainer
	jp TextScriptEnd
	
Z1PewterText10:
	TX_ASM
	ld a, $4
	ld [wJobexi1], a
	ld hl, Z1TrainerHeader10	
	call TalkToTrainer
	jp TextScriptEnd

Z1PewterText11:
	TX_ASM
	ld a, $5
	ld [wJobexi1], a
	call Z1Pewter_5c3a4
	ld a, [wStory1]
	cp $1
	jr nz, .defeatedBrock
	ld a, [wStory2]
	cp $0
	jr z, .notQualified	
	cp $1
	jr z, .noGetPrizeFromOak
	cp $2
	jr z, .qualified
	cp $3
	jr z, .getPrize
	jr .defeatedBrock
.notQualified
	ld hl, Z1PewterText_NQB
	call PrintText
	jp TextScriptEnd
.noGetPrizeFromOak
	ld hl, Z1PewterText_DGPFOB
	call PrintText	
	jp TextScriptEnd	
.getPrize	
	ld a, $4
	ld [wStory2], a
	lb bc, POKE_BAIT + 1, 1
	call GiveItem
	ld hl, BrockGetPrize1
	call PrintText
	ld hl, BrockGetPrize2
	call PrintText
.defeatedBrock	
	ld hl, Z1PewterText_DBB
	call PrintText
	jp TextScriptEnd	
.qualified
	predef HealParty
	ld hl, Z1PewterText_QB
	call PrintText
	ld a, OPP_BROCK
	ld [wCurOpponent], a
	ld a, $2
	ld [wTrainerNo], a
	ld a, $1
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, Z1PewterText_5c4bc
	ld de, Z1PewterText_5c4bc
	call SaveEndBattleTextPointers	
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	ld a, $1
	ld [wGymLeaderNo], a
	ld a, $3	
	ld [wStory2], a	
	jp TextScriptEnd

Z1PewterText12:
	TX_ASM
	ld a, [wStory1]
	cp $1
	jr nz, .defeatedBrock
	ld a, [wStory2]
	cp $0
	jr z, .notQualified	
	cp $1
	jr z, .noGetPrizeFromOak
	cp $2
	jr z, .qualified
	jr .defeatedBrock
.notQualified	
	ld hl, Z1PewterText_NQ
	call PrintText
	jp TextScriptEnd
.noGetPrizeFromOak
	ld hl, Z1PewterText_DGPFO
	call PrintText	
	jp TextScriptEnd
.qualified
	ld hl, Z1PewterText_QB
	call PrintText	
	jp TextScriptEnd	
.defeatedBrock	
	ld hl, Z1PewterText_DB
	call PrintText
	jp TextScriptEnd

Z1PewterText_NQ:
	TX_FAR _Z1PewterText_NQ
	db "@"

Z1PewterText_DGPFO:
	TX_FAR _Z1PewterText_DGPFO
	db "@"	

Z1PewterText_Q:
	TX_FAR _Z1PewterText_Q
	db "@"

Z1PewterText_DB:
	TX_FAR _Z1PewterText_DB
	db "@"	

Z1PewterText_NQB:
	TX_FAR _Z1PewterText_NQB
	db "@"

Z1PewterText_DGPFOB:
	TX_FAR _Z1PewterText_DGPFOB
	db "@"	

Z1PewterText_QB:
	TX_FAR _Z1PewterText_QB
	db "@"

Z1PewterText_DBB:
	TX_FAR _Z1PewterText_DBB
	db "@"		
	
Z1PewterText_5c4a3:
	TX_FAR _Z1PewterText_5c4a3
	db "@"

Z1PewterText_5c4bc:
	TX_FAR _Z1PewterText_5c4bc
	db "@"
	
BrockGetPrize1:	
	TX_FAR _Z1PewterText_5c4c1a
	TX_SFX_LEVEL_UP
	db "@"

BrockGetPrize2:	
	TX_FAR _Z1PewterText_5c4c1b	
	db "@"	
