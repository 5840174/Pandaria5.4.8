-- Add missing gossip_menu
DELETE FROM `gossip_menu` WHERE (`MenuID`,`TextID`) IN ((7552,9380),(7581,9396),(7581,9398));
INSERT INTO `gossip_menu`(`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(7552, 9380, 0),
(7581, 9396, 0),
(7581, 9398, 0);

-- Add missing npc_text
DELETE FROM `npc_text` WHERE `ID` IN (9396,9398);
INSERT INTO `npc_text`(`ID`, `BroadcastTextID0`, `Probability0`, `VerifiedBuild`) VALUES
(9396, 15444, 1, 0),
(9398, 15448, 1, 0);

-- Trash Mobs Creature Text
DELETE FROM `creature_text` WHERE `CreatureID` IN (17899,17905,17919,17934,17932,17933,17936) AND `GroupID` IN (0,1);
DELETE FROM `creature_text` WHERE `CreatureID`=17772 AND `GroupID`=7;
INSERT INTO `creature_text`(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(17899, 0, 0, 'Lambs for the slaughter!', 12, 0, 100, 0, 0, 0, 18450, 0, 'Shadowy Necromancer say slay'),
(17899, 1, 0, 'A pleasure... to serve the master.', 12, 0, 100, 0, 0, 0, 18448, 0, 'Shadowy Necromancer say death'),
(17899, 1, 1, 'My life... to the master.', 12, 0, 100, 0, 0, 0, 18447, 0, 'Shadowy Necromancer say death'),
(17899, 1, 2, 'You will... ultimately fail.', 12, 0, 100, 0, 0, 0, 18446, 0, 'Shadowy Necromancer say death'),
(17905, 0, 0, 'Let this torment end!!', 12, 0, 100, 0, 0, 0, 18451, 0, 'Banshee say slay'),
(17905, 0, 1, 'I obey.', 12, 0, 100, 0, 0, 0, 18454, 0, 'Banshee say slay'),
(17905, 1, 0, 'I am... released?', 12, 0, 100, 0, 0, 0, 18452, 0, 'Banshee say death'),
(17905, 1, 1, 'Is it really... over?', 12, 0, 100, 0, 0, 0, 18453, 0, 'Banshee say death'),
(17919, 0, 0, 'Back, hold them back!', 12, 0, 100, 0, 0, 0, 18457, 0, 'Alliance Footman say slay'),
(17919, 0, 1, 'Let these monsters taste cold steel!', 12, 0, 100, 0, 0, 0, 18456, 0, 'Alliance Footman say slay'),
(17919, 1, 0, 'Agghh!', 12, 0, 100, 0, 0, 0, 18458, 0, 'Alliance Footman say death'),
(17934, 0, 0, 'Dis no good....', 12, 0, 100, 0, 0, 0, 18501, 0, 'Horde Headhunter say slay'),
(17934, 0, 1, 'Take their heads!', 12, 0, 100, 0, 0, 0, 18499, 0, 'Horde Headhunter say slay'),
(17934, 0, 2, 'We kill \'em good, mon.', 12, 0, 100, 0, 0, 0, 18500, 0, 'Horde Headhunter say slay'),
(17934, 0, 3, 'You stay dead.', 12, 0, 100, 0, 0, 0, 18503, 0, 'Horde Headhunter say slay'),
(17934, 0, 4, 'Da Legion gonna pay.', 12, 0, 100, 0, 0, 0, 18504, 0, 'Horde Headhunter say slay'),
(17934, 1, 0, 'It all over... now.', 12, 0, 100, 0, 0, 0, 18502, 0, 'Horde Headhunter say death'),
(17932, 0, 0, 'Destroy them all!', 12, 0, 100, 0, 0, 0, 18486, 0, 'Horde Grunt say slay'),
(17932, 0, 1, 'Have at them! Lok-Tar!', 12, 0, 100, 0, 0, 0, 18485, 0, 'Horde Grunt say slay'),
(17932, 0, 2, 'Spill their... blood!', 12, 0, 100, 0, 0, 0, 18488, 0, 'Horde Grunt say slay'),
(17932, 0, 3, 'Another one down!', 12, 0, 100, 0, 0, 0, 18490, 0, 'Horde Grunt say slay'),
(17932, 0, 4, 'Demon filth!', 12, 0, 100, 0, 0, 0, 18489, 0, 'Horde Grunt say slay'),
(17932, 1, 0, 'Keep... fighting!', 12, 0, 100, 0, 0, 0, 18487, 0, 'Horde Grunt say death'),
(17933, 0, 0, 'For the Earth Mother!', 12, 0, 100, 0, 0, 0, 18493, 0, 'Tauren Warrior say slay'),
(17933, 0, 1, 'Crush them!', 12, 0, 100, 0, 0, 0, 18494, 0, 'Tauren Warrior say slay'),
(17933, 0, 2, 'Balance must be restored!', 12, 0, 100, 0, 0, 0, 18497, 0, 'Tauren Warrior say slay'),
(17933, 0, 3, 'This world is not for you!', 12, 0, 100, 0, 0, 0, 18498, 0, 'Tauren Warrior say slay'),
(17933, 1, 0, 'I return... to the earth.', 12, 0, 100, 0, 0, 0, 18495, 0, 'Tauren Warrior say death'),
(17933, 1, 1, 'My spirit... goes on.', 12, 0, 100, 0, 0, 0, 18496, 0, 'Tauren Warrior say death'),
(17936, 0, 1, 'I am one... with all.', 12, 0, 100, 0, 0, 0, 18510, 0, 'Horde Shaman say slay'),
(17936, 1, 0, 'My spirit... goes on.', 12, 0, 100, 0, 0, 0, 18496, 0, 'Horde Shaman say death'),
(17772, 7, 0, '%s begins channelling a massive teleport spell. ', 16, 0, 100, 0, 0, 0, 15310, 0, 'jaina hyjal horde base SUCCESS');

-- enable gargoyle frost wyrm fly
DELETE FROM `creature_template_movement` WHERE `CreatureID` IN (17906,17907);
INSERT INTO `creature_template_movement`(`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(17906, 0, 0, 1, 0, 0, 0, NULL),
(17907, 0, 0, 1, 0, 0, 0, NULL);

-- add protection of elune(38528) spell script
DELETE FROM `spell_script_names` WHERE `spell_id`=38528;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(38528,'spell_protection_of_elune');

-- change wrong position and movement type of worldtree channel target
UPDATE `creature` SET `position_x`=5502.2876, `position_y`=-3525.4714, `position_z`=1607.9094, `orientation`=2.61799, `MovementType`=0 WHERE `guid`=22418;

-- update doomfire(18095) and doomfire_spirit(18104) flag_extra to 128
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|128 WHERE `entry` IN (18095,18104);

-- add say slay and death text for guards
DELETE FROM `smart_scripts` WHERE (`entryorguid`,`source_type`,`id`,`link`) IN ((17919,0,1,0),(17919,0,2,0),(17932,0,1,0),(17932,0,2,0),(17933,0,1,0),(17933,0,2,0),(17934,0,0,0),(17934,0,1,0),(17936,0,3,0),(17936,0,4,0));
INSERT INTO `smart_scripts`(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(17919, 0, 1, 0, 5, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alliance Footman - In Combat - Say Slay'),
(17919, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Alliance Footman - In Combat - Say Death'),
(17932, 0, 1, 0, 5, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Grunt - In Combat - Say Slay'),
(17932, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Grunt - In Combat - Say Death'),
(17933, 0, 1, 0, 5, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tauren Warrior - In Combat - Say Slay'),
(17933, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tauren Warrior - In Combat - Say Death'),
(17934, 0, 0, 0, 5, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Headhunter - In Combat - Say Slay'),
(17934, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Headhunter - In Combat - Say Death'),
(17936, 0, 3, 0, 5, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Shaman - In Combat - Say Slay'),
(17936, 0, 4, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Horde Shaman - In Combat - Say Death');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (17919,17934,17932,17933,17936);


SET @GURGTHOCK      := 30007;
SET @STINKBEARD     := 30017;
SET @YGGDRAS        := 30014;
SET @GARGORAL       := 30024;
SET @AZBARIN        := 30026;
SET @DUKESINGEM     := 30019;
SET @ERATHIUS       := 30025;
SET @ORINOKO        := 30020;
SET @KORRAK         := 30023;
SET @VLADOF         := 30022;
SET @FIENDOFFIRE    := 30042;
SET @FIENDOFEARTH   := 30043;
SET @FIENDOFWATER   := 30044;
SET @FIENDOFAIR     := 30045;
SET @WHISKER        := 30113;
SET @HUNGRYPENGUIN  := 30110;
SET @YGGWORM        := 30093;
SET @ENORMOS        := 30021;

-- Template Updates
UPDATE `creature_template` SET `AIName`="SmartAI",`ScriptName`="",`faction`=16 WHERE `entry`IN(@VLADOF,@GARGORAL,@AZBARIN,@DUKESINGEM,@ERATHIUS);
UPDATE `creature_template` SET `AIName`="SmartAI",`ScriptName`="" WHERE `entry`IN(@GURGTHOCK,@YGGDRAS,@STINKBEARD,@ORINOKO,@KORRAK,@VLADOF,@WHISKER,@HUNGRYPENGUIN,@YGGWORM);
UPDATE `creature_template` SET `AIName`="SmartAI",`ScriptName`="",`faction`=634, `unit_flags`=768 WHERE `entry` BETWEEN @FIENDOFFIRE AND @FIENDOFAIR;

-- Smart Scripts
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN @FIENDOFFIRE AND @FIENDOFAIR AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` =@FIENDOFFIRE*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(@VLADOF*100,(@VLADOF*100)+1) AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(@GURGTHOCK,@YGGDRAS,@STINKBEARD,@GARGORAL,@AZBARIN,@DUKESINGEM,@ERATHIUS,@ORINOKO,@KORRAK,@VLADOF,@WHISKER,@HUNGRYPENGUIN,@YGGWORM) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN (@GURGTHOCK*100)+1 AND (@GURGTHOCK*100)+9 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Gurgthock SAI
(@GURGTHOCK,0,0,7,19,0,100,0,12932,0,0,0,80,(@GURGTHOCK*100)+1,2,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - On Quest Accept (The Amphitheater of Anguish: Yggdras!) - Run Script"),
(@GURGTHOCK,0,1,7,19,0,100,0,12954,0,0,0,80,(@GURGTHOCK*100)+1,2,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - On Quest Accept (The Amphitheater of Anguish: Yggdras!) - Run Script"),
(@GURGTHOCK,0,2,7,19,0,100,0,12933,0,0,0,80,(@GURGTHOCK*100)+2,2,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - On Quest Accept (The Amphitheater of Anguish: Magnataur!) - Run Script"),
(@GURGTHOCK,0,3,7,19,0,100,0,12934,0,0,0,87,(@GURGTHOCK*100)+3,(@GURGTHOCK*100)+7,(@GURGTHOCK*100)+8,(@GURGTHOCK*100)+9,0,0,1,0,0,0,0,0,0,0,"Gurgthock - On Quest Accept (The Amphitheater of Anguish: From Beyond!) - Run Random Script"),
(@GURGTHOCK,0,4,7,19,0,100,0,12935,0,0,0,80,(@GURGTHOCK*100)+4,2,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - On Quest Accept (The Amphitheater of Anguish: Tuskarrmageddon!) - Run Script"),
(@GURGTHOCK,0,5,7,19,0,100,0,12936,0,0,0,80,(@GURGTHOCK*100)+5,2,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - On Quest Accept (The Amphitheater of Anguish: Korrak the Bloodrager!) - Run Script"),
(@GURGTHOCK,0,6,7,19,0,100,0,12948,0,0,0,80,(@GURGTHOCK*100)+6,2,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - On Quest Accept (The Champion of Anguish) - Run Script"),
(@GURGTHOCK,0,7,8,61,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - Linked with Previous Event - Set NPC Flags"),
(@GURGTHOCK,0,8,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - Linked with Previous Event - Set Event Phase 2"),
(@GURGTHOCK,0,9,16,38,0,100,0,10,10,60000,60000,1,15,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Data Set - Say"),
(@GURGTHOCK,0,10,16,38,0,100,0,11,11,0,0,1,10,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Data Set - Say"),
(@GURGTHOCK,0,11,16,38,0,100,0,12,12,0,0,1,12,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Data Set - Say"),
(@GURGTHOCK,0,12,16,38,0,100,0,13,13,0,0,1,11,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Data Set - Say"),
(@GURGTHOCK,0,13,16,38,0,100,0,14,14,0,0,1,11,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Data Set - Say"),
(@GURGTHOCK,0,14,16,38,0,100,0,15,15,0,0,1,11,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Data Set - Say"),
(@GURGTHOCK,0,15,16,38,0,100,0,16,16,0,0,1,14,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Data Set - Say"),
(@GURGTHOCK,0,16,17,61,0,100,0,0,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - Linked with Previous Event - Set NPC Flags"),
(@GURGTHOCK,0,17,0,61,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - Linked with Previous Event - Set Event Phase 1"),
(@GURGTHOCK,0,18,19,1,2,100,0,300000,300000,300000,300000,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - Out of Combat - Set Npc Flags Gossip & Questgiver (Phase 2)"),
(@GURGTHOCK,0,19,0,61,2,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gurgthock - Out of Combat - Set Event Phase 0 (Phase 2)"),
((@GURGTHOCK*100)+1,9,0,0,0,0,100,0,3000,3000,0,0,1,7,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+1,9,1,0,0,0,100,0,4000,4000,0,0,1,8,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+1,9,2,0,0,0,100,0,5000,5000,0,0,12,@YGGDRAS,2,300000,0,0,0,8,0,0,0,5762.054199,-2954.385010,273.826955,5.108289,"Gurgthock - Script - Summon Yggdras"),
((@GURGTHOCK*100)+2,9,0,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+2,9,1,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+2,9,2,0,0,0,100,0,5000,5000,0,0,12,@STINKBEARD,2,300000,0,0,0,8,0,0,0,5754.692,-2939.46,286.276123,5.156380,"Gurgthock - Script - Summon Stinkbeard"),
((@GURGTHOCK*100)+3,9,0,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+3,9,1,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+3,9,2,0,0,0,100,0,5000,5000,0,0,12,@GARGORAL,2,300000,0,0,0,8,0,0,0,5776.855,-2989.77979,272.96814,5.194,"Gurgthock - Script - Summon Gargoral"),
((@GURGTHOCK*100)+3,9,3,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5739.813, -2981.524, 290.7671, 5.986479,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,4,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5828.899, -2960.155, 312.7516, 3.525565,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,5,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5743.305, -3011.297, 290.7671, 0.6108652,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,6,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5763.189, -3029.675, 290.7671, 1.37881,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,7,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5793.061, -2934.593, 286.3596, 4.08407,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,8,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5742.101, -2950.756, 286.2643, 5.113815,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,9,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5828.502, -2981.737, 286.3596, 3.141593,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,10,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5769.401, -2935.121, 286.3358, 4.852015,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,11,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5820.309, -3002.837, 290.7671, 2.583087,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,12,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5733.76, -3000.346, 286.3596, 0.4712389,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,13,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5724.983, -2969.896, 286.3596, 6.056293,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,14,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5722.487, -3010.75, 312.7516, 0.5061455,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,15,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5744.417, -3025.528, 286.3596, 0.9424778,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,16,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5813.945, -2956.747, 286.3596, 3.717551,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,17,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5797.321, -2955.269, 290.7671, 4.118977,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+3,9,18,0,0,0,100,0,0,0,0,0,12,@FIENDOFWATER,2,300000,0,0,0,8,0,0,0,5816.855, -2974.476, 290.7671, 3.612832,"Gurgthock - Script - Fiend of Water"),
((@GURGTHOCK*100)+4,9,0,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+4,9,1,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+4,9,2,0,0,0,100,0,5000,5000,0,0,12,@ORINOKO,2,300000,0,0,0,8,0,0,0,5754.692,-2939.46,286.276123,5.156380,"Gurgthock - Script - Summon Orinko"),
((@GURGTHOCK*100)+5,9,0,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+5,9,1,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+5,9,2,0,0,0,100,0,5000,5000,0,0,12,@KORRAK,2,300000,0,0,0,8,0,0,0,5754.692,-2939.46,286.276123,5.156380,"Gurgthock - Script - Summon Korrak the Bloodrager"),
((@GURGTHOCK*100)+6,9,0,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+6,9,1,0,0,0,100,0,4000,4000,0,0,1,13,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+6,9,2,0,0,0,100,0,5000,5000,0,0,12,@VLADOF,2,300000,0,0,0,8,0,0,0,5754.692,-2939.46,286.276123,5.156380,"Gurgthock - Script - Summon Vladof the Butcher"),
((@GURGTHOCK*100)+7,9,0,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+7,9,1,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+7,9,2,0,0,0,100,0,5000,5000,0,0,12,@AZBARIN,2,300000,0,0,0,8,0,0,0,5776.855,-2989.77979,272.96814,5.194,"Gurgthock - Script - Summon Az'Barin"),
((@GURGTHOCK*100)+7,9,3,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5739.813, -2981.524, 290.7671, 5.986479,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,4,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5828.899, -2960.155, 312.7516, 3.525565,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,5,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5743.305, -3011.297, 290.7671, 0.6108652,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,6,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5763.189, -3029.675, 290.7671, 1.37881,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,7,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5793.061, -2934.593, 286.3596, 4.08407,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,8,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5742.101, -2950.756, 286.2643, 5.113815,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,9,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5828.502, -2981.737, 286.3596, 3.141593,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,10,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5769.401, -2935.121, 286.3358, 4.852015,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,11,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5820.309, -3002.837, 290.7671, 2.583087,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,12,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5733.76, -3000.346, 286.3596, 0.4712389,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,13,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5724.983, -2969.896, 286.3596, 6.056293,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,14,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5722.487, -3010.75, 312.7516, 0.5061455,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,15,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5744.417, -3025.528, 286.3596, 0.9424778,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,16,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5813.945, -2956.747, 286.3596, 3.717551,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,17,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5797.321, -2955.269, 290.7671, 4.118977,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+7,9,18,0,0,0,100,0,0,0,0,0,12,@FIENDOFAIR,2,300000,0,0,0,8,0,0,0,5816.855, -2974.476, 290.7671, 3.612832,"Gurgthock - Script - Fiend of Air"),
((@GURGTHOCK*100)+8,9,0,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+8,9,1,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+8,9,2,0,0,0,100,0,5000,5000,0,0,12,@DUKESINGEM,2,300000,0,0,0,8,0,0,0,5776.855,-2989.77979,272.96814,5.194,"Gurgthock - Script - Summon Duke Singen"),
((@GURGTHOCK*100)+8,9,3,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5739.813, -2981.524, 290.7671, 5.986479,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,4,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5828.899, -2960.155, 312.7516, 3.525565,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,5,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5743.305, -3011.297, 290.7671, 0.6108652,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,6,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5763.189, -3029.675, 290.7671, 1.37881,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,7,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5793.061, -2934.593, 286.3596, 4.08407,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,8,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5742.101, -2950.756, 286.2643, 5.113815,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,9,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5828.502, -2981.737, 286.3596, 3.141593,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,10,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5769.401, -2935.121, 286.3358, 4.852015,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,11,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5820.309, -3002.837, 290.7671, 2.583087,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,12,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5733.76, -3000.346, 286.3596, 0.4712389,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,13,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5724.983, -2969.896, 286.3596, 6.056293,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,14,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5722.487, -3010.75, 312.7516, 0.5061455,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,15,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5744.417, -3025.528, 286.3596, 0.9424778,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,16,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5813.945, -2956.747, 286.3596, 3.717551,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,17,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5797.321, -2955.269, 290.7671, 4.118977,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+8,9,18,0,0,0,100,0,0,0,0,0,12,@FIENDOFFIRE,2,300000,0,0,0,8,0,0,0,5816.855, -2974.476, 290.7671, 3.612832,"Gurgthock - Script - Fiend of Fire"),
((@GURGTHOCK*100)+9,9,0,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+9,9,1,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - Script - Say"),
((@GURGTHOCK*100)+9,9,2,0,0,0,100,0,5000,5000,0,0,12,@ERATHIUS,2,300000,0,0,0,8,0,0,0,5776.855,-2989.77979,272.96814,5.194,"Gurgthock - Script - Summon Erathius"),
((@GURGTHOCK*100)+9,9,3,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5739.813, -2981.524, 290.7671, 5.986479,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,4,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5828.899, -2960.155, 312.7516, 3.525565,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,5,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5743.305, -3011.297, 290.7671, 0.6108652,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,6,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5763.189, -3029.675, 290.7671, 1.37881,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,7,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5793.061, -2934.593, 286.3596, 4.08407,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,8,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5742.101, -2950.756, 286.2643, 5.113815,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,9,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5828.502, -2981.737, 286.3596, 3.141593,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,10,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5769.401, -2935.121, 286.3358, 4.852015,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,11,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5820.309, -3002.837, 290.7671, 2.583087,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,12,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5733.76, -3000.346, 286.3596, 0.4712389,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,13,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5724.983, -2969.896, 286.3596, 6.056293,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,14,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5722.487, -3010.75, 312.7516, 0.5061455,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,15,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5744.417, -3025.528, 286.3596, 0.9424778,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,16,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5813.945, -2956.747, 286.3596, 3.717551,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,17,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5797.321, -2955.269, 290.7671, 4.118977,"Gurgthock - Script - Fiend of Earth"),
((@GURGTHOCK*100)+9,9,18,0,0,0,100,0,0,0,0,0,12,@FIENDOFEARTH,2,300000,0,0,0,8,0,0,0,5816.855, -2974.476, 290.7671, 3.612832,"Gurgthock - Script - Fiend of Earth"),
-- Yggdras SAI
(@YGGDRAS,0,0,0,9,0,100,0,0,5,9000,15000,11,40504,1,0,0,0,0,7,0,0,0,0,0,0,0,"Yggdras - In Combat - Cast Cleave"),
(@YGGDRAS,0,1,0,9,0,100,0,0,5,6000,11000,11,57076,0,0,0,0,0,7,0,0,0,0,0,0,0,"Yggdras - In Combat - Cast Corrode Flesh"),
(@YGGDRAS,0,2,3,6,0,100,0,0,0,0,0,11,55859,2,0,0,0,0,1,0,0,0,0,0,0,0,"Yggdras - On Death - Cast Jormungar Spawn"),
(@YGGDRAS,0,3,4,61,0,100,0,0,0,0,0,45,11,11,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Yggdras - Linked with Previous Event - Set Data 11 11 "),
(@YGGDRAS,0,4,5,61,0,100,0,0,0,0,0,15,12932,0,0,0,0,0,16,0,0,0,0,0,0,0,"Yggdras - Linked with Previous Event - Call Area Explored or Event Happens"),
(@YGGDRAS,0,5,0,61,0,100,0,0,0,0,0,15,12954,0,0,0,0,0,16,0,0,0,0,0,0,0,"Yggdras - Linked with Previous Event - Call Area Explored or Event Happens"),
(@YGGDRAS,0,6,7,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Yggdras - On Evade - Set Data 10 10 "),
(@YGGDRAS,0,7,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Yggdras - Linked with Previous Event - Despawn"),
(@YGGDRAS,0,8,0,11,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Yggdras - On Spawn - Say"),
-- Stinkbeard SAI
(@STINKBEARD,0,0,1,11,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - On Spawn - Set Unit Flags"),
(@STINKBEARD,0,1,2,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - Linked with Previous Event - Say"),
(@STINKBEARD,0,2,0,61,0,100,0,0,0,0,0,53,1,@STINKBEARD,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - Linked with Previous Event - Start WP"),
(@STINKBEARD,0,3,4,40,0,100,0,7,@STINKBEARD,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - On Reached WP7 - Set Unit Flags"),
(@STINKBEARD,0,4,5,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - Linked with Previous Event - Set Agressive"),
(@STINKBEARD,0,5,0,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - Linked with Previous Event - Set Home Position"),
(@STINKBEARD,0,6,7,6,0,100,1,0,0,0,0,45,12,12,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Stinkbeard - On Death - Set Data 12 12 "),
(@STINKBEARD,0,7,0,61,0,100,0,0,0,0,0,15,12933,0,0,0,0,0,16,0,0,0,0,0,0,0,"Stinkbeard - Linked with Previous Event - Call Area Explored or Event Happens"),
(@STINKBEARD,0,8,9,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Stinkbeard - On Evade - Set Data 10 10 "),
(@STINKBEARD,0,9,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - Linked with Previous Event - Despawn"),
(@STINKBEARD,0,10,0,9,0,100,0,0,10,10000,16000,11,31389,2,0,0,0,0,7,0,0,0,0,0,0,0,"Stinkbeard - On Range - Cast Knock Away"),
(@STINKBEARD,0,11,0,0,0,100,0,11000,15000,12000,18000,11,55867,2,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - In Combat - Cast Stinky Beard"),
(@STINKBEARD,0,12,0,4,0,100,0,0,0,0,0,11,55866,2,0,0,0,0,2,0,0,0,0,0,0,0,"Stinkbeard - On Agro - Cast Thunderblade"),
(@STINKBEARD,0,13,14,2,0,100,1,0,20,0,0,11,50420,2,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - On Less than 20% HP - Cast Enrage"),
(@STINKBEARD,0,14,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - Linked with Previous Event - Say"),
(@STINKBEARD,0,15,0,2,0,100,1,0,10,0,0,11,15588,2,0,0,0,0,1,0,0,0,0,0,0,0,"Stinkbeard - On Less than 20% HP - Cast Thunderclap"),
-- Gargoral the Water Lord SAI
(@GARGORAL,0,0,0,0,0,100,0,5000,8000,5000,8000,11,55909,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gargoral the Water Lord - In Combat - Cast Crashing Wave"),
(@GARGORAL,0,1,2,6,0,100,1,0,0,0,0,45,13,13,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Gargoral the Water Lord - On Death - Set Data 13 13 "),
(@GARGORAL,0,2,5,61,0,100,0,0,0,0,0,15,12934,0,0,0,0,0,16,0,0,0,0,0,0,0,"Gargoral the Water Lord - Linked with Previous Event - Call Area Explored or Event Happens"),
(@GARGORAL,0,3,4,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Gargoral the Water Lord - On Evade - Set Data 10 10 "),
(@GARGORAL,0,4,5,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gargoral the Water Lord - Linked with Previous Event - Despawn"),
(@GARGORAL,0,5,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,@FIENDOFWATER,0,500,0,0,0,0,"Gargoral the Water Lord - Linked with Previous Event - Set Data on Fiend of Water"),
(@GARGORAL,0,6,7,11,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gargoral the Water Lord - On Spawn - Say"),
(@GARGORAL,0,7,0,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gargoral the Water Lord - Linked with Previous Event - Remove unattackable flags"),
(@GARGORAL,0,8,0,2,0,100,1,0,50,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gargoral the Water Lord - On Less than 50% HP - Say"),
(@GARGORAL,0,9,10,2,0,100,0,0,50,5000,5000,64,1,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gargoral the Water Lord - Linked with Previous Event - Store Target List"),
(@GARGORAL,0,10,11,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,@FIENDOFWATER,0,500,0,0,0,0,"Gargoral the Water Lord - Linked with Previous Event - Send Target List to Fiend of Water"),
(@GARGORAL,0,11,0,61,0,100,0,0,0,0,0,45,1,2,0,0,0,0,9,@FIENDOFWATER,0,500,0,0,0,0,"Gargoral the Water Lord - Linked with Previous Event - Set Data on Fiend of Water"),
-- Az'Barin, Prince of the Gust SAI
(@AZBARIN,0,0,0,0,0,100,0,5000,8000,11000,16000,11,55912,0,0,0,0,0,1,0,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - In Combat - Cast Blast of Air"),
(@AZBARIN,0,1,2,6,0,100,1,0,0,0,0,45,13,13,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - On Death - Set Data 13 13 "),
(@AZBARIN,0,2,5,61,0,100,0,0,0,0,0,15,12934,0,0,0,0,0,16,0,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - Linked with Previous Event - Call Area Explored or Event Happens"),
(@AZBARIN,0,3,4,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - On Evade - Set Data 10 10 "),
(@AZBARIN,0,4,5,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - Linked with Previous Event - Despawn"),
(@AZBARIN,0,5,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,@FIENDOFAIR,0,500,0,0,0,0,"Az'Barin, Prince of the Gust - Linked with Previous Event - Set Data on Fiend of Air"),
(@AZBARIN,0,6,7,11,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - On Spawn - Say"),
(@AZBARIN,0,7,0,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - Linked with Previous Event - Remove unattackable flags"),
(@AZBARIN,0,8,0,2,0,100,1,0,50,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - On Less than 50% HP - Say"),
(@AZBARIN,0,9,10,2,0,100,0,0,50,5000,5000,64,1,0,0,0,0,0,2,0,0,0,0,0,0,0,"Az'Barin, Prince of the Gust - Linked with Previous Event - Store Target List"),
(@AZBARIN,0,10,11,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,@FIENDOFAIR,0,500,0,0,0,0,"Az'Barin, Prince of the Gust - Linked with Previous Event - Send Target List to Fiend of Air"),
(@AZBARIN,0,11,0,61,0,100,0,0,0,0,0,45,1,2,0,0,0,0,9,@FIENDOFAIR,0,500,0,0,0,0,"Az'Barin, Prince of the Gust - Linked with Previous Event - Set Data on Fiend of Air"),
-- Duke Singen <The New Hotness> SAI
(@DUKESINGEM,0,0,0,0,0,100,0,5000,8000,5000,8000,11,55916,0,0,0,0,0,2,0,0,0,0,0,0,0,"Duke Singen <The New Hotness> - In Combat - Cast Magma Wave"),
(@DUKESINGEM,0,1,2,6,0,100,1,0,0,0,0,45,13,13,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Duke Singen <The New Hotness> - On Death - Set Data 13 13 "),
(@DUKESINGEM,0,2,5,61,0,100,0,0,0,0,0,15,12934,0,0,0,0,0,16,0,0,0,0,0,0,0,"Duke Singen <The New Hotness> - Linked with Previous Event - Call Area Explored or Event Happens"),
(@DUKESINGEM,0,3,4,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Duke Singen <The New Hotness> - On Evade - Set Data 10 10 "),
(@DUKESINGEM,0,4,5,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Duke Singen <The New Hotness> - Linked with Previous Event - Despawn"),
(@DUKESINGEM,0,5,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,@FIENDOFFIRE,0,500,0,0,0,0,"Duke Singen <The New Hotness> - Linked with Previous Event - Set Data on Fiend of Fire"),
(@DUKESINGEM,0,6,7,11,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Duke Singen <The New Hotness> - On Spawn - Say"),
(@DUKESINGEM,0,7,0,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Duke Singen <The New Hotness> - Linked with Previous Event - Remove unattackable flags"),
(@DUKESINGEM,0,8,0,2,0,100,1,0,50,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Duke Singen <The New Hotness> - On Less than 50% HP - Say"),
(@DUKESINGEM,0,9,10,2,0,100,0,0,50,5000,5000,64,1,0,0,0,0,0,2,0,0,0,0,0,0,0,"Duke Singen <The New Hotness> - Linked with Previous Event - Store Target List"),
(@DUKESINGEM,0,10,11,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,@FIENDOFFIRE,0,500,0,0,0,0,"Duke Singen <The New Hotness> - Linked with Previous Event - Send Target List to Fiend of Fire"),
(@DUKESINGEM,0,11,0,61,0,100,0,0,0,0,0,45,1,2,0,0,0,0,9,@FIENDOFFIRE,0,500,0,0,0,0,"Duke Singen <The New Hotness> - Linked with Previous Event - Set Data on Fiend of Fire"),
-- Erathius, King of Dirt SAI
(@ERATHIUS,0,0,0,9,0,100,0,0,5,5000,8000,11,55918,2,0,0,0,0,1,0,0,0,0,0,0,0,"Erathius, King of Dirt - On Range - Cast Shockwave"),
(@ERATHIUS,0,1,2,6,0,100,1,0,0,0,0,45,13,13,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Erathius, King of Dirt - On Death - Set Data 13 13 "),
(@ERATHIUS,0,2,5,61,0,100,0,0,0,0,0,15,12934,0,0,0,0,0,16,0,0,0,0,0,0,0,"Erathius, King of Dirt - Linked with Previous Event - Call Area Explored or Event Happens"),
(@ERATHIUS,0,3,4,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Erathius, King of Dirt - On Evade - Set Data 10 10 "),
(@ERATHIUS,0,4,5,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Erathius, King of Dirt - Linked with Previous Event - Despawn"),
(@ERATHIUS,0,5,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,@FIENDOFEARTH,0,500,0,0,0,0,"Erathius, King of Dirt - Linked with Previous Event - Set Data on Fiend of Earth"),
(@ERATHIUS,0,6,7,11,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Erathius, King of Dirt - On Spawn - Say"),
(@ERATHIUS,0,7,0,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Erathius, King of Dirt - Linked with Previous Event - Remove unattackable flags"),
(@ERATHIUS,0,8,0,2,0,100,1,0,50,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Erathius, King of Dirt - On Less than 50% HP - Say"),
(@ERATHIUS,0,9,10,2,0,100,0,0,50,5000,5000,64,1,0,0,0,0,0,2,0,0,0,0,0,0,0,"Erathius, King of Dirt - Linked with Previous Event - Store Target List"),
(@ERATHIUS,0,10,11,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,@FIENDOFEARTH,0,500,0,0,0,0,"Erathius, King of Dirt - Linked with Previous Event - Send Target List to Fiend of Earth"),
(@ERATHIUS,0,11,0,61,0,100,0,0,0,0,0,45,1,2,0,0,0,0,9,@FIENDOFEARTH,0,500,0,0,0,0,"Erathius, King of Dirt - Linked with Previous Event - Set Data on Fiend of Earth"),
-- Orinoko Tuskbreaker SAI
(@ORINOKO,0,0,1,11,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - On Spawn - Set Unit Flags"),
(@ORINOKO,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - Linked with Previous Event - Say"),
(@ORINOKO,0,2,0,61,0,100,0,0,0,0,0,97,20,10,0,0,0,0,1,0,0,0,5776.319824,-2981.005371,273.100037,0,"Orinoko Tuskbreaker - Linked with Previous Event - Jump to Position"),
(@ORINOKO,0,3,4,1,0,100,1,5000,5000,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - On Reached WP7 - Set Unit Flags"),
(@ORINOKO,0,4,5,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - Linked with Previous Event - Set Agressive"),
(@ORINOKO,0,5,0,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - Linked with Previous Event - Set Home Position"),
(@ORINOKO,0,6,7,6,0,100,1,0,0,0,0,45,14,14,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Orinoko Tuskbreaker - On Death- Set Data 14 14 "),
(@ORINOKO,0,7,0,61,0,100,0,0,0,0,0,15,12935,0,0,0,0,0,16,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - Linked with Previous Event - Call Area Explored or Event Happens"),
(@ORINOKO,0,8,9,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Orinoko Tuskbreaker - On Evade - Set Data 10 10 "),
(@ORINOKO,0,9,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - Linked with Previous Event - Despawn"),
(@ORINOKO,0,10,0,0,0,100,0,20000,25000,35000,45000,11,55937,0,0,0,0,0,2,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - In Combat - Cast Fishy Scent"),
(@ORINOKO,0,11,0,0,0,100,0,0,0,60000,60000,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - In Combat - Cast Battle Shout"),
(@ORINOKO,0,12,0,4,0,100,0,0,0,0,0,11,55929,2,0,0,0,0,7,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - On Agro - Cast Impale"),
(@ORINOKO,0,13,14,2,0,100,1,0,50,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - On Less than 50% HP - Say"),
(@ORINOKO,0,14,0,61,0,100,1,0,0,0,0,11,55946,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - Linked with Previous Event - Summon Whisker"),
(@ORINOKO,0,15,0,9,0,100,0,10,60,15000,25000,11,55929,2,0,0,0,0,7,0,0,0,0,0,0,0,"Orinoko Tuskbreaker - Range - Cast Impale"),
-- Korrak the Bloodrager SAI
(@KORRAK,0,0,1,11,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - On Spawn - Set Unit Flags"),
(@KORRAK,0,1,2,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - Linked with Previous Event - Say"),
(@KORRAK,0,2,0,61,0,100,0,0,0,0,0,53,1,@KORRAK,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - Linked with Previous Event - Start WP"),
(@KORRAK,0,3,4,40,0,100,0,6,@KORRAK,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - On Reached WP6 - Set Unit Flags"),
(@KORRAK,0,4,5,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - Linked with Previous Event - Say"),
(@KORRAK,0,5,6,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - Linked with Previous Event - Set Agressive"),
(@KORRAK,0,6,0,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - Linked with Previous Event - Set Home Position"),
(@KORRAK,0,7,8,6,0,100,1,0,0,0,0,45,15,15,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Korrak the Bloodrager - On Death - Set Data 15 15 "),
(@KORRAK,0,8,0,61,0,100,0,0,0,0,0,15,12936,0,0,0,0,0,16,0,0,0,0,0,0,0,"Korrak the Bloodrager - Linked with Previous Event - Call Area Explored or Event Happens"),
(@KORRAK,0,9,10,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Korrak the Bloodrager - On Evade - Set Data 10 10 "),
(@KORRAK,0,10,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - Linked with Previous Event - Despawn"),
(@KORRAK,0,11,0,9,0,100,0,8,25,15000,21000,11,24193,2,0,0,0,0,7,0,0,0,0,0,0,0,"Korrak the Bloodrager - On Range - Cast Charge"),
(@KORRAK,0,12,0,9,0,100,0,0,5,12000,17000,11,30471,2,0,0,0,0,7,0,0,0,0,0,0,0,"Korrak the Bloodrager - On Range - Cast Uppercut"),
(@KORRAK,0,13,0,4,0,100,0,0,0,0,0,11,55948,2,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - On Agro - Cast Grow"),
(@KORRAK,0,14,0,2,0,100,1,0,20,0,0,11,42745,2,0,0,0,0,1,0,0,0,0,0,0,0,"Korrak the Bloodrager - On Less than 20% HP - Cast Enrage"),
-- Vladof the Butcher SAI
(@VLADOF,0,0,1,11,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - On Spawn - Set Unit Flags"),
(@VLADOF,0,1,2,61,0,100,0,0,0,0,0,43,@ENORMOS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Linked with Previous Event - Mount to Enormos"),
(@VLADOF,0,2,3,61,0,100,0,0,0,0,0,97,20,10,0,0,0,0,1,0,0,0,5776.319824,-2981.005371,273.100037,0,"Vladof the Butcher - Linked with Previous Event - Jump to Position"),
(@VLADOF,0,3,0,61,0,100,0,0,0,0,0,80,@VLADOF*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Linked with Previous Event - Run Script"),
(@VLADOF,0,4,0,4,0,100,1,0,0,0,0,80,(@VLADOF*100)+1,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - On Agro - Run Script"),
(@VLADOF,0,5,6,6,0,100,1,0,0,0,0,45,16,16,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Vladof the Butcher - On Death - Set Data 16 16 "),
(@VLADOF,0,6,0,61,0,100,0,0,0,0,0,15,12948,0,0,0,0,0,16,0,0,0,0,0,0,0,"Vladof the Butcher - Linked with Previous Event - Call Area Explored or Event Happens"),
(@VLADOF,0,7,8,7,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,@GURGTHOCK,0,0,0,0,0,0,"Vladof the Butcher - On Evade - Set Data 10 10 "),
(@VLADOF,0,8,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Linked with Previous Event - Despawn"),
(@VLADOF,0,9,0,9,0,100,0,0,5,7000,12000,11,55973,2,0,0,0,0,7,0,0,0,0,0,0,0,"Vladof the Butcher - On Range - Cast Blood Plague"),
(@VLADOF,0,10,0,9,0,100,0,0,5,15000,21000,11,55974,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - On Range - Cast Blood Boil"),
(@VLADOF,0,11,0,0,0,100,0,21000,26000,21000,26000,11,55975,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - IC - Cast Hysteria"),
(@VLADOF,0,12,13,0,0,100,0,15000,21000,21000,29000,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - IC - Say (Phase 2)"),
(@VLADOF,0,13,0,61,0,100,0,0,0,0,0,11,55976,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - IC - Cast Spell Deflection "),
(@VLADOF*100,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Script - Say"),
(@VLADOF*100,9,1,0,0,0,100,0,3000,3000,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Script - Remove Unit Flags"),
(@VLADOF*100,9,2,0,0,0,100,0,0,8,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Script - Set Agressive"),
(@VLADOF*100,9,3,0,0,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Script - Set Home Position"),
((@VLADOF*100)+1,9,0,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Script - Say"),
((@VLADOF*100)+1,9,1,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Script - Say"),
((@VLADOF*100)+1,9,2,0,0,0,100,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vladof the Butcher - Script - Dismount"),
-- Elemental Fiends SAI
(@FIENDOFFIRE,0,0,1,38,0,100,0,1,1,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Fire - On Data Set - Evade"),
(@FIENDOFEARTH,0,0,1,38,0,100,0,1,1,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Earth - On Data Set - Evade"),
(@FIENDOFWATER,0,0,1,38,0,100,0,1,1,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Water - On Data Set - Evade"),
(@FIENDOFAIR,0,0,1,38,0,100,0,1,1,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Air - On Data Set - Evade"),
(@FIENDOFFIRE,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Fire - Linked with Previous Event - Despawn"),
(@FIENDOFEARTH,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Earth - Linked with Previous Event - Despawn"),
(@FIENDOFWATER,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Water - Linked with Previous Event - Despawn"),
(@FIENDOFAIR,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Air - Linked with Previous Event - Despawn"),
(@FIENDOFFIRE,0,2,0,38,0,100,0,1,2,0,0,80,@FIENDOFFIRE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Fire - On Data Set - Run Script"),
(@FIENDOFEARTH,0,2,0,38,0,100,0,1,2,0,0,80,@FIENDOFFIRE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Earth - On Data Set - Run Script"),
(@FIENDOFWATER,0,2,0,38,0,100,0,1,2,0,0,80,@FIENDOFFIRE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Water - On Data Set - Run Script"),
(@FIENDOFAIR,0,2,0,38,0,100,0,1,2,0,0,80,@FIENDOFFIRE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Air - On Data Set - Run Script"),
(@FIENDOFFIRE,0,3,0,9,0,30,0,10,70,2000,7000,11,55872,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fiend of Fire - IC - Cast Orb of Flame"),
(@FIENDOFEARTH,0,3,0,9,0,30,0,10,70,2000,7000,11,55886,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fiend of Earth - IC - Cast Boulder"),
(@FIENDOFWATER,0,3,0,9,0,30,0,10,70,2000,7000,11,55888,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fiend of Water - IC - Cast Orb of Water"),
(@FIENDOFAIR,0,3,0,9,0,30,0,10,70,2000,7000,11,55882,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fiend of Air - IC - Cast Orb of Storms"),
(@FIENDOFFIRE,0,4,0,7,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Fire - On Evade - Set Unit Flags"),
(@FIENDOFEARTH,0,4,0,7,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Earth - On Evade - Set Unit Flags"),
(@FIENDOFWATER,0,4,0,7,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Water - On Evade - Set Unit Flags"),
(@FIENDOFAIR,0,4,0,7,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fiend of Air - On Evade - Set Unit Flags"),
(@FIENDOFFIRE*100,9,0,0,0,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Elemental Fiend - Script - Remove Unit Flags"),
(@FIENDOFFIRE*100,9,1,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,"Elemental Fiend - Script - Attack Stored Target"),
-- Whisker SAI
(@WHISKER,0,0,0,9,0,100,0,0,5,10000,15000,11,50169,0,0,0,0,0,7,0,0,0,0,0,0,0,"Whisker - On Range - Cast Flipper Attack"),
-- Hungry Penguin SAI
(@HUNGRYPENGUIN,0,0,1,11,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hungry Penguin - On Spawn - Set Faction"),
(@HUNGRYPENGUIN,0,1,2,61,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hungry Penguin - Linked with Previous Event - Set Defensive"),
(@HUNGRYPENGUIN,0,2,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,23,0,0,0,0,0,0,0,"Hungry Penguin - Linked with Previous Event - Attack Sumonner"),
-- Yggdras Worm SAI
(@YGGWORM,0,0,0,11,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Yggdras Worm - On Spawn - Set Faction");
-- Texts
DELETE FROM `creature_text` WHERE `CreatureID` IN (@GURGTHOCK,@YGGDRAS,@STINKBEARD,@GARGORAL,@AZBARIN,@DUKESINGEM,@ERATHIUS,@ORINOKO,@KORRAK,@VLADOF);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@GURGTHOCK, 0, 0, 'This battle must be seen to be believed! Once a mild-mannered tuskarr fisherman, our next fighter turned to the life of a soulless mercenary when his entire family was wiped out by a vicious pack of lion seals and ill-tempered penguins! Now he''s just in it for the gold! Ladies and gentlemen, ORINOKO TUSKBREAKER!!', 14, 0, 100, 15, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 1, 0, 'The champion of the Winterax trolls has challenged you, $N! I hope you''re ready!', 12, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 2, 0, 'Hailling from the distant mountains of Alterac, one of the fiercest competitors this arena has ever seen: KORRAK THE BLOODRAGER!!!', 14, 0, 100, 15, 0, 13363, 'Gurgthock'),
(@GURGTHOCK, 3, 0, 'The battle is about to begin! Am I reading this card right? It... It''s the nefarious magnataur lord, STINKBEARD! Yes, folks, STINKBEARD! $N doesn''t stand a chance!', 14, 0, 100, 15, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 6, 0, 'Do you feel that folks? The air is crackling with energy! That can only mean one thing...', 14, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 7, 0, 'The grand Amphitheater of Anguish awaits, $N. Remember, once a battle starts you have to stay in the arena. WIN OR DIE!', 12, 0, 100, 1, 0, 13910, 'Gurgthock'),
(@GURGTHOCK, 7, 1, 'The grand Amphitheater of Anguish awaits, $N. Remember, once a battle starts you have to stay in the arena. WIN OR DIE!', 12, 0, 100, 1, 0, 13911, 'Gurgthock'),
(@GURGTHOCK, 8, 0, 'Here we are once again, ladies and gentlemen. The epic struggle between life and death in the Amphitheater of Anguish! For this round we have $N versus the hulking jormungar, Yg... Yggd? Yggdoze? Who comes up with these names?! $N versus big worm!', 14, 0, 100, 15, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 9, 0, 'Prepare to make your stand, $N! Get in the Amphitheater and stand ready! Remember, you and your opponent must stay in the arena at all times or you will be disqualified!', 12, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 10, 0, '$N has defeated Yg... Yggg-really big worm!', 14, 0, 100, 15, 0, 13905, 'Gurgthock'),
(@GURGTHOCK, 10, 1, '$N has defeated Yg... Yggg-really big worm!', 14, 0, 100, 15, 0, 13908, 'Gurgthock'),
(@GURGTHOCK, 10, 2, '$N has defeated Yg... Yggg-really big worm!', 14, 0, 100, 15, 0, 13909, 'Gurgthock'),
(@GURGTHOCK, 10, 3, '$N has defeated Yg... Yggg-really big worm!', 14, 0, 100, 15, 0, 13907, 'Gurgthock'),
(@GURGTHOCK, 11, 0, '$N is victorious once more!', 14, 0, 100, 15, 0, 13908, 'Gurgthock'),
(@GURGTHOCK, 11, 1, '$N is victorious once more!', 14, 0, 100, 15, 0, 13909, 'Gurgthock'),
(@GURGTHOCK, 11, 2, '$N is victorious once more!', 14, 0, 100, 15, 0, 13905, 'Gurgthock'),
(@GURGTHOCK, 12, 0, 'And with AUTHORITY, $N dominates the magnataur lord! Stinkbeard''s clan is gonna miss him back home in the Dragonblight!!', 14, 0, 100, 15, 0, 13908, 'Gurgthock'),
(@GURGTHOCK, 13, 0, 'From the Savage Ledge of Icecrown, Vladof the Butcher and his mammoth, Enormos! There ain''t gonna be a thing left of our challengers, folks! Prepare for a downpour of blood, guts and tears!', 14, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 14, 0, 'I DON''T BELIEVE IT! WE HAVE A NEW CHAMPION OF ANGUISH!!! Vladof the Butcher has been defeated by a ragtag crew of nobodies! Incredible finish!', 14, 0, 100, 15, 0, 13908, 'Gurgthock'),
(@GURGTHOCK, 15, 0, 'All that''s left of the challenger is a red stain on the floor!', 14, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 15, 1, 'Avert your eyes, ladies and gentlemen! It''s a bloodbath!', 14, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 15, 2, 'Call in the clowns! It''s turned into a circus in there!', 14, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 15, 3, 'OOOF! That one''s gonna require the \"scraper.\"', 14, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 15, 4, 'OUTTA NOWHERE -- WHAMO! DEAD!', 14, 0, 100, 1, 0, 0, 'Gurgthock'),
(@GURGTHOCK, 15, 5, 'They went down like a sack of orc skulls!', 14, 0, 100, 1, 0, 0, 'Gurgthock'),
(@YGGDRAS, 1, 0, '%s emerges!', 41, 0, 100, 0, 0, 13878, 'Yggdras'),
(@STINKBEARD, 0, 0, '%s becomes enraged!', 16, 0, 100, 1, 0, 0, 'Stinkbeard'),
(@STINKBEARD, 1, 0, 'Stinkbeard comin'' for you, little ones!', 14, 0, 100, 1, 0, 13907, 'Stinkbeard'),
(@GARGORAL, 1, 0, 'For Neptulon! Strength of storm and sea, crush my enemies!', 14, 0, 100, 1, 0, 13878, 'Gargoral the Water Lord'),
(@GARGORAL, 2, 0, 'I am the baddest of the bad, the coolest of the cool! To my side, my elements, let us freeze and rule!', 14, 0, 100, 1, 0, 0, 'Gargoral the Water Lord'),
(@AZBARIN, 1, 0, 'Al''Akir grant my enemies a cold, swift death!', 14, 0, 100, 0, 0, 13878, 'Az''Barin, Prince of the Gust'),
(@AZBARIN, 2, 0, 'I bring a gust so strong, it can knock down trees! Minions, assist me, they shall not do as they please!', 14, 0, 100, 0, 0, 0, 'Az''Barin, Prince of the Gust'),
(@DUKESINGEM, 1, 0, 'I''ll melt the flesh off your bones!', 14, 0, 100, 0, 0, 13878, 'Duke Singen <The New Hotness>'),
(@DUKESINGEM, 2, 0, 'To burn my kingdom, you can''t use fire! Come my servants, I am not ready to retire!', 14, 0, 100, 0, 0, 0, 'Duke Singen <The New Hotness>'),
(@ERATHIUS, 1, 0, 'Arise, brothers of the earth! Watch as Erathius destroys the mortals!', 14, 0, 100, 0, 0, 13878, 'Erathius, King of Dirt'),
(@ERATHIUS, 2, 0, 'I''m the king of dirt, there is none higher! To my aid, minions - assist your sire!', 14, 0, 100, 0, 0, 0, 'Erathius, King of Dirt'),
(@ORINOKO, 0, 0, 'Come, land-dwellers, face the fury of tusk and whisker!', 14, 0, 100, 1, 0, 0, 'Orinoko Tuskbreaker'),
(@ORINOKO, 1, 0, 'Whisker! Where are you?! Assist me!', 14, 0, 100, 0, 0, 0, 'Orinoko Tuskbreaker'),
(@KORRAK, 1, 0, 'Korrak has come, weaklings! Snowfall belongs to Winterax! Erm, Korrak mean to say amphitheater belong to Winterax!', 14, 0, 100, 15, 0, 0, 'Korrak the Bloodrager'),
(@KORRAK, 2, 0, 'No graveyard here for you to play wicked games on Korrak! DIE!', 14, 0, 100, 15, 0, 0, 'Korrak the Bloodrager'),
(@VLADOF, 1, 0, 'Yes, my precious, we will tear them apart! For the one true king!', 14, 0, 100, 15, 0, 13907, 'Vladof the Butcher'),
(@VLADOF, 2, 0, 'Useless mongrel! I''ll kill ''em myself!', 14, 0, 100, 0, 0, 0, 'Vladof the Butcher'),
(@VLADOF, 3, 0, 'Vladof dismounts!', 41, 0, 100, 1, 0, 0, 'Vladof the Butcher'),
(@VLADOF, 4, 0, '%s begins to spin, encased in a magical shield!', 41, 0, 100, 1, 0, 0, 'Vladof the Butcher');
-- Waypoints
DELETE FROM `script_waypoint` WHERE `entry`IN(@STINKBEARD,@KORRAK);
DELETE FROM `waypoints` WHERE `entry`IN(@STINKBEARD,@KORRAK);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@STINKBEARD, 1, 5790.98, -2927.3, 286.277, ''),
(@STINKBEARD, 2, 5803, -2953, 286.277, ''),
(@STINKBEARD, 3, 5805.18, -2958.51, 282.899, ''),
(@STINKBEARD, 4, 5807.04, -2961.45, 280.25, ''),
(@STINKBEARD, 5, 5808.86, -2965.14, 277.089, ''),
(@STINKBEARD, 6, 5811.7, -2970.82, 273.569, ''),
(@STINKBEARD, 7, 5789.98, -2980.25, 273.584, ''),
(@KORRAK, 1, 5722.56, -2960.69, 286.276, ''),
(@KORRAK, 2, 5734.7, -2984.99, 286.276, ''),
(@KORRAK, 3, 5737.4, -2991.31, 282.575, ''),
(@KORRAK, 4, 5740.42, -2997.54, 277.263, ''),
(@KORRAK, 5, 5743.79, -3004.05, 273.57, ''),
(@KORRAK, 6, 5764.24, -2993.79, 272.944, '');
-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN(55872,55886,55888,55882);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 55872, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Orb of Fire Hits player'),
(13, 1, 55886, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Boulder Hits player'),
(13, 1, 55888, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Orb of Water Hits player'),
(13, 1, 55882, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Orb of Storms Hits player');
-- Template addon entries
DELETE FROM `creature_template_addon` WHERE `entry` IN (@YGGDRAS,@VLADOF,@FIENDOFFIRE,@FIENDOFEARTH,@FIENDOFWATER,@FIENDOFAIR,@ORINOKO,@STINKBEARD,@DUKESINGEM,@GARGORAL,@ERATHIUS,@AZBARIN);
INSERT INTO creature_template_addon (entry, path_id, mount, MountCreatureID, StandState, AnimTier, VisFlags, SheathState, PvPFlags, emote, visibilityDistanceType, auras) VALUES
(30014, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, ''),
(30017, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, ''),
(30019, 0, 0, 0, 0, 2, 0, 1, 0, 0, 3, ''),
(30020, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, ''),
(30022, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, ''),
(30024, 0, 0, 0, 0, 2, 0, 1, 0, 0, 3, ''),
(30025, 0, 0, 0, 0, 2, 0, 1, 0, 0, 3, ''),
(30026, 0, 0, 0, 0, 2, 0, 1, 0, 0, 3, ''),
(30042, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, ''),
(30043, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, ''),
(30044, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, ''),
(30045, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, '');

-- Equipment Template entries
DELETE FROM `creature_equip_template` WHERE `CreatureID` IN(@VLADOF,@STINKBEARD);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`) VALUES
(@VLADOF, 1, 41764, 41764, 0),
(@STINKBEARD, 1, 41691, 41691, 0);

