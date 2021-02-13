X6_Object:
	db $43 ; border block

	db 1 ; warps
	warp  4, 7, 5, DIGLETTS_CAVE_ROUTE_2

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to  4, 7, X6_WIDTH
