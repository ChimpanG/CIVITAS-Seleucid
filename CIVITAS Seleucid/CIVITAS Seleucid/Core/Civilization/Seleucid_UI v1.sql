/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,											Kind				)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI',	'KIND_TRAIT'		),
		('DISTRICT_CVS_SELEUCID_UI',					'KIND_DISTRICT'		),
		('MODTYPE_CVS_SELEUCID_UI_DISTRICTS_YIELD',		'KIND_MODIFIER'		),
		('MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD',			'KIND_MODIFIER'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name								)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI',	'LOC_DISTRICT_CVS_SELEUCID_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,										CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI',	'CIVILIZATION_CVS_SELEUCID'	);

-----------------------------------------------
-- Districts
-----------------------------------------------

INSERT INTO Districts	(
		DistrictType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		Cost,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		Appeal,
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
		)
SELECT	'DISTRICT_CVS_SELEUCID_UI', -- DistrictType
		'LOC_DISTRICT_CVS_SELEUCID_UI_NAME', -- Name
		'LOC_DISTRICT_CVS_SELEUCID_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI', -- TraitType
		PrereqTech,
		Cost,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		Appeal,
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		CitizenSlots,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
FROM	Districts
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

-----------------------------------------------
-- DistrictReplaces
-----------------------------------------------

INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,			ReplacesDistrictType		)
VALUES	('DISTRICT_CVS_SELEUCID_UI',	'DISTRICT_COMMERCIAL_HUB'	);

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT INTO District_TradeRouteYields
		(DistrictType,				YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

-----------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------

INSERT INTO District_CitizenYieldChanges
		(DistrictType,				YieldType,	YieldChange	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	YieldType,	YieldChange
FROM	District_CitizenYieldChanges
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

-----------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------

INSERT INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	GreatPersonClassType,	PointsPerTurn
FROM	District_GreatPersonPoints
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO District_GreatPersonPoints
		(DistrictType,					GreatPersonClassType,			PointsPerTurn	)
VALUES	('DISTRICT_CVS_SELEUCID_UI',	'GREAT_PERSON_CLASS_GENERAL',	1				);

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

INSERT INTO District_Adjacencies
		(DistrictType,				YieldChangeId	)
SELECT	'DISTRICT_CVS_SELEUCID_UI',	YieldChangeId
FROM	District_Adjacencies
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

-----------------------------------------------
-- TraittModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,										ModifierId								)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI',	'MODIFIER_CVS_SELEUCID_UI_TRADE_FOOD'	);

INSERT INTO	TraitModifiers
		(TraitType,										ModifierId	)
SELECT	'TRAIT_CIVILIZATION_DISTRICT_CVS_SELEUCID_UI',	'MODIFIER_CVS_SELEUCID_UI_YIELD_'||DistrictType
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType											)
VALUES	('MODTYPE_CVS_SELEUCID_UI_DISTRICTS_YIELD',		'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_BASE_YIELD_CHANGE'			),
		('MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD',			'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_TRADE_ROUTE_YIELD_FOR_DOMESTIC'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,							ModifierType,							SubjectRequirementSetId,			RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_SELEUCID_UI_TRADE_FOOD',	'MODTYPE_CVS_SELEUCID_UI_TRADE_YIELD',	'REQSET_CVS_SELEUCID_UI_IN_CITY',	0,			0			);

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_YIELD_'||DistrictType,	'MODTYPE_CVS_SELEUCID_UI_DISTRICTS_YIELD',	'REQSET_CVS_SELEUCID_UI_HAS_'||DistrictType
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,			Value			)
VALUES	('MODIFIER_CVS_SELEUCID_UI_TRADE_FOOD',		'YieldType',	'YIELD_FOOD'	),
		('MODIFIER_CVS_SELEUCID_UI_TRADE_FOOD',		'Amount',		2				);

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_YIELD_'||DistrictType,	'YieldType',	'YIELD_GOLD'
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UI_YIELD_'||DistrictType,	'Amount',		1
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_SELEUCID_UI_IN_CITY',	'REQ_CVS_SELEUCID_UI_IN_CITY'	);

INSERT INTO RequirementSetRequirements
        (RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_SELEUCID_UI_HAS_'||DistrictType,	'REQ_CVS_SELEUCID_UI_HAS_'||DistrictType
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);

INSERT INTO RequirementSetRequirements
        (RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_SELEUCID_UI_HAS_'||DistrictType,	'REQ_CVS_SELEUCID_UI_IS_UI'
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_SELEUCID_UI_IN_CITY',	'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSets
        (RequirementSetId,								RequirementSetType	)
SELECT	'REQSET_CVS_SELEUCID_UI_HAS_'||DistrictType,	'REQUIREMENTSET_TEST_ALL'
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,									RequirementType						)
VALUES	('REQ_CVS_SELEUCID_UI_IN_CITY',					'REQUIREMENT_CITY_HAS_DISTRICT'		),
		('REQ_CVS_SELEUCID_UI_IS_UI',					'REQUIREMENT_DISTRICT_TYPE_MATCHES'	);

INSERT INTO Requirements
		(RequirementId,								RequirementType	)
SELECT	'REQ_CVS_SELEUCID_UI_HAS_'||DistrictType,	'REQUIREMENT_CITY_HAS_DISTRICT'
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,				Value						)
VALUES	('REQ_CVS_SELEUCID_UI_IN_CITY',	'DistrictType',		'DISTRICT_CVS_SELEUCID_UI'	),
		('REQ_CVS_SELEUCID_UI_IS_UI',	'DistrictType',		'DISTRICT_CVS_SELEUCID_UI'	);

INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value	)
SELECT	'REQ_CVS_SELEUCID_UI_HAS_'||DistrictType,	'DistrictType',		DistrictType
FROM	Districts
WHERE	DistrictType IN (
						'DISTRICT_CAMPUS',
						'DISTRICT_HOLY_SITE',
						'DISTRICT_THEATER',
						'DISTRICT_HARBOR',
						'DISTRICT_INDUSTRIAL_ZONE',
						'DISTRICT_ENCAMPMENT'
						);