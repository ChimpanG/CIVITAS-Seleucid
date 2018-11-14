/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_SELEUCUS_I',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,					CapitalName					)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'LOC_CITY_NAME_SELEUKIA'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers	)
VALUES	('LEADER_CVS_SELEUCUS_I',	'LOC_LEADER_CVS_SELEUCUS_I_NAME',	'LEADER_DEFAULT', 	4			);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,				Quote											)
VALUES	('LEADER_CVS_SELEUCUS_I',	'LOC_PEDIA_LEADERS_PAGE_CVS_SELEUCUS_I_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_SELEUCUS_I',	'LEADER_CVS_SELEUCUS_I_NEUTRAL',	'LEADER_CVS_SELEUCUS_I_BACKGROUND',		0					);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	PlayerColors
		(Type,						Usage,		PrimaryColor,		 			SecondaryColor,						TextColor					)
VALUES	('LEADER_CVS_SELEUCUS_I',	'Unique',	'COLOR_CVS_SELEUCUS_I_PRIMARY',	'COLOR_CVS_SELEUCUS_I_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_SELEUCUS_I_PRIMARY',	'0,135,191,255'		),
		('COLOR_CVS_SELEUCUS_I_SECONDARY',	'255,246,235,255'	);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO	FavoredReligions
		(LeaderType,				ReligionType				)
VALUES	('LEADER_CVS_SELEUCUS_I',	'RELIGION_ZOROASTRIANISM'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_SELEUCID_IS_SELEUCID_I',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,						RequirementId							)
VALUES	('REQSET_CVS_SELEUCID_IS_SELEUCID',		'REQ_CVS_SELEUCID_LEADER_IS_SELEUCID_I'	),
		('REQSET_CVS_SELEUCID_IS_SELEUCID_I',	'REQ_CVS_SELEUCID_LEADER_IS_SELEUCID_I'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType								)
VALUES	('REQ_CVS_SELEUCID_LEADER_IS_SELEUCID_I',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value					)
VALUES	('REQ_CVS_SELEUCID_LEADER_IS_SELEUCID_I',	'LeaderType',	'LEADER_CVS_SELEUCID_I'	);