Route1_h:
	db OVERWORLD ; tileset
	db ROUTE_1_HEIGHT, ROUTE_1_WIDTH ; dimensions (y, x)
	dw Route1_Blocks ; blocks
	dw Route1_TextPointers ; texts
	dw Route1_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_1, VIRIDIAN_CITY, -3, 2, ViridianCity_Blocks
	SOUTH_MAP_CONNECTION ROUTE_1, PALLET_TOWN, 0, 0, PalletTown_Blocks, 1
	WEST_MAP_CONNECTION ROUTE_1, ROUTE_5, -1, 0, Route5_Blocks, 1
	EAST_MAP_CONNECTION ROUTE_1, X3, 0, 0, X3_Blocks, 1
	dw Route1_Object ; objects
