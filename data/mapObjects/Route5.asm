Route5_Object:
	db $a ; border block

	db 5 ; warps
	warp 12, 31, 3, ROUTE_5_GATE
	warp 11, 31, 2, ROUTE_5_GATE
	warp 12, 35, 0, ROUTE_5_GATE
	warp 19, 29, 0, UNDERGROUND_PATH_ROUTE_5
	warp 12, 23, 0, DAYCARE

	db 1 ; signs
	sign 19, 31, 1 ; Route5Text1

	db 0 ; objects

	; warp-to
	warp_to 12, 31, ROUTE_5_WIDTH ; ROUTE_5_GATE
	warp_to 11, 31, ROUTE_5_WIDTH ; ROUTE_5_GATE
	warp_to 12, 35, ROUTE_5_WIDTH ; ROUTE_5_GATE
	warp_to 19, 29, ROUTE_5_WIDTH ; UNDERGROUND_PATH_ROUTE_5
	warp_to 12, 23, ROUTE_5_WIDTH ; DAYCARE
