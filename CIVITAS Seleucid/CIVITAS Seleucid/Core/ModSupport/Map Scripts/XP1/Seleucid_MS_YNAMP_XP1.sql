/*
	Mod Support YNAMP XP1
	Authors: ChimpanG
*/

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,				Leader,						MapName,			X,		Y	)
VALUES	-- CITY-STATE (HORMUZ)
		('CIVILIZATION_ANTIOCH',	'LEADER_MINOR_CIV_ANTIOCH',	'GiantEarth',		45,		46	),
		('CIVILIZATION_ANTIOCH',	'LEADER_MINOR_CIV_ANTIOCH',	'GreatestEarthMap',	70,		38	), 
		('CIVILIZATION_ANTIOCH',	'LEADER_MINOR_CIV_ANTIOCH',	'CordiformEarth',	54,		20	);