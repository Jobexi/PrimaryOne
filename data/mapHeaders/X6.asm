X6_h:
	db OVERWORLD ; tileset
	db X6_HEIGHT, X6_WIDTH ; dimensions (y, x)
	dw X6_Blocks ; blocks
	dw 0 ; delete this when text is implemented.
;	dw X6_TextPointers ; texts
	dw X6_Script ; scripts
	db 0 ; connections
	dw X6_Object ; objects
