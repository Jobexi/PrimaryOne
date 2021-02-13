VermilionCity_h:
	db OVERWORLD ; tileset
	db VERMILION_CITY_HEIGHT, VERMILION_CITY_WIDTH ; dimensions (y, x)
	dw VermilionCity_Blocks ; blocks
	dw VermilionCity_TextPointers ; texts
	dw VermilionCity_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION VERMILION_CITY, ROUTE_6, 5, 0, Route6_Blocks
	SOUTH_MAP_CONNECTION VERMILION_CITY, ROUTE_15, -1, 0, Route15_Blocks
	WEST_MAP_CONNECTION VERMILION_CITY, Y1, 1, 0, Y1_Blocks
	EAST_MAP_CONNECTION VERMILION_CITY, ROUTE_11, 2, 0, Route11_Blocks
	dw VermilionCity_Object ; objects
