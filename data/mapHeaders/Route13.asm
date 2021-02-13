Route13_h:
	db OVERWORLD ; tileset
	db ROUTE_13_HEIGHT, ROUTE_13_WIDTH ; dimensions (y, x)
	dw Route13_Blocks ; blocks
	dw Route13_TextPointers ; texts
	dw Route13_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_13, ROUTE_12, 20, 0, Route12_Blocks
	SOUTH_MAP_CONNECTION ROUTE_13, X8, 0, 0, X8_Blocks
	WEST_MAP_CONNECTION ROUTE_13, ROUTE_14, 0, 0, Route14_Blocks
	EAST_MAP_CONNECTION ROUTE_13, PALLET_TOWN, 0, 0, PalletTown_Blocks
	dw Route13_Object ; objects
