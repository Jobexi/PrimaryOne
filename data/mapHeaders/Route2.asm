Route2_h:
	db OVERWORLD ; tileset
	db ROUTE_2_HEIGHT, ROUTE_2_WIDTH ; dimensions (y, x)
	dw Route2_Blocks ; blocks
	dw Route2_TextPointers ; texts
	dw Route2_Script ; scripts
	db NORTH | SOUTH | EAST ; connections
	NORTH_MAP_CONNECTION ROUTE_2, PEWTER_CITY, -3, 2, PewterCity_Blocks
	SOUTH_MAP_CONNECTION ROUTE_2, VIRIDIAN_CITY, -3, 2, ViridianCity_Blocks, 1
	EAST_MAP_CONNECTION ROUTE_2, ROUTE_16, 10, 0, Route16_Blocks
	dw Route2_Object ; objects
