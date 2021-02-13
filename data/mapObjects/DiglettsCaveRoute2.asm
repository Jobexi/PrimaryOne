DiglettsCaveRoute2_Object:
	db $7d ; border block

	db 7 ; warps
	warp 2, 7, 0, -1
	warp 3, 7, 0, -1
	warp 4, 4, 0, DIGLETTS_CAVE
	warp 13,  3, 4, ROUTE_12
	warp 13,  5, 2, ROUTE_20
	warp 12,  7, 0, X6
	warp 13,  7, 0, X6

	db 0 ; signs

	db 1 ; objects
	object SPRITE_FISHER, 3, 3, STAY, NONE, 1 ; person

	; warp-to
	warp_to 2, 7, DIGLETTS_CAVE_ROUTE_2_WIDTH
	warp_to 3, 7, DIGLETTS_CAVE_ROUTE_2_WIDTH
	warp_to 4, 4, DIGLETTS_CAVE_ROUTE_2_WIDTH ; DIGLETTS_CAVE
	warp_to 13,  3, DIGLETTS_CAVE_ROUTE_2_WIDTH ; DIGLETTS_CAVE
	warp_to 13,  5, DIGLETTS_CAVE_ROUTE_2_WIDTH ; DIGLETTS_CAVE
	warp_to 13,  7, DIGLETTS_CAVE_ROUTE_2_WIDTH ; DIGLETTS_CAVE
