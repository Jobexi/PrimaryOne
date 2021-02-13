IndigoPlateau_Object:
	db $e ; border block

	db 2 ; warps
	warp 13,  7, 0, INDIGO_PLATEAU_LOBBY
	warp 14,  7, 0, INDIGO_PLATEAU_LOBBY

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 13,  7, INDIGO_PLATEAU_WIDTH ; INDIGO_PLATEAU_LOBBY
	warp_to 14,  7, INDIGO_PLATEAU_WIDTH ; INDIGO_PLATEAU_LOBBY
