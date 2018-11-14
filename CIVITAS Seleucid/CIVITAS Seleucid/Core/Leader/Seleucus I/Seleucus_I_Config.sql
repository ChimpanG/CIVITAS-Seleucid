/*
	Config
	Authors: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
SELECT	
		-- Civilization
		'CIVILIZATION_CVS_SELEUCID', -- CivilizationType
		'LOC_CIVILIZATION_CVS_SELEUCID_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SELEUCID_SELEUCUS_I', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SELEUCID_SELEUCUS_I', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_SELEUCUS_I', -- LeaderType
		'LOC_LEADER_CVS_SELEUCUS_I_NAME', -- LeaderName
		'ICON_LEADER_CVS_SELEUCUS_I', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_SELEUCUS_I_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_SELEUCUS_I_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_SELEUCUS_I' -- LeaderAbilityIcon

WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_SELEUCUS_I' AND Enabled = 1);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(CivilizationType, 				LeaderType, 				Type, 						Icon, 							Name, 								Description, 								SortIndex	)
SELECT	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'UNIT_CVS_SELEUCID_UU',		'ICON_UNIT_CVS_SELEUCID_UU',	'LOC_UNIT_CVS_SELEUCID_UU_NAME',	'LOC_UNIT_CVS_SELEUCID_UU_DESCRIPTION',		10			
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_SELEUCUS_I' AND Enabled = 1);

INSERT INTO PlayerItems
		(CivilizationType, 				LeaderType, 				Type, 							Icon, 								Name, 									Description, 									SortIndex	)
SELECT	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'DISTRICT_CVS_SELEUCID_UI',		'ICON_DISTRICT_CVS_SELEUCID_UI',	'LOC_DISTRICT_CVS_SELEUCID_UI_NAME',	'LOC_DISTRICT_CVS_SELEUCID_UI_DESCRIPTION',		20			
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_SELEUCUS_I' AND Enabled = 1);

INSERT INTO PlayerItems
		(CivilizationType, 				LeaderType, 				Type, 							Icon, 							Name, 								Description, 								SortIndex	)
SELECT	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'UNIT_CVS_SELEUCUS_I_UU',		'ICON_UNIT_CVS_SELEUCUS_I_UU',	'LOC_UNIT_CVS_SELEUCUS_I_UU_NAME',	'LOC_UNIT_CVS_SELEUCUS_I_UU_DESCRIPTION',	30
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_SELEUCUS_I' AND Enabled = 1);

-----------------------------------------------
-- Players (Rise and Fall)
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
SELECT
		-- Civilization
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_CVS_SELEUCID', -- CivilizationType
		'LOC_CIVILIZATION_CVS_SELEUCID_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SELEUCID_SELEUCUS_I', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SELEUCID_SELEUCUS_I', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_SELEUCUS_I', -- LeaderType
		'LOC_LEADER_CVS_SELEUCUS_I_NAME', -- LeaderName
		'ICON_LEADER_CVS_SELEUCUS_I', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_SELEUCUS_I_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_SELEUCUS_I_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_SELEUCUS_I' -- LeaderAbilityIcon
		
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_SELEUCUS_I' AND Enabled = 1);

-----------------------------------------------
-- PlayerItems (Rise and Fall)
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain,						CivilizationType, 				LeaderType, 				Type, 					Icon, 							Name, 								Description, 								SortIndex	)
SELECT	'Players:Expansion1_Players',	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'UNIT_CVS_SELEUCID_UU',	'ICON_UNIT_CVS_SELEUCID_UU',	'LOC_UNIT_CVS_SELEUCID_UU_NAME',	'LOC_UNIT_CVS_SELEUCID_UU_DESCRIPTION',		10			
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_SELEUCUS_I' AND Enabled = 1);

INSERT INTO PlayerItems
		(Domain,						CivilizationType, 				LeaderType, 				Type, 						Icon, 								Name, 									Description, 									SortIndex	)
SELECT	'Players:Expansion1_Players',	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'DISTRICT_CVS_SELEUCID_UI',	'ICON_DISTRICT_CVS_SELEUCID_UI',	'LOC_DISTRICT_CVS_SELEUCID_UI_NAME',	'LOC_DISTRICT_CVS_SELEUCID_UI_DESCRIPTION',		20			
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_SELEUCUS_I' AND Enabled = 1);

INSERT INTO PlayerItems
		(Domain,						CivilizationType, 				LeaderType, 				Type, 						Icon, 							Name, 								Description, 								SortIndex	)
SELECT	'Players:Expansion1_Players',	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'UNIT_CVS_SELEUCUS_I_UU',	'ICON_UNIT_CVS_SELEUCUS_I_UU',	'LOC_UNIT_CVS_SELEUCUS_I_UU_NAME',	'LOC_UNIT_CVS_SELEUCUS_I_UU_DESCRIPTION',	30			
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_SELEUCUS_I' AND Enabled = 1);