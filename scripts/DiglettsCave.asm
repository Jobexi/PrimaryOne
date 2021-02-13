DiglettsCave_Script:
	call EnableAutoTextBoxDrawing
	ld hl, DiglettCaveTrainerHeader1
	ld de, DiglettCave_ScriptPointers
	ld a, [wDiglettCaveCurScript]
	call ExecuteCurMapScriptInTable
	ld [wDiglettCaveCurScript], a
	ret

DiglettCave_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

DiglettsCave_TextPointers:
	dw DiglettsCaveText1
	dw DiglettsCaveText2
	dw DiglettsCaveText3
	dw DiglettsCaveText4
	dw DiglettsCaveText5
	dw DiglettsCaveText6
	dw DiglettsCaveText7
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText	

DiglettCaveTrainerHeader1:
	dbEventFlagBit EVENT_9E1
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E1
	dw DiglettsCaveBeforeBattleText1 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText1 ; TextAfterBattle
	dw DiglettsCaveEndBattleText1 ; TextEndBattle
	dw DiglettsCaveEndBattleText1 ; TextEndBattle

DiglettCaveTrainerHeader2:
	dbEventFlagBit EVENT_9E2
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E2
	dw DiglettsCaveBeforeBattleText2 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText2 ; TextAfterBattle
	dw DiglettsCaveEndBattleText2 ; TextEndBattle
	dw DiglettsCaveEndBattleText2 ; TextEndBattle
	
DiglettCaveTrainerHeader3:
	dbEventFlagBit EVENT_9E3
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E3
	dw DiglettsCaveBeforeBattleText3 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText3 ; TextAfterBattle
	dw DiglettsCaveEndBattleText3 ; TextEndBattle
	dw DiglettsCaveEndBattleText3 ; TextEndBattle

DiglettCaveTrainerHeader4:
	dbEventFlagBit EVENT_9E4
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E4
	dw DiglettsCaveBeforeBattleText4 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText4 ; TextAfterBattle
	dw DiglettsCaveEndBattleText4 ; TextEndBattle
	dw DiglettsCaveEndBattleText4 ; TextEndBattle
	
DiglettCaveTrainerHeader5:
	dbEventFlagBit EVENT_9E5
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E5
	dw DiglettsCaveBeforeBattleText5 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText5 ; TextAfterBattle
	dw DiglettsCaveEndBattleText5 ; TextEndBattle
	dw DiglettsCaveEndBattleText5 ; TextEndBattle

DiglettCaveTrainerHeader6:
	dbEventFlagBit EVENT_9E6
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E6
	dw DiglettsCaveBeforeBattleText6 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText6 ; TextAfterBattle
	dw DiglettsCaveEndBattleText6 ; TextEndBattle
	dw DiglettsCaveEndBattleText6 ; TextEndBattle
	
DiglettCaveTrainerHeader7:
	dbEventFlagBit EVENT_9E7
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_9E7
	dw DiglettsCaveBeforeBattleText7 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText7 ; TextAfterBattle
	dw DiglettsCaveEndBattleText7 ; TextEndBattle
	dw DiglettsCaveEndBattleText7 ; TextEndBattle
	
	db $ff
	
DiglettsCaveText1:
	TX_ASM 
	ld hl, DiglettCaveTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd	
		
DiglettsCaveText2:
	TX_ASM
	ld hl, DiglettCaveTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd	
	
DiglettsCaveText3:
	TX_ASM
	ld hl, DiglettCaveTrainerHeader3	
	call TalkToTrainer
	jp TextScriptEnd	
	
DiglettsCaveText4:
	TX_ASM
	ld hl, DiglettCaveTrainerHeader4
	call TalkToTrainer	
	jp TextScriptEnd	

DiglettsCaveText5:
	TX_ASM
	ld hl, DiglettCaveTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd	

DiglettsCaveText6:
	TX_ASM
	ld hl, DiglettCaveTrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd	

DiglettsCaveText7:
	TX_ASM
	ld hl, DiglettCaveTrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd	


DiglettsCaveBeforeBattleText1:
	TX_FAR _DiglettsCaveBeforeBattleText1
	db "@"

DiglettsCaveEndBattleText1:
	TX_FAR _DiglettsCaveEndBattleText1
	db "@"

DiglettsCaveAfterBattleText1:
	TX_FAR _DiglettsCaveAfterBattleText1
	db "@"
	
DiglettsCaveBeforeBattleText2:
	TX_FAR _DiglettsCaveBeforeBattleText2
	db "@"

DiglettsCaveEndBattleText2:
	TX_FAR _DiglettsCaveEndBattleText2
	db "@"

DiglettsCaveAfterBattleText2:
	TX_FAR _DiglettsCaveAfterBattleText2
	db "@"
		
DiglettsCaveBeforeBattleText3:
	TX_FAR _DiglettsCaveBeforeBattleText3
	db "@"

DiglettsCaveEndBattleText3:
	TX_FAR _DiglettsCaveEndBattleText3
	db "@"

DiglettsCaveAfterBattleText3:
	TX_FAR _DiglettsCaveAfterBattleText3
	db "@"
	
DiglettsCaveBeforeBattleText4:
	TX_FAR _DiglettsCaveBeforeBattleText4
	db "@"

DiglettsCaveEndBattleText4:
	TX_FAR _DiglettsCaveEndBattleText4
	db "@"

DiglettsCaveAfterBattleText4:
	TX_FAR _DiglettsCaveAfterBattleText4
	db "@"
		
DiglettsCaveBeforeBattleText5:
	TX_FAR _DiglettsCaveBeforeBattleText5
	db "@"

DiglettsCaveEndBattleText5:
	TX_FAR _DiglettsCaveEndBattleText5
	db "@"

DiglettsCaveAfterBattleText5:
	TX_FAR _DiglettsCaveAfterBattleText5
	db "@"
	
DiglettsCaveBeforeBattleText6:
	TX_FAR _DiglettsCaveBeforeBattleText6
	db "@"

DiglettsCaveEndBattleText6:
	TX_FAR _DiglettsCaveEndBattleText6
	db "@"

DiglettsCaveAfterBattleText6:
	TX_FAR _DiglettsCaveAfterBattleText6
	db "@"
	
DiglettsCaveBeforeBattleText7:
	TX_FAR _DiglettsCaveBeforeBattleText7
	db "@"

DiglettsCaveEndBattleText7:
	TX_FAR _DiglettsCaveEndBattleText7
	db "@"

DiglettsCaveAfterBattleText7:
	TX_FAR _DiglettsCaveAfterBattleText7
	db "@"
	