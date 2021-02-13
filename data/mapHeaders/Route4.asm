Route4_h:
	db OVERWORLD ; tileset
	db ROUTE_4_HEIGHT, ROUTE_4_WIDTH ; dimensions (y, x)
	dw Route4_Blocks ; blocks
	dw Route4_TextPointers ; texts
	dw Route4_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_4, Y2, -0, 4, Y2_Blocks
	SOUTH_MAP_CONNECTION ROUTE_4, ROUTE_3, -3, 22, Route3_Blocks
	WEST_MAP_CONNECTION ROUTE_4, ROUTE_10, -10, 9, Route10_Blocks, 1
	EAST_MAP_CONNECTION ROUTE_4, CERULEAN_CITY, -3, 1, CeruleanCity_Blocks, 1
	dw Route4_Object ; objects
