X8_h:
	db OVERWORLD ; tileset
	db X8_HEIGHT, X8_WIDTH ; dimensions (y, x)
	dw X8_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw X8_TextPointers ; texts
	dw X8_Script ; scripts
	db NORTH | SOUTH | EAST ; connections
	NORTH_MAP_CONNECTION X8, ROUTE_13, 0, 0, Route13_Blocks, 1
	SOUTH_MAP_CONNECTION X8, ROUTE_16, 0, 0, Route16_Blocks, 1
	EAST_MAP_CONNECTION X8, ROUTE_22, 0, 0, Route22_Blocks, 1
	dw X8_Object ; objects
