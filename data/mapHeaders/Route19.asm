Route19_h:
	db OVERWORLD ; tileset
	db ROUTE_19_HEIGHT, ROUTE_19_WIDTH ; dimensions (y, x)
	dw Route19_Blocks ; blocks
	dw Route19_TextPointers ; texts
	dw Route19_Script ; scripts
	db NORTH | SOUTH | WEST | EAST; connections
	NORTH_MAP_CONNECTION ROUTE_19, FUCHSIA_CITY, -3, 2, FuchsiaCity_Blocks
	SOUTH_MAP_CONNECTION ROUTE_19, X7, 0, 0, X7_Blocks
	WEST_MAP_CONNECTION ROUTE_19, ROUTE_20, 18, 0, Route20_Blocks
	EAST_MAP_CONNECTION ROUTE_19, X4, 4, 0, X4_Blocks
	dw Route19_Object ; objects
