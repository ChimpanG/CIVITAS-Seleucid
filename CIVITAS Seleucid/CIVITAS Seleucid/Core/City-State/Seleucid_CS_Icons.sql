/*
	Icons
	Authors: ChimpanG
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename									)
VALUES  ('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		256,	 	1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_256.dds'	),
		('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		80,	 		1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_80.dds'	),
		('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		64,	 		1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_64.dds'	),
		('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		50,	 		1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_50.dds'	),
		('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		48,	 		1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_48.dds'	),
		('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		44,	 		1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_44.dds'	),
		('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		36,	 		1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_36.dds'	),
		('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		30,	 		1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_30.dds'	),
		('ICON_ATLAS_CVS_SELEUCID_CS_ICON',		22,	 		1,				1,				'CIVILIZATION_CVS_SELEUCID_CS_ICON_22.dds'	);

-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

UPDATE	IconDefinitions
SET		Atlas = 'ICON_ATLAS_CVS_SELEUCID_CS_ICON',
		'Index' = 0
WHERE	Name = 'ICON_CIVILIZATION_ANTIOCH';
