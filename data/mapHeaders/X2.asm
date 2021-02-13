X2_h:
	db OVERWORLD ; tileset
	db X2_HEIGHT, X2_WIDTH ; dimensions (y, x)
	dw X2_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw X2_TextPointers ; texts
	dw X2_Script ; scripts
	db NORTH | SOUTH | EAST; connections
	NORTH_MAP_CONNECTION X2, ROUTE_7, 2, 0, Route7_Blocks, 1
	SOUTH_MAP_CONNECTION X2, PEWTER_CITY, -1, 0, PewterCity_Blocks
	EAST_MAP_CONNECTION X2, ROUTE_6, 0, 0, Route6_Blocks, 1
	dw X2_Object ; objects	
	