Route9_h:
	db OVERWORLD ; tileset
	db ROUTE_9_HEIGHT, ROUTE_9_WIDTH ; dimensions (y, x)
	dw Route9_Blocks ; blocks
	dw Route9_TextPointers ; texts
	dw Route9_Script ; scripts	
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_9, ROUTE_25, -7, 0, Route25_Blocks,
	SOUTH_MAP_CONNECTION ROUTE_9, ROUTE_8, -9, 0, Route8_Blocks,
	WEST_MAP_CONNECTION ROUTE_9, CERULEAN_CITY, -3, 1, CeruleanCity_Blocks
	EAST_MAP_CONNECTION ROUTE_9, ROUTE_10, 0, 0, Route10_Blocks, 1
	dw Route9_Object ; objects
