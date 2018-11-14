/*
	Mod Support 40sw4rm XP1
	Authors: SeelingCat, ChimpanG
*/

-----------------------------------------------
-- 40sw4rm's Old World
-----------------------------------------------

CREATE TABLE IF NOT EXISTS TSL 
    (
    MapType		TEXT	DEFAULT NULL,
    Civ			TEXT	DEFAULT NULL,
    LeaderType	TEXT	DEFAULT NULL,
    X			INTEGER	DEFAULT	NULL,
    Y			INTEGER	DEFAULT NULL
    );

INSERT INTO TSL
		(MapType,		Civ,					LeaderType,					X,	Y	)
VALUES	('40sw4rmOW',	'CIVILIZATION_ANTIOCH',	'LEADER_MINOR_CIV_ANTIOCH', 54,	34	);
