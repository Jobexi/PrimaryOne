X3_h:
	db OVERWORLD ; tileset
	db X3_HEIGHT, X3_WIDTH ; dimensions (y, x)
	dw X3_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw X3_TextPointers ; texts
	dw X3_Script ; scripts
	db SOUTH | WEST ; connections
	SOUTH_MAP_CONNECTION X3, ROUTE_25, -10, 0, Route25_Blocks, 1
	WEST_MAP_CONNECTION X3, ROUTE_1, 0, 0, Route1_Blocks, 1
	dw X3_Object ; objects
