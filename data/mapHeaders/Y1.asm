Y1_h:
	db OVERWORLD ; tileset
	db Y1_HEIGHT, Y1_WIDTH ; dimensions (y, x)
	dw Y1_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw Y1_TextPointers ; texts
	dw Y1_Script ; scripts
	db SOUTH | WEST | EAST ; connections
	SOUTH_MAP_CONNECTION Y1, FUCHSIA_CITY, -3, 0, FuchsiaCity_Blocks
	WEST_MAP_CONNECTION Y1, PALLET_TOWN, 0, 0, PalletTown_Blocks
	EAST_MAP_CONNECTION Y1, VERMILION_CITY, -1, 0, VermilionCity_Blocks
	dw Y1_Object ; objects
