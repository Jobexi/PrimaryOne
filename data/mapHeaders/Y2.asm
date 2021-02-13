Y2_h:
	db OVERWORLD ; tileset
	db Y2_HEIGHT, Y2_WIDTH ; dimensions (y, x)
	dw Y2_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw Y2_TextPointers ; texts
	dw Y2_Script ; scripts
	db NORTH | SOUTH | EAST ; connections
	NORTH_MAP_CONNECTION Y2, CINNABAR_ISLAND, 0, 0, CinnabarIsland_Blocks
	SOUTH_MAP_CONNECTION Y2, ROUTE_4, 0, -4, Route4_Blocks
	EAST_MAP_CONNECTION Y2, ROUTE_24, -6, 0, Route24_Blocks
	dw Y2_Object ; objects
