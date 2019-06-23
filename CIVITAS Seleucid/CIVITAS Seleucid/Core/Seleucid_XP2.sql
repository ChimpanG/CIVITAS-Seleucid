/*
	XP2
	Authors: ChimpanG
*/

-----------------------------------------------
-- NamedDeserts
-----------------------------------------------

REPLACE INTO NamedDeserts
		(NamedDesertType,				Name								)
VALUES	('NAMED_DESERT_DASHT_E_KAVIR',	'LOC_NAMED_DESERT_DASHT_E_KAVIR'	),
		('NAMED_DESERT_DASHT_E_LUT',	'LOC_NAMED_DESERT_DASHT_E_LUT'		),
		('NAMED_DESERT_MARANJAB',		'LOC_NAMED_DESERT_MARANJAB'			),
		('NAMED_DESERT_SYRIAN',			'LOC_NAMED_DESERT_SYRIAN'			);

-----------------------------------------------
-- NamedDesertCivilizations
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,				NamedDesertType					)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'NAMED_DESERT_DASHT_E_KAVIR'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_DESERT_DASHT_E_LUT'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_DESERT_MARANJAB'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_DESERT_SYRIAN'			);

-----------------------------------------------
-- NamedMountains
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,			Name							)
VALUES	('NAMED_MOUNTAIN_SULAIMAN',	'LOC_NAMED_MOUNTAIN_SULAIMAN'	);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,				NamedMountainType			)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_ALBORZ'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_ZAGROS'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_SULAIMAN'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_CAUCASUS'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_TAURUS'		);

-----------------------------------------------
-- NamedRivers
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,			Name							)
VALUES	('NAMED_RIVER_ARVAND_RUD',	'LOC_NAMED_RIVER_ARVAND_RUD'	),
		('NAMED_RIVER_OXUS',		'LOC_NAMED_RIVER_OXUS'			);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,				NamedRiverType				)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_ARVAND_RUD'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_KARUN'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_TIGRIS'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_EUPHRATES'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_OXUS'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_SYR_DARYA'		);