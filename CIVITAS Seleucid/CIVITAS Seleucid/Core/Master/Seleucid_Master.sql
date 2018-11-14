/*
	Master
	Authors: ChimpanG
*/

-----------------------------------------------
-- New Tables
-----------------------------------------------

CREATE TABLE IF NOT EXISTS CVS_UserSettings
	(
	CivilizationType		TEXT		NOT NULL,
	LeaderType				TEXT		DEFAULT NULL,
	Enabled					BOOLEAN		DEFAULT 1,

	PRIMARY KEY	(LeaderType)			
	);

-----------------------------------------------
-- CVS_UserSettings
-----------------------------------------------

INSERT INTO CVS_UserSettings
		(CivilizationType,				LeaderType,					Enabled	)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	1		),
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	1		);

-- Change the value in the Enabled column from 1 to 0 to disable the leader.
-- At least one leader must be enabled or your game will crash.