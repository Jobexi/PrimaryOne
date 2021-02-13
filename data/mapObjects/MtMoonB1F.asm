MtMoonB1F_Object:
	db $3 ; border block

	db 24 ; warps
	warp 19,  3, 2, MT_MOON_1F
	warp  9,  3, 0, MT_MOON_B2F
	warp  1,  3, 3, MT_MOON_1F
	warp 25, 25, 4, MT_MOON_1F
	warp  5, 21, 1, MT_MOON_B2F
	warp 17, 29, 2, MT_MOON_B2F
	warp 27, 13, 3, MT_MOON_B2F
	warp 27, 3, 2, -1
	warp 19,  9, 5, MT_MOON_1F
	warp  9,  9, 6, MT_MOON_1F
	warp 21,  5, 7, MT_MOON_1F
	warp 19,  7, 8, MT_MOON_1F
	warp 17,  5, 9, MT_MOON_1F
	warp 19,  5, 10, MT_MOON_1F
	warp  7,  5, 5, MT_MOON_1F
	warp 11,  5, 6, MT_MOON_1F
	warp  9,  5, 7, MT_MOON_1F
	warp 19, 11, 8, MT_MOON_1F
	warp  9,  7, 9, MT_MOON_1F
	warp  7,  9, 10, MT_MOON_1F
	warp 11,  9, 5, MT_MOON_1F
	warp 17,  9, 6, MT_MOON_1F
	warp 21,  9, 7, MT_MOON_1F
	warp  9, 11, 8, MT_MOON_1F

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 19,  3, MT_MOON_B1F_WIDTH ; MT_MOON_1F
	warp_to  9,  3, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to  1,  3, MT_MOON_B1F_WIDTH ; MT_MOON_1F
	warp_to 25, 25, MT_MOON_B1F_WIDTH ; MT_MOON_1F
	warp_to  5, 21, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 17, 29, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 27, 13, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 27,  3, MT_MOON_B1F_WIDTH
	warp_to 21, 13, MT_MOON_B1F_WIDTH
	warp_to  7, 13, MT_MOON_B1F_WIDTH
	warp_to 19, 13, MT_MOON_B1F_WIDTH
	warp_to 17, 13, MT_MOON_B1F_WIDTH
	warp_to  9, 13, MT_MOON_B1F_WIDTH
	warp_to 11, 13, MT_MOON_B1F_WIDTH
