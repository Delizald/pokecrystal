CharcoalKiln_MapScriptHeader: ; 0x18dd18
	; trigger count
	db 0

	; callback count
	db 0
; 0x18dd1a

BlackBeltScript_0x18dd1a: ; 0x18dd1a
	faceplayer
	loadfont
	checkevent EVENT_GOT_HM01_CUT
	iftrue UnknownScript_0x18dd34
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue UnknownScript_0x18dd2e
	writetext UnknownText_0x18dd74
	closetext
	loadmovesprites
	end
; 0x18dd2e

UnknownScript_0x18dd2e: ; 0x18dd2e
	writetext UnknownText_0x18ddfd
	closetext
	loadmovesprites
	end
; 0x18dd34

UnknownScript_0x18dd34: ; 0x18dd34
	writetext UnknownText_0x18de73
	closetext
	loadmovesprites
	end
; 0x18dd3a

YoungsterScript_0x18dd3a: ; 0x18dd3a
	faceplayer
	loadfont
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue UnknownScript_0x18dd5d
	checkevent EVENT_GOT_HM01_CUT
	iftrue UnknownScript_0x18dd4e
	writetext UnknownText_0x18dee0
	closetext
	loadmovesprites
	end
; 0x18dd4e

UnknownScript_0x18dd4e: ; 0x18dd4e
	writetext UnknownText_0x18df25
	keeptextopen
	verbosegiveitem CHARCOAL, 1
	iffalse UnknownScript_0x18dd61
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	loadmovesprites
	end
; 0x18dd5d

UnknownScript_0x18dd5d: ; 0x18dd5d
	writetext UnknownText_0x18df93
	closetext
UnknownScript_0x18dd61: ; 0x18dd61
	loadmovesprites
	end
; 0x18dd63

MoltresScript_0x18dd63: ; 0x18dd63
	faceplayer
	loadfont
	writetext UnknownText_0x18dfe5
	cry FARFETCH_D
	closetext
	loadmovesprites
	end
; 0x18dd6e

MapCharcoalKilnSignpost1Script: ; 0x18dd6e
	jumpstd $0003
; 0x18dd71

MapCharcoalKilnSignpost2Script: ; 0x18dd71
	jumpstd $000c
; 0x18dd74

UnknownText_0x18dd74: ; 0x18dd74
	text "All the SLOWPOKE"
	line "have disappeared"
	cont "from the town."

	para "The forest's pro-"
	line "tector may be"
	cont "angry with us…"

	para "It may be a bad"
	line "omen. We should"
	cont "stay in."
	done
; 0x18ddfd

UnknownText_0x18ddfd: ; 0x18ddfd
	text "The SLOWPOKE have"
	line "returned…"

	para "But my APPRENTICE"
	line "hasn't come back"
	cont "from ILEX FOREST."

	para "Where in the world"
	line "is that lazy guy?"
	done
; 0x18de73

UnknownText_0x18de73: ; 0x18de73
	text "You chased off"
	line "TEAM ROCKET and"

	para "went to ILEX"
	line "FOREST alone?"

	para "That takes guts!"
	line "I like that. Come"
	cont "train with us."
	done
; 0x18dee0

UnknownText_0x18dee0: ; 0x18dee0
	text "Where have all the"
	line "SLOWPOKE gone?"

	para "Are they out play-"
	line "ing somewhere?"
	done
; 0x18df25

UnknownText_0x18df25: ; 0x18df25
	text "I'm sorry--I for-"
	line "got to thank you."

	para "This is CHARCOAL"
	line "that I made."

	para "Fire-type #MON"
	line "would be happy to"
	cont "hold that."
	done
; 0x18df93

UnknownText_0x18df93: ; 0x18df93
	text "The SLOWPOKE came"
	line "back, and you even"
	cont "found FARFETCH'D."

	para "You're the cool-"
	line "est, man!"
	done
; 0x18dfe5

UnknownText_0x18dfe5: ; 0x18dfe5
	text "FARFETCH'D: Kwaa!"
	done
; 0x18dff8

CharcoalKiln_MapEventHeader: ; 0x18dff8
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $7, $3, 2, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 0, $0, MapCharcoalKilnSignpost1Script
	signpost 1, 1, $0, MapCharcoalKilnSignpost1Script
	signpost 1, 7, $0, MapCharcoalKilnSignpost2Script

	; people-events
	db 3
	person_event SPRITE_BLACK_BELT, 7, 6, $3, $0, 255, 255, $0, 0, BlackBeltScript_0x18dd1a, $06f7
	person_event SPRITE_YOUNGSTER, 7, 9, $2, $11, 255, 255, $0, 0, YoungsterScript_0x18dd3a, $06f6
	person_event SPRITE_MOLTRES, 10, 9, $16, $22, 255, 255, $b0, 0, MoltresScript_0x18dd63, $06f5
; 0x18e03e

