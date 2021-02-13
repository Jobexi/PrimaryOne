; super rod data
; format: map, pointer to fishing group
SuperRodData:
	dbw PALLET_TOWN, FishingGroup1
	dbw VIRIDIAN_CITY, FishingGroup1
	dbw CERULEAN_CITY, FishingGroup3
	dbw VERMILION_CITY, FishingGroup4
	dbw CELADON_CITY, FishingGroup5
	dbw FUCHSIA_CITY, FishingGroup10
	dbw CINNABAR_ISLAND, FishingGroup8
	dbw ROUTE_4, FishingGroup3
	dbw ROUTE_6, FishingGroup4
	dbw ROUTE_10, FishingGroup5
	dbw ROUTE_11, FishingGroup4
	dbw ROUTE_12, FishingGroup7
	dbw ROUTE_13, FishingGroup7
	dbw ROUTE_17, FishingGroup7
	dbw ROUTE_18, FishingGroup7
	dbw ROUTE_19, FishingGroup8
	dbw ROUTE_20, FishingGroup8
	dbw ROUTE_21, FishingGroup8
	dbw ROUTE_22, FishingGroup2
	dbw ROUTE_23, FishingGroup9
	dbw ROUTE_24, FishingGroup3
	dbw ROUTE_25, FishingGroup3
	dbw CERULEAN_GYM, FishingGroup3
	dbw VERMILION_DOCK, FishingGroup4
	dbw SEAFOAM_ISLANDS_B3F, FishingGroup8
	dbw SEAFOAM_ISLANDS_B4F, FishingGroup8
	dbw SAFARI_ZONE_EAST, FishingGroup6
	dbw SAFARI_ZONE_NORTH, FishingGroup6
	dbw SAFARI_ZONE_WEST, FishingGroup6
	dbw SAFARI_ZONE_CENTER, FishingGroup6
	dbw CERULEAN_CAVE_2F, FishingGroup9
	dbw CERULEAN_CAVE_B1F, FishingGroup9
	dbw CERULEAN_CAVE_1F, FishingGroup9
	db $FF

; fishing groups
; number of monsters, followed by level/monster pairs
FishingGroup1:
	db 7
	db 30,SQUIRTLE
	db 40,GOLDUCK
	db 50,TENTACOOL
	db 60,POLIWAG
	db 70,SLOWBRO
	db 80,KINGLER
	db 90,BLASTOISE	

FishingGroup2:
	db 7
	db 30,WARTORTLE
	db 40,TENTACRUEL
	db 50,GOLDEEN
	db 60,POLIWAG
	db 70,CLOYSTER
	db 80,DEWGONG
	db 90,POLIWRATH

FishingGroup3:
	db 7
	db 30,STARMIE
	db 40,PSYDUCK
	db 50,GOLDEEN
	db 60,KRABBY
	db 70,VAPOREON
	db 80,LAPRAS
	db 90,GYARADOS

FishingGroup4:
	db 7
	db 30,SQUIRTLE
	db 40,GOLDUCK
	db 50,KRABBY
	db 60,SHELLDER
	db 70,WARTORTLE
	db 80,POLIWHIRL
	db 90,BLASTOISE	

FishingGroup5:
	db 7
	db 30,SEEL
	db 40,SHELLDER
	db 50,SLOWPOKE
	db 60,KINGLER
	db 70,POLIWHIRL
	db 80,SEAKING
	db 90,POLIWRATH

FishingGroup6:
	db 7
	db 30,DRATINI
	db 40,SEEL
	db 50,KRABBY
	db 60,PSYDUCK
	db 70,SLOWPOKE
	db 80,SEADRA
	db 90,GYARADOS

FishingGroup7:
	db 7
	db 30,MAGIKARP
	db 40,STARYU
	db 50,KRABBY
	db 60,GOLDEEN
	db 70,TENTACOOL
	db 80,HORSEA
	db 90,POLIWRATH	

FishingGroup8:
	db 7
	db 30,GOLDUCK
	db 40,SLOWBRO
	db 50,STARYU
	db 60,HORSEA
	db 70,SHELLDER
	db 80,GOLDEEN
	db 90,GYARADOS

FishingGroup9:
	db 7
	db 30,WARTORTLE
	db 40,SLOWBRO
	db 50,SEAKING
	db 60,POLIWHIRL
	db 70,KINGLER
	db 80,SEADRA
	db 90,BLASTOISE	

FishingGroup10:
	db 7
	db 30,SEAKING
	db 40,POLIWHIRL
	db 50,KRABBY
	db 60,POLIWHIRL
	db 70,GOLDEEN
	db 80,MAGIKARP
	db 90,POLIWRATH
