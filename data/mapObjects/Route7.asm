Route7_Object:
	db $f ; border block

	db 5 ; warps
	warp 28, 15, 2, ROUTE_7_GATE
	warp 28, 16, 3, ROUTE_7_GATE
	warp 21, 15, 0, ROUTE_7_GATE
	warp 21, 16, 1, ROUTE_7_GATE
	warp  5, 19, 0, UNDERGROUND_PATH_ROUTE_7

	db 1 ; signs
	sign  3, 19, 1 ; Route7Text1

	db 0 ; objects

	; warp-to
	warp_to 28, 15, ROUTE_7_WIDTH ; ROUTE_7_GATE
	warp_to 28, 16, ROUTE_7_WIDTH ; ROUTE_7_GATE
	warp_to 21, 15, ROUTE_7_WIDTH ; ROUTE_7_GATE
	warp_to 21, 16, ROUTE_7_WIDTH ; ROUTE_7_GATE
	warp_to  5, 19, ROUTE_7_WIDTH ; UNDERGROUND_PATH_ROUTE_7
