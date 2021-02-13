; calculates the level a mon should be based on its current exp
CalcLevelFromExperience:
	ld a, [wLoadedMonSpecies]
	ld [wd0b5], a
	call GetMonHeader
	ld d, $1 ; init level to 1
.loop
	inc d ; increment level
	call CalcExperience
	push hl
	ld hl, wLoadedMonExp + 2 ; current exp
; compare exp needed for level d with current exp
	ld a, [hExperience + 2]
	ld c, a
	ld a, [hld]
	sub c
	ld a, [hExperience + 1]
	ld c, a
	ld a, [hld]
	sbc c
	ld a, [hExperience]
	ld c, a
	ld a, [hl]
	sbc c
	pop hl
	jr nc, .loop ; if exp needed for level d is not greater than exp, try the next level
	dec d ; since the exp was too high on the last loop iteration, go back to the previous value and return
	ret

; calculates the amount of experience needed for level d
CalcExperience:
	ld a, [wMonHGrowthRate]
	add a
	add a
	ld c, a
	ld b, 0
	ld hl, GrowthRateTable
	add hl, bc
	call CalcDSquared
	ld a, d
	ld [H_MULTIPLIER], a
	call Multiply
	ld a, [hl]
	and $f0
	swap a
	ld [H_MULTIPLIER], a
	call Multiply
	ld a, [hli]
	and $f
	ld [H_DIVISOR], a
	ld b, $4
	call Divide
	ld a, [H_QUOTIENT + 1]
	push af
	ld a, [H_QUOTIENT + 2]
	push af
	ld a, [H_QUOTIENT + 3]
	push af
	call CalcDSquared
	ld a, [hl]
	and $7f
	ld [H_MULTIPLIER], a
	call Multiply
	ld a, [H_PRODUCT + 1]
	push af
	ld a, [H_PRODUCT + 2]
	push af
	ld a, [H_PRODUCT + 3]
	push af
	ld a, [hli]
	push af
	xor a
	ld [H_MULTIPLICAND], a
	ld [H_MULTIPLICAND + 1], a
	ld a, d
	ld [H_MULTIPLICAND + 2], a
	ld a, [hli]
	ld [H_MULTIPLIER], a
	call Multiply
	ld b, [hl]
	ld a, [H_PRODUCT + 3]
	sub b
	ld [H_PRODUCT + 3], a
	ld b, $0
	ld a, [H_PRODUCT + 2]
	sbc b
	ld [H_PRODUCT + 2], a
	ld a, [H_PRODUCT + 1]
	sbc b
	ld [H_PRODUCT + 1], a
; The difference of the linear term and the constant term consists of 3 bytes
; starting at H_PRODUCT + 1. Below, hExperience (an alias of that address) will
; be used instead for the further work of adding or subtracting the squared
; term and adding the cubed term.
	pop af
	and $80
	jr nz, .subtractSquaredTerm ; check sign
	pop bc
	ld a, [hExperience + 2]
	add b
	ld [hExperience + 2], a
	pop bc
	ld a, [hExperience + 1]
	adc b
	ld [hExperience + 1], a
	pop bc
	ld a, [hExperience]
	adc b
	ld [hExperience], a
	jr .addCubedTerm
.subtractSquaredTerm
	pop bc
	ld a, [hExperience + 2]
	sub b
	ld [hExperience + 2], a
	pop bc
	ld a, [hExperience + 1]
	sbc b
	ld [hExperience + 1], a
	pop bc
	ld a, [hExperience]
	sbc b
	ld [hExperience], a
.addCubedTerm
	pop bc
	ld a, [hExperience + 2]
	add b
	ld [hExperience + 2], a
	pop bc
	ld a, [hExperience + 1]
	adc b
	ld [hExperience + 1], a
	pop bc
	ld a, [hExperience]
	adc b
	ld [hExperience], a
	ret

; calculates d*d
CalcDSquared:
	xor a
	ld [H_MULTIPLICAND], a
	ld [H_MULTIPLICAND + 1], a
	ld a, d
	ld [H_MULTIPLICAND + 2], a
	ld [H_MULTIPLIER], a
	jp Multiply

; each entry has the following scheme:
; %AAAABBBB %SCCCCCCC %DDDDDDDD %EEEEEEEE
; resulting in
;  (a*n^3)/b + sign*c*n^2 + d*n - e
; where sign = -1 <=> S=1
;GrowthRateTable: ; original!
;	db $11,$00,$00,$00 ; (!) medium fast      n^3
;	db $34,$0A,$00,$1E ; (!) (unused?)    3/4 n^3 + 10 n^2         - 30
;	db $34,$14,$00,$46 ; (!) (unused?)    3/4 n^3 + 20 n^2         - 70
;	db $65,$8F,$64,$8C ; (X) medium slow: 6/5 n^3 - 15 n^2 + 100 n - 140
;	db $45,$00,$00,$00 ; (!) fast:        4/5 n^3
;	db $54,$00,$00,$00 ; (X) slow:        5/4 n^3

GrowthRateTable:
	db $34,$0C,$0C,$21 ; (!) 2 ; 3/4 n^3 + 12 n^2 +  12 n - 33	; 12471717
	db $34,$10,$D4,$21 ; (^) 5 ; 3/4 n^3 + 16 n^2 + 212 n - 33	; 12771717
	db $34,$11,$70,$21 ; (^) 6 ; 3/4 n^3 + 17 n^2 + 112 n - 33	; 12871717
	db $34,$0D,$A2,$21 ; (!) 3 ; 3/4 n^3 + 13 n^2 + 162 n - 33	; 12571717
	db $34,$0A,$70,$21 ; (!) 1 ; 3/4 n^3 + 10 n^2 + 112 n - 33	; 12371717
	db $34,$0F,$3E,$21 ; (!) 4 ; 3/4 n^3 + 15 n^2 +  62 n - 33	; 12671717

; E: 33
; D: X -> X - 100 (%LVL)
; C: X -> X + 1
; A/B: 3/4, --> 1/1, --> F/E
; EACH ITERATION SHOULD INCREASE THE TOTAL BY 100,000
; CURRENT VALUE: 12871717
