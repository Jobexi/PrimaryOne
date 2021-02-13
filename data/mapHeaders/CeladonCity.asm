CeladonCity_h:
	db OVERWORLD ; tileset
	db CELADON_CITY_HEIGHT, CELADON_CITY_WIDTH ; dimensions (y, x)
	dw CeladonCity_Blocks ; blocks
	dw CeladonCity_TextPointers ; texts
	dw CeladonCity_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION CELADON_CITY, Y4, 0, 0, Y4_Blocks
	SOUTH_MAP_CONNECTION CELADON_CITY, X1, 0, 0, X1_Blocks
	WEST_MAP_CONNECTION CELADON_CITY, ROUTE_16, 4, 0, Route16_Blocks
	EAST_MAP_CONNECTION CELADON_CITY, ROUTE_7, 1, 0, Route7_Blocks, 1
	dw CeladonCity_Object ; objects
