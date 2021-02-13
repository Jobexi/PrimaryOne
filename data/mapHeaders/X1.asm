X1_h:
	db OVERWORLD ; tileset
	db X1_HEIGHT, X1_WIDTH ; dimensions (y, x)
	dw X1_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw X1_TextPointers ; texts
	dw X1_Script ; scripts
	db NORTH | WEST ; connections
	NORTH_MAP_CONNECTION X1, CELADON_CITY, 0, 0, CeladonCity_Blocks
	WEST_MAP_CONNECTION X1, ROUTE_17, 0, 0, Route17_Blocks
	dw X1_Object ; objects
