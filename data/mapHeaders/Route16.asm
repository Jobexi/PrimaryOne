Route16_h:
	db OVERWORLD ; tileset
	db ROUTE_16_HEIGHT, ROUTE_16_WIDTH ; dimensions (y, x)
	dw Route16_Blocks ; blocks
	dw Route16_TextPointers ; texts
	dw Route16_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_16, X8, 0, 0, X8_Blocks
	SOUTH_MAP_CONNECTION ROUTE_16, ROUTE_17, 0, 0, Route17_Blocks
	WEST_MAP_CONNECTION ROUTE_16, ROUTE_2, -10, 0, Route2_Blocks
	EAST_MAP_CONNECTION ROUTE_16, CELADON_CITY, -3, 1, CeladonCity_Blocks, 1
	dw Route16_Object ; objects
