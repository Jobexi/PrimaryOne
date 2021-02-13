RocketHideoutB2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RocketHideout2TrainerHeader0
	ld de, RocketHideoutB2F_ScriptPointers
	ld a, [wRocketHideoutB2FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wRocketHideoutB2FCurScript], a
	ret

RocketHideoutB2F_ScriptPointers:
	dw RocketHideout2Script0
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw RocketHideout2Script3

RocketHideout2Script0:
	ld a, [wYCoord]
	ld b, a
	ld a, [wXCoord]
	ld c, a
	ld hl, RocketHideout2ArrowTilePlayerMovement
	call DecodeArrowMovementRLE
	cp $ff
	jp z, CheckFightingMapTrainers
	ld hl, wd736
	set 7, [hl]
	call StartSimulatingJoypadStates
	ld a, SFX_ARROW_TILES
	call PlaySound
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, $3
	ld [wCurMapScript], a
	ret

;format:
;db y,x
;dw pointer to movement
RocketHideout2ArrowTilePlayerMovement:
	db $9,$4
	dw RocketHideout2ArrowMovement1
	db $b,$4
	dw RocketHideout2ArrowMovement2
	db $f,$4
	dw RocketHideout2ArrowMovement3
	db $10,$4
	dw RocketHideout2ArrowMovement4
	db $13,$4
	dw RocketHideout2ArrowMovement1
	db $16,$4
	dw RocketHideout2ArrowMovement5
	db $e,$5
	dw RocketHideout2ArrowMovement6
	db $16,$6
	dw RocketHideout2ArrowMovement7
	db $18,$6
	dw RocketHideout2ArrowMovement8
	db $9,$8
	dw RocketHideout2ArrowMovement9
	db $c,$8
	dw RocketHideout2ArrowMovement10
	db $f,$8
	dw RocketHideout2ArrowMovement8
	db $13,$8
	dw RocketHideout2ArrowMovement9
	db $17,$8
	dw RocketHideout2ArrowMovement11
	db $e,$9
	dw RocketHideout2ArrowMovement12
	db $16,$9
	dw RocketHideout2ArrowMovement12
	db $9,$a
	dw RocketHideout2ArrowMovement13
	db $a,$a
	dw RocketHideout2ArrowMovement14
	db $f,$a
	dw RocketHideout2ArrowMovement15
	db $11,$a
	dw RocketHideout2ArrowMovement16
	db $13,$a
	dw RocketHideout2ArrowMovement17
	db $19,$a
	dw RocketHideout2ArrowMovement2
	db $e,$b
	dw RocketHideout2ArrowMovement18
	db $10,$b
	dw RocketHideout2ArrowMovement19
	db $12,$b
	dw RocketHideout2ArrowMovement12
	db $9,$c
	dw RocketHideout2ArrowMovement20
	db $b,$c
	dw RocketHideout2ArrowMovement21
	db $d,$c
	dw RocketHideout2ArrowMovement22
	db $11,$c
	dw RocketHideout2ArrowMovement23
	db $a,$d
	dw RocketHideout2ArrowMovement24
	db $c,$d
	dw RocketHideout2ArrowMovement25
	db $10,$d
	dw RocketHideout2ArrowMovement26
	db $12,$d
	dw RocketHideout2ArrowMovement27
	db $13,$d
	dw RocketHideout2ArrowMovement28
	db $16,$d
	dw RocketHideout2ArrowMovement29
	db $17,$d
	dw RocketHideout2ArrowMovement30
	db $11,$e
	dw RocketHideout2ArrowMovement31
	db $10,$f
	dw RocketHideout2ArrowMovement12
	db $e,$10
	dw RocketHideout2ArrowMovement32
	db $10,$10
	dw RocketHideout2ArrowMovement33
	db $12,$10
	dw RocketHideout2ArrowMovement34
	db $a,$11
	dw RocketHideout2ArrowMovement35
	db $b,$11
	dw RocketHideout2ArrowMovement36	
	db $1,$1 ; FIRST NEW COORDINATE
	dw RocketDown4
	db $1,$3
	dw RocketHideout2ArrowMovement1
	db $1,$6
	dw RocketLeft5
	db $1,$8
	dw RocketLeft7
	db $1,$9
	dw RocketHideout2ArrowMovement13
	db $1,$B
	dw RocketHideout2ArrowMovement20
	db $1,$C
	dw RocketLeft11
	db $1,$D
	dw RocketLeft12
	db $1,$11
	dw RocketLeft16
	db $1,$13
	dw RocketLeft18
	db $1,$14
	dw RocketLeft19
	db $1,$17
	dw RocketLeft22
	db $1,$18
	dw RocketLeft23
	db $1,$19
	dw RocketLeft24
	db $2,$2
	dw RocketRight4
	db $2,$4
	dw RocketHideout2ArrowMovement12
	db $2,$5
	dw RocketHideout2ArrowMovement1
	db $2,$7
	dw RocketHideout2ArrowMovement12
	db $2,$8
	dw RocketHideout2ArrowMovement10
	db $2,$A
	dw RocketRight7
	db $2,$C
	dw RocketLeft3
	db $2,$E
	dw RocketHideout2ArrowMovement12
	db $2,$F
	dw RocketHideout2ArrowMovement1
	db $2,$10
	dw RocketRight3
	db $2,$12
	dw RocketHideout2ArrowMovement12
	db $2,$15
	dw RocketLeft1
	db $2,$17
	dw RocketHideout2ArrowMovement10
	db $2,$18
	dw RocketHideout2ArrowMovement10
	db $2,$19
	dw RocketRight2
	db $3,$2
	dw RocketRight3
	db $3,$3
	dw RocketHideout2ArrowMovement7
	db $3,$4
	dw RocketLeft3
	db $3,$6
	dw RocketRight7
	db $3,$7
	dw RocketHideout2ArrowMovement1
	db $3,$9
	dw RocketLeft1
	db $3,$B
	dw RocketHideout2ArrowMovement7
	db $3,$D
	dw RocketLeft3
	db $3,$E
	dw RocketHideout2ArrowMovement10
	db $3,$10
	dw RocketRight2
	db $3,$12
	dw RocketLeft3
	db $3,$13
	dw RocketRight5
	db $3,$14
	dw RocketHideout2ArrowMovement12
	db $3,$15
	dw RocketHideout2ArrowMovement9	
	db $3,$16
	dw RocketLeft9
	db $3,$19
	dw RocketRight2
	db $4,$2
	dw RocketRight2
	db $4,$3
	dw RocketHideout2ArrowMovement33
	db $4,$5
	dw RocketRight16
	db $4,$6
	dw RocketHideout2ArrowMovement10
	db $4,$8
	dw RocketHideout2ArrowMovement33
	db $4,$A
	dw RocketHideout2ArrowMovement10
	db $4,$B
	dw RocketHideout2ArrowMovement7
	db $4,$C
	dw RocketHideout2ArrowMovement33
	db $4,$E
	dw RocketLeft1
	db $4,$F
	dw RocketRight2
	db $4,$10
	dw RocketDown1
	db $4,$11
	dw RocketRight2
	db $4,$13
	dw RocketHideout2ArrowMovement7
	db $4,$14
	dw RocketHideout2ArrowMovement20
	db $4,$16
	dw RocketHideout2ArrowMovement7
	db $4,$17
	dw RocketLeft5
	db $4,$18
	dw RocketDown1
	db $5,$2
	dw RocketRight1
	db $5,$4
	dw RocketRight1
	db $5,$6
	dw RocketRight2
	db $5,$7
	dw RocketLeft5
	db $5,$9
	dw RocketRight3
	db $5,$D
	dw RocketRight4
	db $5,$12
	dw RocketRight4
	db $5,$15
	dw RocketHideout2ArrowMovement34
	db $5,$17
	dw RocketHideout2ArrowMovement7
	db $5,$19
	dw RocketRight2
	db $FF

;format: direction, count
;each list is read starting from the $FF and working backwards
RocketHideout2ArrowMovement1:
	db D_LEFT,$02
	db $FF

RocketHideout2ArrowMovement2:
	db D_RIGHT,$04
	db $FF

RocketHideout2ArrowMovement3:
	db D_UP,$04
	db D_RIGHT,$04
	db $FF

RocketHideout2ArrowMovement4:
	db D_UP,$04
	db D_RIGHT,$04
	db D_UP,$01
	db $FF

RocketHideout2ArrowMovement5:
	db D_LEFT,$02
	db D_UP,$03
	db $FF

RocketHideout2ArrowMovement6:
	db D_DOWN,$02
	db D_RIGHT,$04
	db $FF

RocketHideout2ArrowMovement7:
	db D_UP,$02
	db $FF

RocketHideout2ArrowMovement8:
	db D_UP,$04
	db $FF

RocketHideout2ArrowMovement9:
	db D_LEFT,$06
	db $FF

RocketHideout2ArrowMovement10:
	db D_UP,$01
	db $FF

RocketHideout2ArrowMovement11:
	db D_LEFT,$06
	db D_UP,$04
	db $FF

RocketHideout2ArrowMovement12:
	db D_DOWN,$02
	db $FF

RocketHideout2ArrowMovement13:
	db D_LEFT,$08
	db $FF

RocketHideout2ArrowMovement14:
	db D_LEFT,$08
	db D_UP,$01
	db $FF

RocketHideout2ArrowMovement15:
	db D_LEFT,$08
	db D_UP,$06
	db $FF

RocketHideout2ArrowMovement16:
	db D_UP,$02
	db D_RIGHT,$04
	db $FF

RocketHideout2ArrowMovement17:
	db D_UP,$02
	db D_RIGHT,$04
	db D_UP,$02
	db $FF

RocketHideout2ArrowMovement18:
	db D_DOWN,$02
	db D_RIGHT,$04
	db D_DOWN,$02
	db $FF

RocketHideout2ArrowMovement19:
	db D_DOWN,$02
	db D_RIGHT,$04
	db $FF

RocketHideout2ArrowMovement20:
	db D_LEFT,$0A
	db $FF

RocketHideout2ArrowMovement21:
	db D_LEFT,$0A
	db D_UP,$02
	db $FF

RocketHideout2ArrowMovement22:
	db D_LEFT,$0A
	db D_UP,$04
	db $FF

RocketHideout2ArrowMovement23:
	db D_UP,$02
	db D_RIGHT,$02
	db $FF

RocketHideout2ArrowMovement24:
	db D_RIGHT,$01
	db D_DOWN,$02
	db $FF

RocketHideout2ArrowMovement25:
	db D_RIGHT,$01
	db $FF

RocketHideout2ArrowMovement26:
	db D_DOWN,$02
	db D_RIGHT,$02
	db $FF

RocketHideout2ArrowMovement27:
	db D_DOWN,$02
	db D_LEFT,$02
	db $FF

RocketHideout2ArrowMovement28:
	db D_UP,$02
	db D_RIGHT,$04
	db D_UP,$02
	db D_LEFT,$03
	db $FF

RocketHideout2ArrowMovement29:
	db D_DOWN,$02
	db D_LEFT,$04
	db $FF

RocketHideout2ArrowMovement30:
	db D_LEFT,$06
	db D_UP,$04
	db D_LEFT,$05
	db $FF

RocketHideout2ArrowMovement31:
	db D_UP,$02
	db $FF

RocketHideout2ArrowMovement32:
	db D_UP,$01
	db $FF

RocketHideout2ArrowMovement33:
	db D_UP,$03
	db $FF

RocketHideout2ArrowMovement34:
	db D_UP,$05
	db $FF

RocketHideout2ArrowMovement35:
	db D_RIGHT,$01
	db D_DOWN,$02
	db D_LEFT,$04
	db $FF

RocketHideout2ArrowMovement36:
	db D_LEFT,$0A
	db D_UP,$02
	db D_LEFT,$05
	db $FF

RocketDown1:
	db D_DOWN,$1
	db $FF	
	
RocketDown4:
	db D_DOWN,$4
	db $FF	

RocketLeft1:
	db D_LEFT,$1
	db $FF

RocketLeft3:
	db D_LEFT,$3
	db $FF

RocketLeft5:
	db D_LEFT,$5
	db $FF	

RocketLeft7:
	db D_LEFT,$7
	db $FF	

RocketLeft9:
	db D_LEFT,$9
	db $FF		

RocketLeft11:
	db D_LEFT,$B
	db $FF	

RocketLeft12:
	db D_LEFT,$C
	db $FF		

RocketLeft16:
	db D_LEFT,$10
	db $FF		
	
RocketLeft18:
	db D_LEFT,$12
	db $FF	

RocketLeft19:
	db D_LEFT,$13
	db $FF

RocketLeft22:
	db D_LEFT,$16
	db $FF	

RocketLeft23:
	db D_LEFT,$17
	db $FF	

RocketLeft24:
	db D_LEFT,$18
	db $FF	

RocketRight1:
	db D_RIGHT,$1
	db $FF	

RocketRight2:
	db D_RIGHT,$2
	db $FF	

RocketRight3:
	db D_RIGHT,$3
	db $FF	
	
RocketRight4:
	db D_RIGHT,$4
	db $FF		
	
RocketRight5:
	db D_RIGHT,$5
	db $FF	

RocketRight7:
	db D_RIGHT,$7
	db $FF		
	
RocketRight16:
	db D_RIGHT,$10
	db $FF		

RocketHideout2Script3:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	jr nz, LoadSpinnerArrowTiles
	xor a
	ld [wJoyIgnore], a
	ld hl, wd736
	res 7, [hl]
	ld a, $0
	ld [wCurMapScript], a
	ret

LoadSpinnerArrowTiles:
	ld a, [wSpriteStateData1 + 2]
	srl a
	srl a
	ld hl, SpinnerPlayerFacingDirections
	ld c, a
	ld b, $0
	add hl, bc
	ld a, [hl]
	ld [wSpriteStateData1 + 2], a
	ld a, [wCurMapTileset]
	cp FACILITY
	ld hl, FacilitySpinnerArrows
	jr z, .asm_44ff6
	ld hl, GymSpinnerArrows
.asm_44ff6
	ld a, [wSimulatedJoypadStatesIndex]
	bit 0, a
	jr nz, .asm_45001
	ld de, $18
	add hl, de
.asm_45001
	ld a, $4
	ld bc, $0
.asm_45006
	push af
	push hl
	push bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call CopyVideoData
	pop bc
	ld a, $6
	add c
	ld c, a
	pop hl
	pop af
	dec a
	jr nz, .asm_45006
	ret

spinner: MACRO
; \1: source
; \2: offset (BANK() chokes on literals)
; \3: length
; \4: dest
	dw \1 + \2
	db \3, BANK(\1)
	dw \4
ENDM

FacilitySpinnerArrows:
FACILITY_SPINNER EQU $20 * $10
vFacilitySpinner EQU vTileset + FACILITY_SPINNER

	spinner SpinnerArrowAnimTiles, $00, 1, vFacilitySpinner
	spinner SpinnerArrowAnimTiles, $10, 1, vFacilitySpinner + $10
	spinner SpinnerArrowAnimTiles, $20, 1, vFacilitySpinner + $100
	spinner SpinnerArrowAnimTiles, $30, 1, vFacilitySpinner + $110
	spinner Facility_GFX, FACILITY_SPINNER + $000, 1, vFacilitySpinner
	spinner Facility_GFX, FACILITY_SPINNER + $010, 1, vFacilitySpinner + $10
	spinner Facility_GFX, FACILITY_SPINNER + $100, 1, vFacilitySpinner + $100
	spinner Facility_GFX, FACILITY_SPINNER + $110, 1, vFacilitySpinner + $110

GymSpinnerArrows:
GYM_SPINNER EQU $3c * $10
vGymSpinner EQU vTileset + GYM_SPINNER

	spinner SpinnerArrowAnimTiles, $10, 1, vGymSpinner
	spinner SpinnerArrowAnimTiles, $30, 1, vGymSpinner + $10
	spinner SpinnerArrowAnimTiles, $00, 1, vGymSpinner + $100
	spinner SpinnerArrowAnimTiles, $20, 1, vGymSpinner + $110
	spinner Gym_GFX, GYM_SPINNER + $000, 1, vGymSpinner
	spinner Gym_GFX, GYM_SPINNER + $010, 1, vGymSpinner + $10
	spinner Gym_GFX, GYM_SPINNER + $100, 1, vGymSpinner + $100
	spinner Gym_GFX, GYM_SPINNER + $110, 1, vGymSpinner + $110

SpinnerPlayerFacingDirections:
; This isn't the order of the facing directions.  Rather, it's a list of
; the facing directions that come next. For example, when the player is
; facing down (00), the next facing direction is left (08).
	db $08 ; down -> left
	db $0C ; up -> right
	db $04 ; left -> up
	db $00 ; right -> down

; these tiles are the animation for the tiles that push the player in dungeons like Rocket HQ
SpinnerArrowAnimTiles:
	INCBIN "gfx/spinner_arrow.2bpp"

RocketHideoutB2F_TextPointers:
	dw RocketHideout2Text1
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw RocketBallText1

RocketHideout2TrainerHeader0:
	dbEventFlagBit EVENT_BEAT_ROCKET_HIDEOUT_2_TRAINER_0
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROCKET_HIDEOUT_2_TRAINER_0
	dw RocketHideout2BattleText2 ; TextBeforeBattle
	dw RocketHideout2AfterBattleTxt2 ; TextAfterBattle
	dw RocketHideout2EndBattleText2 ; TextEndBattle
	dw RocketHideout2EndBattleText2 ; TextEndBattle

	db $ff

RocketHideout2Text1:
	TX_ASM
	ld hl, RocketHideout2TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd
	
RocketBallText1:
	TX_ASM
	lb bc, ROCKET_BALL, 17
	call GiveItem
	ld hl, RocketBallText2
	call PrintText
	jp TextScriptEnd
	
RocketBallText2:
	TX_FAR _RocketBallText2
	db "@"

RocketHideout2BattleText2:
	TX_FAR _RocketHideout2BattleText2
	db "@"

RocketHideout2EndBattleText2:
	TX_FAR _RocketHideout2EndBattleText2
	db "@"

RocketHideout2AfterBattleTxt2:
	TX_FAR _RocketHideout2AfterBattleTxt2
	db "@"
