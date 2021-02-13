FuchsiaCity_h:
	db OVERWORLD ; tileset
	db FUCHSIA_CITY_HEIGHT, FUCHSIA_CITY_WIDTH ; dimensions (y, x)
	dw FuchsiaCity_Blocks ; blocks
	dw FuchsiaCity_TextPointers ; texts
	dw FuchsiaCity_Script ; scripts
	db NORTH | SOUTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION FUCHSIA_CITY, Y1, 3, 0, Y1_Blocks
	SOUTH_MAP_CONNECTION FUCHSIA_CITY, ROUTE_19, 5, 0, Route19_Blocks
	WEST_MAP_CONNECTION FUCHSIA_CITY, ROUTE_18, 4, 0, Route18_Blocks
	EAST_MAP_CONNECTION FUCHSIA_CITY, ROUTE_15, 4, 0, Route15_Blocks
	dw FuchsiaCity_Object ; objects
