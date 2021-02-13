Route7_h:
	db OVERWORLD ; tileset
	db ROUTE_7_HEIGHT, ROUTE_7_WIDTH ; dimensions (y, x)
	dw Route7_Blocks ; blocks
	dw Route7_TextPointers ; texts
	dw Route7_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_7, ROUTE_3, -16, 0, Route3_Blocks
	SOUTH_MAP_CONNECTION ROUTE_7, X2, -2, 0, X2_Blocks, 1
	WEST_MAP_CONNECTION ROUTE_7, CELADON_CITY, 0, 1, CeladonCity_Blocks
	EAST_MAP_CONNECTION ROUTE_7, SAFFRON_CITY, 0, 1, SaffronCity_Blocks, 1
	dw Route7_Object ; objects
