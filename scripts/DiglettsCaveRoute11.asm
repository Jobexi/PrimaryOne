DiglettsCaveRoute11_Script:
	ld a, ROUTE_11
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

DiglettsCaveRoute11_TextPointers:
	dw DiglettsCaveEntranceRoute11Text1

DiglettsCaveEntranceRoute11Text1:
	TX_FAR _DiglettsCaveEntRoute11Text1
	db "@"
