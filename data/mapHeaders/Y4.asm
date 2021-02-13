Y4_h:
	db OVERWORLD ; tileset
	db Y4_HEIGHT, Y4_WIDTH ; dimensions (y, x)
	dw Y4_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw Y4_TextPointers ; texts
	dw Y4_Script ; scripts
	db NORTH | SOUTH ; connections
	NORTH_MAP_CONNECTION Y4, ROUTE_14, 0, 0, Route14_Blocks
	SOUTH_MAP_CONNECTION Y4, CELADON_CITY, 0, 0, CeladonCity_Blocks
	dw Y4_Object ; objects
