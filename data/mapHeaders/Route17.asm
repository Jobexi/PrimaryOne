Route17_h:
	db OVERWORLD ; tileset
	db ROUTE_17_HEIGHT, ROUTE_17_WIDTH ; dimensions (y, x)
	dw Route17_Blocks ; blocks
	dw Route17_TextPointers ; texts
	dw Route17_Script ; scripts
	db NORTH | SOUTH | WEST | EAST; connections
	NORTH_MAP_CONNECTION ROUTE_17, ROUTE_16, 0, 0, Route16_Blocks
	SOUTH_MAP_CONNECTION ROUTE_17, ROUTE_18, 0, 0, Route18_Blocks, 1
	WEST_MAP_CONNECTION ROUTE_17, VIRIDIAN_CITY, 0, 0, ViridianCity_Blocks
	EAST_MAP_CONNECTION ROUTE_17, X1, 0, 0, X1_Blocks
	dw Route17_Object ; objects
