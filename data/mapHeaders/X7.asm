X7_h:
	db OVERWORLD ; tileset
	db X7_HEIGHT, X7_WIDTH ; dimensions (y, x)
	dw X7_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw X7_TextPointers ; texts
	dw X7_Script ; scripts
	db NORTH | SOUTH | WEST ; connections
	NORTH_MAP_CONNECTION X7, ROUTE_19, 0, 0, Route19_Blocks, 1
	SOUTH_MAP_CONNECTION X7, ROUTE_10, -1, 0, Route10_Blocks, 1
	WEST_MAP_CONNECTION X7, ROUTE_25, 0, 0, Route25_Blocks, 1
	dw X7_Object ; objects
