Route15_h:
	db OVERWORLD ; tileset
	db ROUTE_15_HEIGHT, ROUTE_15_WIDTH ; dimensions (y, x)
	dw Route15_Blocks ; blocks
	dw Route15_TextPointers ; texts
	dw Route15_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_15, VERMILION_CITY, 1, 0, VermilionCity_Blocks
	SOUTH_MAP_CONNECTION ROUTE_15, X4, 0, 0, X4_Blocks
	WEST_MAP_CONNECTION ROUTE_15, FUCHSIA_CITY, -3, 1, FuchsiaCity_Blocks
	EAST_MAP_CONNECTION ROUTE_15, ROUTE_14, -3, 15, Route14_Blocks
	dw Route15_Object ; objects
