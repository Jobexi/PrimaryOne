PalletTown_h:
	db OVERWORLD ; tileset
	db PALLET_TOWN_HEIGHT, PALLET_TOWN_WIDTH ; dimensions (y, x)
	dw PalletTown_Blocks ; blocks
	dw PalletTown_TextPointers ; texts
	dw PalletTown_Script ; scripts
	db NORTH | SOUTH | WEST | EAST; connections
	NORTH_MAP_CONNECTION PALLET_TOWN, ROUTE_1, 0, 0, Route1_Blocks
	SOUTH_MAP_CONNECTION PALLET_TOWN, ROUTE_21, 0, 0, Route21_Blocks, 1
	WEST_MAP_CONNECTION PALLET_TOWN, ROUTE_13, 0, 0, Route13_Blocks
	EAST_MAP_CONNECTION PALLET_TOWN, Y1, 0, 0, Y1_Blocks
	dw PalletTown_Object ; objects
