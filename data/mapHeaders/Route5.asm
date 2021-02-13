Route5_h:
	db OVERWORLD ; tileset
	db ROUTE_5_HEIGHT, ROUTE_5_WIDTH ; dimensions (y, x)
	dw Route5_Blocks ; blocks
	dw Route5_TextPointers ; texts
	dw Route5_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_5, CERULEAN_CITY, -3, 1, CeruleanCity_Blocks
	SOUTH_MAP_CONNECTION ROUTE_5, SAFFRON_CITY, -3, 2, SaffronCity_Blocks, 1
	WEST_MAP_CONNECTION ROUTE_5, ROUTE_3, -1, 0, Route3_Blocks, 1
	EAST_MAP_CONNECTION ROUTE_5, ROUTE_1, 1, 0, Route1_Blocks, 1
	dw Route5_Object ; objects
