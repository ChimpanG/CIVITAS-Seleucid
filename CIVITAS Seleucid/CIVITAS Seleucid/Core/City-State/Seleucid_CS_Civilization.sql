/*
	Civilization
	Authors: ChimpanG
*/

-----------------------------------------------
-- Civilizations
-----------------------------------------------

UPDATE Civilizations
SET		Name = 'LOC_CIVILIZATION_CVS_SELEUCID_CS_NAME',
		Description = 'LOC_CIVILIZATION_CVS_SELEUCID_CS_DESCRIPTION',
		Adjective = 'LOC_CIVILIZATION_CVS_SELEUCID_CS_ADJECTIVE'
WHERE	CivilizationType = 'CIVILIZATION_ANTIOCH';

-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

UPDATE	CivilizationLeaders
SET		CapitalName = 'LOC_CITY_NAME_HORMUZ'
WHERE	CivilizationType = 'CIVILIZATION_ANTIOCH';

-----------------------------------------------
-- CityNames
-----------------------------------------------

UPDATE	CityNames
SET		CityName = 'LOC_CITY_NAME_HORMUZ'
WHERE	CivilizationType = 'CIVILIZATION_ANTIOCH';

-----------------------------------------------
-- Leaders
-----------------------------------------------

UPDATE	Leaders
SET		Name = 'LOC_CIVILIZATION_CVS_SELEUCID_CS_NAME'
WHERE	LeaderType = 'LEADER_MINOR_CIV_ANTIOCH';

-----------------------------------------------
-- Traits
-----------------------------------------------

UPDATE	Traits
SET		Name = 'LOC_LEADER_CVS_SELEUCID_CS_UA_NAME'
WHERE	TraitType = 'MINOR_CIV_ANTIOCH_TRAIT';