Route11_h:
	db OVERWORLD ; tileset
	db ROUTE_11_HEIGHT, ROUTE_11_WIDTH ; dimensions (y, x)
	dw Route11_Blocks ; blocks
	dw Route11_TextPointers ; texts
	dw Route11_Script ; scripts
	db NORTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_11, ROUTE_8, -4, 0, Route8_Blocks
	WEST_MAP_CONNECTION ROUTE_11, VERMILION_CITY, -1, 1, VermilionCity_Blocks
	EAST_MAP_CONNECTION ROUTE_11, ROUTE_12, -1, 24, Route12_Blocks, 1
	dw Route11_Object ; objects
