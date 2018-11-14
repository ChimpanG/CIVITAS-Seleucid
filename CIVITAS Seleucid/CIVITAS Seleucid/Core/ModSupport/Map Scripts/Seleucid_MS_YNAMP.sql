/*
	Mod Support YNAMP
	Authors: SeelingCat
*/

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,						MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'GiantEarth',		39,		53	),
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'GreatestEarthMap',	65,		40	), 
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'PlayEuropeAgain',	96,		19	), 
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'CordiformEarth',	50,		22	),

		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'GiantEarth',		46,		53	),
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'GreatestEarthMap',	63,		41	), 
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'PlayEuropeAgain',	82,		20	), 
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'CordiformEarth',	47,		21	);
