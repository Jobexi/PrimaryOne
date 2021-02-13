X4_h:
	db OVERWORLD ; tileset
	db X4_HEIGHT, X4_WIDTH ; dimensions (y, x)
	dw X4_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw X4_TextPointers ; texts
	dw X4_Script ; scripts
	db NORTH | WEST ; connections
	NORTH_MAP_CONNECTION X4, ROUTE_15, 0, 0, Route15_Blocks
	WEST_MAP_CONNECTION X4, ROUTE_19, -4, 0, Route19_Blocks
	dw X4_Object ; objects
