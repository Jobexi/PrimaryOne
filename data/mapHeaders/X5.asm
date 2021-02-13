X5_h:
	db OVERWORLD ; tileset
	db X5_HEIGHT, X5_WIDTH ; dimensions (y, x)
	dw X5_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw X5_TextPointers ; texts
	dw X5_Script ; scripts
	db SOUTH | WEST | EAST ; connections
	SOUTH_MAP_CONNECTION X5, ROUTE_24, 1, 0, Route24_Blocks
	WEST_MAP_CONNECTION X5, LAVENDER_TOWN, -1, 0, LavenderTown_Blocks
	EAST_MAP_CONNECTION X5, CINNABAR_ISLAND, 0, 0, CinnabarIsland_Blocks
	dw X5_Object ; objects
