Route10_h:
	db OVERWORLD ; tileset
	db ROUTE_10_HEIGHT, ROUTE_10_WIDTH ; dimensions (y, x)
	dw Route10_Blocks ; blocks
	dw Route10_TextPointers ; texts
	dw Route10_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_10, X7, 1, 0, X7_Blocks
	SOUTH_MAP_CONNECTION ROUTE_10, LAVENDER_TOWN, 0, 0, LavenderTown_Blocks
	WEST_MAP_CONNECTION ROUTE_10, ROUTE_9, 0, 0, Route9_Blocks
	EAST_MAP_CONNECTION ROUTE_10, ROUTE_4, 19, 0, Route4_Blocks
	dw Route10_Object ; objects
