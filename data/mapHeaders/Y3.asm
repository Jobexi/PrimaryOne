Y3_h:
	db OVERWORLD ; tileset
	db Y3_HEIGHT, Y3_WIDTH ; dimensions (y, x)
	dw Y3_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw Y3_TextPointers ; texts
	dw Y3_Script ; scripts
	db NORTH | WEST | EAST ; connections
	NORTH_MAP_CONNECTION Y3, ROUTE_22, 0, 0, Route22_Blocks
	WEST_MAP_CONNECTION Y3, ROUTE_6, -1, 0, Route6_Blocks
	EAST_MAP_CONNECTION Y3, ROUTE_21, -10, 0, Route21_Blocks
	dw Y3_Object ; objects
