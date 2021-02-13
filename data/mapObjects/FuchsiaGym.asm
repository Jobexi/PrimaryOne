FuchsiaGym_Object:
	db $3 ; border block

	db 2 ; warps
	warp  8, 17, 5, -1
	warp  9, 17, 5, -1

	db 0 ; signs

	db 8 ; objects
	object SPRITE_BLACKBELT,  9,  2, STAY, DOWN, 1, OPP_KOGA, 1
	object SPRITE_ROCKER, 17,  3, STAY, LEFT, 2, OPP_JUGGLER, 7
	object SPRITE_ROCKER,  6,  5, STAY, RIGHT, 3, OPP_JUGGLER, 3
	object SPRITE_ROCKER,  0,  3, STAY, RIGHT, 4, OPP_JUGGLER, 8
	object SPRITE_ROCKER,  5,  8, STAY, LEFT, 5, OPP_TAMER, 1
	object SPRITE_ROCKER, 11,  5, STAY, LEFT, 6, OPP_TAMER, 2
	object SPRITE_ROCKER, 12,  8, STAY, RIGHT, 7, OPP_JUGGLER, 4
	object SPRITE_GYM_HELPER, 11, 15, STAY, DOWN, 8 ; person

	; warp-to
	warp_to  8, 17, FUCHSIA_GYM_WIDTH
	warp_to  9, 17, FUCHSIA_GYM_WIDTH
