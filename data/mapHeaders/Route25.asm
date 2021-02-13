Route25_h:
	db OVERWORLD ; tileset
	db ROUTE_25_HEIGHT, ROUTE_25_WIDTH ; dimensions (y, x)
	dw Route25_Blocks ; blocks
	dw Route25_TextPointers ; texts
	dw Route25_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_25, X3, 10, 0, X3_Blocks
	SOUTH_MAP_CONNECTION ROUTE_25, ROUTE_9, 7, 0, Route9_Blocks, 1
	WEST_MAP_CONNECTION ROUTE_25, ROUTE_24, 0, 0, Route24_Blocks
	EAST_MAP_CONNECTION ROUTE_25, X7, 0, 0, X7_Blocks
	dw Route25_Object ; objects
