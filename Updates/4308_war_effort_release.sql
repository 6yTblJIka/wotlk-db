/*select * from gameobject_template where entry IN(180888, 180880, 180881, 180882, 180883, 180884, 180885, 180852, 180692);
select entry,name from gameobject_template a where name like '%AQWar%' AND NOT EXISTS (select id from gameobject_unique b where a.entry=b.id);
DELETE FROM gameobject where Id IN(180692);
*/
/*
15 - rainbow fin albacore
17 - roast raptor
24 - spotted
.worldstate wareffort counter 14 10000
.worldstate wareffort counter 16 10000
.worldstate wareffort counter 23 4000
*/

-- Create Original Event, Add Debugging Events (Phase 1-5)

REPLACE INTO `game_event` VALUES
(120, 0, 525600, 1, 0, 0, 0, "AQ War Effort Phase 1 Item collection"),
(121, 0, 525600, 1, 0, 0, 0, "AQ War Effort Phase 2 Transportation"),
(122, 0, 525600, 1, 0, 0, 0, "AQ War Effort Phase 3 Gong"),
(123, 0, 525600, 1, 0, 0, 0, "AQ War Effort Phase 4 10 Hour War"),
(124, 0, 525600, 1, 0, 0, 0, "AQ War Effort Phase 5 Done");
/*REPLACE INTO `game_event_time` (entry) VALUES
(120),
(131),
(132),
(133),
(134),
(135);
*/
-- Add Alliance Gameobjects

SET @OGUID := 155200;

-- Initial
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+0,180681,0,1,-4958.52,-1179.33,501.660,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Skinning
(@OGUID+1,180598,0,1,-4971.55,-1148.57,501.650,2.29000,0,0,0.909960,0.414694,120,120,255,1), -- Bandages
(@OGUID+2,180680,0,1,-4913.85,-1226.00,501.651,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Bars
(@OGUID+3,180679,0,1,-4937.29,-1282.74,501.672,2.26893,0,0,0.906307,0.422619,120,120,255,1); -- Cooking / Herbs

-- Tier 1
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+10,180692,0,0,-4958.52,-1179.33,501.660,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Skinning -- Invisible
(@OGUID+11,180674,0,0,-4968.33,-1152.89,501.930,2.27000,0,0,0.906307,0.422619,120,120,255,1), -- Bandages -- Invisible
(@OGUID+12,180780,0,0,-4913.85,-1226.00,501.651,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Bars -- Invisible
(@OGUID+13,180800,0,0,-4937.29,-1282.74,501.672,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Cooking
(@OGUID+14,180801,0,0,-4935.58,-1284.82,501.671,2.25147,0,0,0.902585,0.430512,120,120,255,1); -- Herbs

-- Tier 2
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+20,180693,0,1,-4958.52,-1179.33,501.660,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Skinning
(@OGUID+21,180675,0,1,-4969.21,-1143.84,509.250,2.20000,0,0,0.909961,0.414694,120,120,255,1), -- Bandages
(@OGUID+22,180781,0,1,-4913.85,-1226.00,501.651,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Bars
(@OGUID+23,180806,0,1,-4937.29,-1282.74,501.672,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Cooking
(@OGUID+24,180802,0,1,-4935.58,-1284.82,501.671,2.25147,0,0,0.902585,0.430512,120,120,255,1); -- Herbs

-- Tier 3
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+30,180694,0,1,-4958.52,-1179.33,501.660,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Skinning -- Invisible
(@OGUID+31,180676,0,1,-4983.00,-1136.22,501.670,2.30000,0,0,0.913545,0.406738,120,120,255,1), -- Bandages
(@OGUID+32,180782,0,1,-4913.85,-1226.00,501.651,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Bars
(@OGUID+33,180807,0,1,-4937.29,-1282.74,501.672,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Cooking
(@OGUID+34,180803,0,1,-4935.58,-1284.82,501.671,2.25147,0,0,0.902585,0.430512,120,120,255,1); -- Herbs

-- Tier 4
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+40,180695,0,1,-4958.52,-1179.33,501.660,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Skinning -- Invisible
(@OGUID+41,180677,0,1,-4975.60,-1147.33,509.250,2.27000,0,0,0.906307,0.422619,120,120,255,1), -- Bandages
(@OGUID+42,180783,0,1,-4913.85,-1226.00,501.651,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Bars
(@OGUID+43,180808,0,1,-4937.29,-1282.74,501.672,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Cooking
(@OGUID+44,180804,0,1,-4935.58,-1284.82,501.671,2.25147,0,0,0.902585,0.430512,120,120,255,1); -- Herbs

-- Tier 5
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+50,180696,0,1,-4958.52,-1179.33,501.660,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Skinning
(@OGUID+51,180678,0,1,-4974.11,-1148.40,510.850,2.27000,0,0,0.906307,0.422619,120,120,255,1), -- Bandages
(@OGUID+52,180784,0,1,-4913.85,-1226.00,501.651,2.25147,0,0,0.902585,0.430512,120,120,255,1), -- Bars
(@OGUID+53,180809,0,1,-4937.29,-1282.74,501.672,2.26893,0,0,0.906307,0.422619,120,120,255,1), -- Cooking
(@OGUID+54,180805,0,1,-4935.58,-1284.82,501.671,2.25147,0,0,0.902585,0.430512,120,120,255,1); -- Herbs

INSERT INTO `game_event_gameobject` (guid, event) VALUES
(@OGUID+0, 120),
(@OGUID+1, 120),
(@OGUID+2, 120),
(@OGUID+3, 120),
(@OGUID+10, 131),
(@OGUID+11, 131),
(@OGUID+12, 131),
(@OGUID+13, 131),
(@OGUID+14, 131),
(@OGUID+20, 132),
(@OGUID+21, 132),
(@OGUID+22, 132),
(@OGUID+23, 132),
(@OGUID+24, 132),
(@OGUID+30, 133),
(@OGUID+31, 133),
(@OGUID+32, 133),
(@OGUID+33, 133),
(@OGUID+34, 133),
(@OGUID+40, 134),
(@OGUID+41, 134),
(@OGUID+42, 134),
(@OGUID+43, 134),
(@OGUID+44, 134),
(@OGUID+50, 135),
(@OGUID+51, 135),
(@OGUID+52, 135),
(@OGUID+53, 135),
(@OGUID+54, 135);

-- Add Horde Gameobjects

SET @OGUID := 155255;

-- Initial
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+0,180812,1,1,1590.82,-4155.33,36.2926,3.70010,0,0,-0.961261,0.275640,120,120,255,1), -- Skinning
(@OGUID+1,180818,1,1,1637.11,-4147.21,36.0414,3.73501,0,0,-0.956305,0.292372,120,120,255,1), -- Herbs
(@OGUID+2,180826,1,1,1579.35,-4109.25,34.5417,3.75246,0,0,-0.953716,0.300708,120,120,255,1), -- Bandages
(@OGUID+3,180832,1,1,1619.83,-4092.43,34.5107,3.70010,0,0,-0.961261,0.275640,120,120,255,1), -- Cooking
(@OGUID+4,180838,1,1,1683.11,-4134.35,39.5419,3.71755,0,0,-0.958819,0.284016,120,120,255,1); -- Bars

-- Tier 1
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+10,180813,1,1,1590.88,-4155.33,36.2980,3.68265,0,0,-0.963630,0.267241,120,120,255,1), -- Skinning
(@OGUID+11,180819,1,1,1637.10,-4147.25,36.0531,3.73501,0,0,-0.956305,0.292372,120,120,255,1), -- Herbs
(@OGUID+12,180827,1,1,1579.33,-4109.25,34.5487,3.71755,0,0,-0.958819,0.284016,120,120,255,1), -- Bandages
(@OGUID+13,180833,1,1,1619.80,-4092.53,34.4888,3.70010,0,0,-0.961261,0.275640,120,120,255,1), -- Cooking
(@OGUID+14,180839,1,1,1683.10,-4134.31,39.5390,3.73501,0,0,-0.956305,0.292372,120,120,255,1); -- Bars

-- Tier 2
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+20,180814,1,1,1590.88,-4155.33,36.2980,3.68265,0,0,-0.963630,0.267241,120,120,255,1), -- Skinning
(@OGUID+21,180820,1,1,1637.10,-4147.25,36.0531,3.73501,0,0,-0.956305,0.292372,120,120,255,1), -- Herbs
(@OGUID+22,180828,1,1,1579.33,-4109.25,34.5487,3.71755,0,0,-0.958819,0.284016,120,120,255,1), -- Bandages
(@OGUID+23,180834,1,1,1619.80,-4092.53,34.4888,3.70010,0,0,-0.961261,0.275640,120,120,255,1), -- Cooking
(@OGUID+24,180840,1,1,1683.10,-4134.31,39.5390,3.73501,0,0,-0.956305,0.292372,120,120,255,1); -- Bars

-- Tier 3
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+30,180815,1,1,1590.88,-4155.33,36.2980,3.68265,0,0,-0.963630,0.267241,120,120,255,1), -- Skinning
(@OGUID+31,180821,1,1,1637.10,-4147.25,36.0531,3.73501,0,0,-0.956305,0.292372,120,120,255,1), -- Herbs
(@OGUID+32,180829,1,1,1579.33,-4109.25,34.5487,3.71755,0,0,-0.958819,0.284016,120,120,255,1), -- Bandages
(@OGUID+33,180835,1,1,1619.80,-4092.53,34.4888,3.70010,0,0,-0.961261,0.275640,120,120,255,1), -- Cooking
(@OGUID+34,180841,1,1,1683.10,-4134.31,39.5390,3.73501,0,0,-0.956305,0.292372,120,120,255,1); -- Bars

-- Tier 4
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+40,180816,1,1,1590.88,-4155.33,36.2980,3.68265,0,0,-0.963630,0.267241,120,120,255,1), -- Skinning
(@OGUID+41,180822,1,1,1637.10,-4147.25,36.0531,3.73501,0,0,-0.956305,0.292372,120,120,255,1), -- Herbs
(@OGUID+42,180830,1,1,1579.33,-4109.25,34.5487,3.71755,0,0,-0.958819,0.284016,120,120,255,1), -- Bandages
(@OGUID+43,180836,1,1,1619.80,-4092.53,34.4888,3.70010,0,0,-0.961261,0.275640,120,120,255,1), -- Cooking
(@OGUID+44,180842,1,1,1683.10,-4134.31,39.5390,3.73501,0,0,-0.956305,0.292372,120,120,255,1); -- Bars

-- Tier 5
INSERT INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin,spawntimesecsmax, animprogress, state) VALUES
(@OGUID+50,180817,1,1,1590.88,-4155.33,36.2980,3.68265,0,0,-0.963630,0.267241,120,120,255,1), -- Skinning
(@OGUID+51,180823,1,1,1637.10,-4147.25,36.0531,3.73501,0,0,-0.956305,0.292372,120,120,255,1), -- Herbs
(@OGUID+52,180831,1,1,1579.33,-4109.25,34.5487,3.71755,0,0,-0.958819,0.284016,120,120,255,1), -- Bandages
(@OGUID+53,180837,1,1,1619.80,-4092.53,34.4888,3.70010,0,0,-0.961261,0.275640,120,120,255,1), -- Cooking
(@OGUID+54,180843,1,1,1683.10,-4134.31,39.5390,3.73501,0,0,-0.956305,0.292372,120,120,255,1); -- Bars

INSERT INTO `game_event_gameobject` (guid, event) VALUES
(@OGUID+0, 120),
(@OGUID+1, 120),
(@OGUID+2, 120),
(@OGUID+3, 120),
(@OGUID+4, 120),
(@OGUID+10, 131),
(@OGUID+11, 131),
(@OGUID+12, 131),
(@OGUID+13, 131),
(@OGUID+14, 131),
(@OGUID+20, 132),
(@OGUID+21, 132),
(@OGUID+22, 132),
(@OGUID+23, 132),
(@OGUID+24, 132),
(@OGUID+30, 133),
(@OGUID+31, 133),
(@OGUID+32, 133),
(@OGUID+33, 133),
(@OGUID+34, 133),
(@OGUID+40, 134),
(@OGUID+41, 134),
(@OGUID+42, 134),
(@OGUID+43, 134),
(@OGUID+44, 134),
(@OGUID+50, 135),
(@OGUID+51, 135),
(@OGUID+52, 135),
(@OGUID+53, 135),
(@OGUID+54, 135);

-- Add Alliance NPCs

SET @CGUID := 155200;

INSERT INTO `creature` (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(@CGUID+0,15707,0,1,0,0,-4956.09,-931.133,503.347,5.37561,120,0,0,15260,0,0),
(@CGUID+1,15453,0,1,0,0,-4979.93,-1142.17,501.743,3.68264,120,0,0,15260,0,0),
(@CGUID+2,15663,0,1,0,0,-4974.57,-1142.62,501.651,3.67119,120,0,0,4775,0,0),
(@CGUID+3,15451,0,1,0,0,-4971.57,-1151.56,501.739,3.56047,120,0,0,13495,0,0),
(@CGUID+4,15452,0,1,0,0,-4979.12,-1149.51,501.733,3.36849,120,0,0,14355,0,0),
(@CGUID+5,15446,0,1,0,0,-4972.2,-1169.06,501.72,3.28122,120,0,0,13495,0,0),
(@CGUID+6,15663,0,1,0,0,-4974.02,-1173.49,501.644,2.75801,120,0,0,4775,0,0),
(@CGUID+7,15701,0,1,0,0,-5014.82,-1177.38,501.665,3.94934,120,0,0,30520,0,0),
(@CGUID+8,15448,0,1,0,0,-4966.09,-1176.06,501.743,3.29867,120,0,0,14355,0,0),
(@CGUID+9,15450,0,1,0,0,-4969.46,-1180.24,501.743,3.24631,120,0,0,15260,0,0),
(@CGUID+10,15733,0,1,0,0,-4952.53,-1176.97,501.639,5.39307,120,0,0,2614,0,0),
(@CGUID+11,15734,0,1,0,0,-4975.34,-1196.76,501.746,1.88496,120,0,0,2614,0,0),
(@CGUID+12,15539,0,1,0,0,-4981.25,-1218.38,501.756,3.80482,120,0,0,15260,0,0),
(@CGUID+13,15731,0,1,0,0,-4935.17,-1197.7,501.622,2.46091,120,0,0,2614,0,0),
(@CGUID+14,5595,0,1,0,0,-4980.02,-1219.98,501.756,3.82227,120,0,0,5228,0,0),
(@CGUID+15,5595,0,1,0,0,-4982.47,-1216.81,501.756,3.87463,120,0,0,5228,0,0),
(@CGUID+16,15432,0,1,0,0,-4930.29,-1218.75,501.719,3.75246,120,0,0,15260,0,0),
(@CGUID+17,15735,0,1,0,0,-4934.99,-1214.31,501.718,3.33358,120,0,0,2614,0,0),
(@CGUID+18,15383,0,1,0,0,-4924.37,-1222.73,501.718,3.92699,120,0,0,13495,0,0),
(@CGUID+19,15431,0,1,0,0,-4914.17,-1227.49,501.733,3.59538,120,0,0,14355,0,0),
(@CGUID+20,15663,0,1,0,0,-4903.87,-1225.96,501.654,1.06236,120,0,0,4775,0,0),
(@CGUID+21,15434,0,1,0,0,-4952.25,-1274.45,501.757,1.79769,120,0,0,13495,0,0),
(@CGUID+22,15445,0,1,0,0,-4948.33,-1273.8,501.755,1.06465,120,0,0,15260,0,0),
(@CGUID+23,15663,0,1,0,0,-4944.85,-1277.7,501.756,4.31096,120,0,0,4775,0,0),
(@CGUID+24,15455,0,1,0,0,-4938,-1275.12,501.752,2.46091,120,0,0,13495,0,0),
(@CGUID+25,15456,0,1,0,0,-4940.39,-1277.7,501.754,1.98968,120,0,0,14355,0,0),
(@CGUID+26,15437,0,1,0,0,-4945.42,-1282.02,501.758,1.02974,120,0,0,14355,0,0),
(@CGUID+27,15663,0,1,0,0,-4937.83,-1280.14,501.671,1.45902,120,0,0,4775,0,0),
(@CGUID+28,15457,0,1,0,0,-4933.8,-1279.16,501.749,2.42601,120,0,0,15260,0,0),
(@CGUID+29,15708,0,1,0,0,-8813.75,654.07,96.160,4.83456,120,0,0,15260,0,0),
(@CGUID+30,15709,1,1,0,0,9945.22,2495.37,1317.553,3.61825,120,0,0,15260,0,0); -- Not sniffed (NPC in Darnassus)

INSERT INTO `game_event_creature` (guid, event) VALUES
(@CGUID+0, 120),
(@CGUID+1, 120),
(@CGUID+2, 120),
(@CGUID+3, 120),
(@CGUID+4, 120),
(@CGUID+5, 120),
(@CGUID+6, 120),
(@CGUID+7, 120),
(@CGUID+8, 120),
(@CGUID+9, 120),
(@CGUID+10, 120),
(@CGUID+11, 120),
(@CGUID+12, 120),
(@CGUID+13, 120),
(@CGUID+14, 120),
(@CGUID+15, 120),
(@CGUID+16, 120),
(@CGUID+17, 120),
(@CGUID+18, 120),
(@CGUID+19, 120),
(@CGUID+20, 120),
(@CGUID+21, 120),
(@CGUID+22, 120),
(@CGUID+23, 120),
(@CGUID+24, 120),
(@CGUID+25, 120),
(@CGUID+26, 120),
(@CGUID+27, 120),
(@CGUID+28, 120),
(@CGUID+29, 120),
(@CGUID+30, 120);

-- Alliance NPC fixes:

UPDATE creature_template SET Faction=64 WHERE entry=15707; -- Gnome has Silvermoon faction, should be gnomeregan exiles
DELETE FROM creature WHERE guid=86424; -- Alliance Recruiter spawned in the wrong location

-- Add Horde NPCs

SET @CGUID := 155231;

INSERT INTO `creature` (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(@CGUID+0,15515,1,1,0,0,1588.17,-4179.9,39.9849,2.89725,120,0,0,14195,0,0),
(@CGUID+1,15525,1,1,0,0,1595.76,-4174.4,39.7667,2.72271,120,0,0,15560,0,0),
(@CGUID+2,15739,1,1,0,0,1603.89,-4142.9,33.7818,2.44346,120,0,0,2914,0,0),
(@CGUID+3,15477,1,1,0,0,1615.01,-4145.53,35.132,1.37881,120,0,0,13795,0,0),
(@CGUID+4,15508,1,1,0,0,1625.95,-4149.42,36.3958,1.90241,120,0,0,14655,0,0),
(@CGUID+5,15522,1,1,0,0,1593.27,-4159.44,36.9024,2.94961,120,0,0,14655,0,0),
(@CGUID+6,15696,1,1,0,0,1592.02,-4164.73,37.6085,4.83162,120,0,0,5075,0,0),
(@CGUID+7,15696,1,1,0,0,1564.18,-4128.9,37.5756,2.1293,120,0,0,5075,0,0),
(@CGUID+8,15528,1,1,0,0,1580.17,-4116.11,34.4158,5.60251,120,0,0,13795,0,0),
(@CGUID+9,15529,1,1,0,0,1571.15,-4118.66,36.5842,5.02655,120,0,0,14655,0,0),
(@CGUID+10,15696,1,1,0,0,1629.61,-4143.04,34.7991,5.00909,120,0,0,5075,0,0),
(@CGUID+11,15532,1,1,0,0,1565.07,-4123.99,37.4408,0,120,0,0,15560,0,0),
(@CGUID+12,15736,1,1,0,0,1584.77,-4112.94,33.3777,5.41052,120,0,0,2914,0,0),
(@CGUID+13,15512,1,1,0,0,1633.26,-4142.12,34.7099,2.11185,120,0,0,15560,0,0),
(@CGUID+14,3296,1,1,0,0,1628.96,-4119.18,31.2441,2.0944,120,0,0,5528,0,0),
(@CGUID+15,3296,1,1,0,0,1632.31,-4117.6,31.2935,2.04204,120,0,0,5528,0,0),
(@CGUID+16,15737,1,1,0,0,1618.44,-4101.76,32.9524,5.23599,120,0,0,2914,0,0),
(@CGUID+17,15458,1,1,0,0,1630.69,-4118.46,31.2658,1.97222,120,0,0,15260,0,0),
(@CGUID+18,15459,1,1,0,0,1650.33,-4124.29,31.4523,2.6529,120,0,0,13795,0,0),
(@CGUID+19,15534,1,1,0,0,1629.79,-4089.15,35.6329,5.25344,120,0,0,14655,0,0),
(@CGUID+20,15535,1,1,0,0,1634.12,-4084.99,36.5257,5.21853,120,0,0,15560,0,0),
(@CGUID+21,15700,1,1,0,0,1643.9,-4098.41,33.2929,3.441,120,0,0,30820,0,0),
(@CGUID+22,15738,1,1,0,0,1660.36,-4107.45,34.6203,2.05949,120,0,0,2914,0,0),
(@CGUID+23,15469,1,1,0,0,1655.77,-4119.16,32.6951,1.32645,120,0,0,15560,0,0),
(@CGUID+24,15696,1,1,0,0,1639.42,-4082.15,37.4822,2.1293,120,0,0,5075,0,0),
(@CGUID+25,15533,1,1,0,0,1643.43,-4085.09,37.3372,4.67748,120,0,0,13795,0,0),
(@CGUID+26,15460,1,1,0,0,1665.76,-4117.5,34.3746,2.44346,120,0,0,14655,0,0),
(@CGUID+27,15696,1,1,0,0,1666.04,-4107.46,35.2114,1.46712,120,0,0,5075,0,0),
(@CGUID+28,15704,1,1,0,0,1653.07,-4403.81,18.5819,4.45059,120,0,0,15560,0,0),
(@CGUID+29,15703,0,1,0,0,1572.50,273.03,-43.103,4.89163,120,0,0,15260,0,0), -- Not sniffed (NPC in Undercity)
(@CGUID+30,15702,1,1,0,0,-1209.41,99.88,134.640,3.29459,120,0,0,15260,0,0); -- Not sniffed (NPC in Thunderbluff)

INSERT INTO `game_event_creature` (guid, event) VALUES
(@CGUID+0, 120),
(@CGUID+1, 120),
(@CGUID+2, 120),
(@CGUID+3, 120),
(@CGUID+4, 120),
(@CGUID+5, 120),
(@CGUID+6, 120),
(@CGUID+7, 120),
(@CGUID+8, 120),
(@CGUID+9, 120),
(@CGUID+10, 120),
(@CGUID+11, 120),
(@CGUID+12, 120),
(@CGUID+13, 120),
(@CGUID+14, 120),
(@CGUID+15, 120),
(@CGUID+16, 120),
(@CGUID+17, 120),
(@CGUID+18, 120),
(@CGUID+19, 120),
(@CGUID+20, 120),
(@CGUID+21, 120),
(@CGUID+22, 120),
(@CGUID+23, 120),
(@CGUID+24, 120),
(@CGUID+25, 120),
(@CGUID+26, 120),
(@CGUID+27, 120),
(@CGUID+28, 120),
(@CGUID+29, 120),
(@CGUID+30, 120);

-- Fix Horde Quests

UPDATE quest_template SET SpecialFlags=1 WHERE ENTRY IN (8605, 8608, 8610, 8614, 8583, 8589, 8591, 8581, 8543, 8601, 8550, 8612, 8546, 8616, 8553);

REPLACE INTO creature_questrelation (id, quest) VALUES
(15738, 8817), -- All of these quests can't be turned in
(15738, 8826), -- All of these quests can't be turned in
(15737, 8816), -- All of these quests can't be turned in
(15737, 8824), -- All of these quests can't be turned in
(15736, 8815), -- All of these quests can't be turned in
(15736, 8823), -- All of these quests can't be turned in
(15739, 8818), -- All of these quests can't be turned in
(15739, 8825), -- All of these quests can't be turned in
(15700, 8851), -- All of these quests do not have any text or requirement
(15700, 8852), -- All of these quests do not have any text or requirement
(15700, 8853), -- All of these quests do not have any text or requirement
(15700, 8854), -- All of these quests do not have any text or requirement
(15700, 8855), -- All of these quests do not have any text or requirement
(15702, 8792),
(15703, 8793),
(15704, 8794);

UPDATE creature_template SET NpcFlags=3 WHERE ENTRY IN (15738, 15737, 15376, 15739);
UPDATE creature_template SET NpcFlags=1 WHERE ENTRY IN (15458);

-- Fix Alliance Quests

UPDATE quest_template SET SpecialFlags=1 WHERE ENTRY IN (8516, 8512, 8521, 8525, 8518, 8527, 8493, 8506, 8523, 8504, 8514, 8500, 8495, 8529, 8510);
UPDATE quest_template SET PrevQuestId=0 WHERE ENTRY=8520;

REPLACE INTO creature_questrelation (id, quest) VALUES
(15733, 8812), -- All of these quests can't be turned in
(15733, 8820), -- All of these quests can't be turned in
(15731, 8811), -- All of these quests can't be turned in
(15731, 8819), -- All of these quests can't be turned in
(15735, 8814), -- All of these quests can't be turned in
(15735, 8822), -- All of these quests can't be turned in
(15734, 8813), -- All of these quests can't be turned in
(15734, 8821), -- All of these quests can't be turned in
(15701, 8848), -- All of these quests do not have any text or requirement
(15701, 8846), -- All of these quests do not have any text or requirement
(15701, 8847), -- All of these quests do not have any text or requirement
(15701, 8850), -- All of these quests do not have any text or requirement
(15701, 8849), -- All of these quests do not have any text or requirement
(15708, 8796),
(15707, 8795), -- For some reason the quest-giver still does not offer this quest
(15709, 8797);

UPDATE creature_template SET NpcFlags=2 WHERE ENTRY IN (15707);

-- 10 hour war

UPDATE creature_template SET UnitFlags=33554496 WHERE entry IN(15769,15770,15771,15804,15805);

UPDATE gameobject_template SET type=8 WHERE entry = 180810;
UPDATE gameobject_template SET type=6 WHERE entry = 180811;

SET @CGUID := 155300;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(@CGUID+1, 15769, 1, 1, -5297.80419921875, -1808.358154296875, -55.2550277709960937, 0.366519153118133544, 7200, 7200, 0, 0, 0, 0),
(@CGUID+2, 15769, 1, 1, -5547.27001953125, -2576.876220703125, -56.5728492736816406, 0.366519153118133544, 7200, 7200, 0, 0, 0, 0),
(@CGUID+3, 15769, 1, 1, -5511.123046875, -3270.021240234375, -38.3257217407226562, 0.366519153118133544, 7200, 7200, 0, 0, 0, 0),

(@CGUID+4, 15770, 1, 1, -5752.86572265625, -3508.636962890625, -58.196075439453125, 0.366519153118133544, 7200, 7200, 0, 0, 0, 0),
(@CGUID+5, 15770, 1, 1, -6110.93994140625, -3953.747802734375, -58.6666603088378906, 0.366519153118133544, 7200, 7200, 0, 0, 0, 0),
(@CGUID+6, 15770, 1, 1, -6574.66748046875, -3651.53125, -58.6666069030761718, 5.475795269012451171, 7200, 7200, 0, 0, 0, 0),

(@CGUID+7, 15771, 1, 1, -4392.78271484375, 231.7254791259765625, 25.49722099304199218, 2.627256155014038085, 7200, 7200, 0, 0, 0, 0),
(@CGUID+8, 15771, 1, 1, -7178.646484375, -3779.15625, 8.466841697692871093, 5.207928180694580078, 7200, 7200, 0, 0, 0, 0),
(@CGUID+9, 15771, 1, 1, -7365.859375, -4015.01220703125, 9.742092132568359375, 5.570057392120361328, 7200, 7200, 0, 0, 0, 0),
(@CGUID+10, 15771, 1, 1, -7570.94970703125, -4508.0400390625, 9.835427284240722656, 5.234058380126953125, 7200, 7200, 0, 0, 0, 0),
(@CGUID+11, 15771, 1, 1, -8506.68359375, -2554.55517578125, 43.36404037475585937, 1.474461674690246582, 7200, 7200, 0, 0, 0, 0),
(@CGUID+12, 15771, 1, 1, -7321.24853515625, -3197.9775390625, 11.76454448699951171, 5.218534469604492187, 7200, 7200, 0, 0, 0, 0),
(@CGUID+13, 15771, 1, 1, -7391.74072265625, -3650.536376953125, 10.30735397338867187, 5.223543167114257812, 7200, 7200, 0, 0, 0, 0),
(@CGUID+14, 15771, 1, 1, -7810.96875, -3326.784912109375, 60.58126449584960937, 2.162371635437011718, 7200, 7200, 0, 0, 0, 0),
(@CGUID+15, 15771, 1, 1, -6850.34521484375, 182.708770751953125, 1.185373425483703613, 3.730226993560791015, 7200, 7200, 0, 0, 0, 0),

(@CGUID+16, 15804, 1, 1, -4108.10693359375, -1927.1810302734375, 94.61756134033203125, 2.042035102844238281, 7200, 7200, 0, 0, 0, 0),
(@CGUID+17, 15804, 1, 1, -3819.91455078125, -2212.400146484375, 92.1140594482421875, 2.042035102844238281, 7200, 7200, 0, 0, 0, 0),
(@CGUID+18, 15804, 1, 1, -3284.11669921875, -2153.786376953125, 93.442779541015625, 2.042035102844238281, 7200, 7200, 0, 0, 0, 0),

(@CGUID+19, 15805, 1, 1, -850.4393310546875, -3217.165283203125, 92.09395599365234375, 5.672319889068603515, 7200, 7200, 0, 0, 0, 0),
(@CGUID+20, 15805, 1, 1, -786.23968505859375, -2783.926513671875, 94.01892852783203125, 5.672319889068603515, 7200, 7200, 0, 0, 0, 0),
(@CGUID+21, 15805, 1, 1, -149.894744873046875, -2217.504150390625, 93.15654754638671875, 5.672319889068603515, 7200, 7200, 0, 0, 0, 0),

(@CGUID+22, 15797, 1, 1, -6826.1064453125, 813.5706787109375, 51.644378662109375, 5.497786998748779296, 7200, 7200, 0, 0, 0, 0),
(@CGUID+23, 15798, 1, 1, -6824.03271484375, 813.16961669921875, 51.44177627563476562, 3.525565147399902343, 7200, 7200, 0, 0, 0, 0),
(@CGUID+24, 15799, 1, 1, -6825.0078125, 811.38873291015625, 51.84661483764648437, 1.675516128540039062, 7200, 7200, 0, 0, 0, 0),
(@CGUID+25, 15740, 1, 1, -7340.2,1643.75,-34.0787,4.01405, 1800, 1800, 0, 0, 0, 0),
(@CGUID+26, 15741, 1, 1, -7824.52,663.901,-34.1379,2.20763, 1800, 1800, 0, 0, 0, 0),
(@CGUID+27, 15742, 1, 1, -6545.32,967.875,0.374282,0.785268, 1800, 1800, 0, 0, 0, 0);

-- spawns around crystals
REPLACE INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(@CGUID+28,15743,1,1,-8231.39,1432.26,2.33149,0.690981,300,300,10,1),
(@CGUID+29,15743,1,1,-8180.58,1611.38,1.44378,4.93212,300,300,10,1),
(@CGUID+30,15743,1,1,-8258.69,1605.24,8.64291,5.53688,300,300,10,1),
(@CGUID+31,15743,1,1,-8263.45,1531.53,-4.76692,6.24374,300,300,10,1),
(@CGUID+32,15743,1,1,-8276.56,1477.66,5.92105,0.219736,300,300,10,1),
(@CGUID+33,15743,1,1,-8176.15,1528.93,4.19536,6.16127,300,300,10,1),
(@CGUID+34,15743,1,1,-8104.96,1492.73,2.61911,6.26417,300,300,10,1),
(@CGUID+35,15743,1,1,-8104.87,1555.11,4.34174,6.26417,300,300,10,1),
(@CGUID+36,15743,1,1,-8007.78,1529.98,2.71,3.35,1200,1200,10,1),
(@CGUID+37,15743,1,1,-7936.39,1562.84,0.52,4.71,1200,1200,10,1),
(@CGUID+38,15743,1,1,-7916.88,1467.56,-5.52,2.49,1200,1200,10,1),
(@CGUID+39,15743,1,1,-7771.52,1195.07,-1,5.41,1200,1200,10,1),
(@CGUID+40,15743,1,1,-7763.24,1180.4,-0.18,0.11,1200,1200,10,1),
(@CGUID+41,15743,1,1,-7752.61,1196.55,4.89,2.54,1200,1200,10,1),
(@CGUID+42,15743,1,1,-7756.54,1210.81,5.17,3.84,1200,1200,10,1),
(@CGUID+43,15743,1,1,-7795.33,1205.43,-0.12,5.86,1200,1200,10,1),
(@CGUID+44,15743,1,1,-7801.54,1185.79,1.39,0.26,1200,1200,10,1),
(@CGUID+45,15743,1,1,-7792.29,1166.07,2.42,0.73,1200,1200,10,1),
(@CGUID+46,15743,1,1,-7777.31,1143.89,2.21,1.25,1200,1200,10,1),
(@CGUID+47,15743,1,1,-7749.95,1150.64,0.63,5.76,1200,1200,10,1),
(@CGUID+48,15743,1,1,-7729.25,1179.73,0.79,2.07,1200,1200,10,1),
(@CGUID+49,15743,1,1,-8056.69,1510.31,2.61,0.41,1200,1200,0,0),
(@CGUID+50,15743,1,1,-8049.95,1550.46,2.63,5.72,1200,1200,0,0),
(@CGUID+51,15743,1,1,-8055.82,1532.99,2.88,0.21,1200,1200,0,0),
(@CGUID+52,15743,1,1,-8001.1,1568.4,3.03,4.4,1200,1200,10,1),
(@CGUID+53,15743,1,1,-7983.65,1548.46,3.65,3.95,1200,1200,10,1),
(@CGUID+54,15748,1,1,-5552.61,-2540.5,-56.0501,6.01233,720,720,30,1),
(@CGUID+55,15748,1,1,-5552.61,-2540.5,-56.0501,6.01233,720,720,30,1),
(@CGUID+56,15751,1,1,-6438.32,-3780.98,-58.7494,4.83424,720,720,10,1),
(@CGUID+57,15751,1,1,-6438.32,-3780.98,-58.7494,4.83424,720,720,10,1),
(@CGUID+58,15754,1,1,-7421.22,-3586.44,9.84216,5.21436,720,720,40,1),
(@CGUID+59,15754,1,1,-7421.22,-3586.44,9.84216,5.21436,720,720,40,1),
(@CGUID+60,15754,1,1,-7177.35,-3774.91,8.46031,4.79025,720,720,20,1),
(@CGUID+61,15754,1,1,-7177.35,-3774.91,8.46031,4.79025,720,720,20,1),
(@CGUID+62,15754,1,1,-4430.28,3285.2,12.3331,4.83424,720,720,20,1),
(@CGUID+63,15754,1,1,-4430.28,3285.2,12.3331,4.83424,720,720,20,1),
(@CGUID+64,15754,1,1,-7764,-1444.7,-271.92,4.83424,720,720,40,1),
(@CGUID+65,15754,1,1,-7764,-1444.7,-271.92,4.83424,720,720,40,1),
(@CGUID+66,15754,1,1,-7867.85,1741.25,-0.224884,0.5002,720,720,40,1),
(@CGUID+67,15754,1,1,-7867.85,1741.25,-0.224884,0.5002,720,720,40,1),
(@CGUID+68,15754,1,1,-6976.43,1634.07,-1.2313,4.22693,720,720,40,1),
(@CGUID+69,15754,1,1,-6976.43,1634.07,-1.2313,4.22693,720,720,40,1),
(@CGUID+70,15758,1,1,-8441.04,-2527.39,50.3478,1.19627,720,720,40,1),
(@CGUID+71,15758,1,1,-8441.04,-2527.39,50.3478,1.19627,720,720,40,1),
(@CGUID+72,15758,1,1,-7310.71,619.718,5.18511,1.3021,720,720,40,1),
(@CGUID+73,15758,1,1,-7310.71,619.718,5.18511,1.3021,720,720,40,1),
(@CGUID+74,15807,1,1,-3416.43,-1910.29,94.4884,6.01233,720,720,40,1),
(@CGUID+75,15807,1,1,-3416.43,-1910.29,94.4884,6.01233,720,720,40,1),
(@CGUID+76,15810,1,1,-2666.22,-1981.12,97.9171,2.91394,720,720,40,1),
(@CGUID+77,15810,1,1,-2666.22,-1981.12,97.9171,2.91394,720,720,40,1),
(@CGUID+78,15818,1,1,-8441.04,-2527.39,50.3478,1.19627,900,900,20,1),
(@CGUID+79,15818,1,1,-7310.71,619.718,5.18511,1.3021,900,900,20,1),
(@CGUID+80,15341,1,1,-8132.336,1525.154,37.974834,6.108652114868164062,900,900,20,1);

REPLACE INTO game_event_creature SELECT guid, 123 FROM creature WHERE guid BETWEEN @CGUID + 1 AND @CGUID + 80;

SET @OGUID := 155400;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+1, 180810, 1, 1, -784.85382080078125, -2784.091552734375, 93.9261474609375, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464, 7200, 7200, 100, 1),
(@OGUID+2, 180810, 1, 1, -151.529251098632812, -2217.197998046875, 93.19226837158203125, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464, 7200, 7200, 100, 1),
(@OGUID+3, 180810, 1, 1, -4389.79541015625, 234.7724151611328125, 25.41332817077636718, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468, 7200, 7200, 100, 1),
(@OGUID+4, 180810, 1, 1, -5299.21484375, -1801.2080078125, -55.0768013000488281, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 7200, 7200, 100, 1),
(@OGUID+5, 180810, 1, 1, -5547.0712890625, -2573.66748046875, -56.9618606567382812, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 7200, 7200, 100, 1),
(@OGUID+6, 180810, 1, 1, -5505.51123046875, -3272.310546875, -37.8578376770019531, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 7200, 7200, 100, 1),
(@OGUID+7, 180810, 1, 1, -5755.12744140625, -3509.98193359375, -58.3238525390625, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 7200, 7200, 100, 1),
(@OGUID+8, 180810, 1, 1, -6111.70166015625, -3950.40625, -58.7500076293945312, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 7200, 7200, 100, 1),
(@OGUID+9, 180810, 1, 1, -6578.681640625, -3657.219970703125, -58.7499542236328125, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 7200, 7200, 100, 1),
(@OGUID+10, 180810, 1, 1, -7179.62109375, -3776.963134765625, 8.513767242431640625, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 7200, 7200, 100, 1),
(@OGUID+11, 180810, 1, 1, -7366.1494140625, -4012.264892578125, 9.620676040649414062, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 7200, 7200, 100, 1),
(@OGUID+12, 180810, 1, 1, -7568.90380859375, -4508.11572265625, 9.618767738342285156, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 7200, 7200, 100, 1),
(@OGUID+13, 180810, 1, 1, -8640.0673828125, -3784.345458984375, 21.43636322021484375, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 7200, 7200, 100, 1),
(@OGUID+14, 180810, 1, 1, -8509.15234375, -2551.646484375, 43.70940017700195312, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 7200, 7200, 100, 1),
(@OGUID+15, 180810, 1, 1, -7319.48779296875, -3199.294921875, 11.41134262084960937, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 7200, 7200, 100, 1),
(@OGUID+16, 180810, 1, 1, -7389.5224609375, -3649.8984375, 10.04873371124267578, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 7200, 7200, 100, 1),
(@OGUID+17, 180810, 1, 1, -7809.1083984375, -3325.490966796875, 59.96866226196289062, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 7200, 7200, 100, 1),
(@OGUID+18, 180810, 1, 1, -6850.60595703125, 183.6371612548828125, 1.118237018585205078, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293, 7200, 7200, 100, 1),
(@OGUID+19, 180810, 1, 1, -4108.0380859375, -1921.974853515625, 94.608001708984375, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492, 7200, 7200, 100, 1),
(@OGUID+20, 180810, 1, 1, -3816.973876953125, -2213.9365234375, 92.49057769775390625, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492, 7200, 7200, 100, 1),
(@OGUID+21, 180810, 1, 1, -3283.38916015625, -2151.914306640625, 93.2244415283203125, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492, 7200, 7200, 100, 1);

INSERT INTO game_event_gameobject SELECT guid, 123 FROM gameobject WHERE guid BETWEEN @CGUID + 1 AND @CGUID + 21;

DELETE FROM game_event_quest WHERE quest IN(8857,8858,8859,8743);
INSERT INTO game_event_quest VALUEs
(8857,123),
(8858,123),
(8859,123),
(8743,122),
(8743,123);

-- make colossi active
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00001000 WHERE entry IN(15740,15741,15742);
-- use correct gong - the other is for post-war effort opened servers
UPDATE gameobject SET Id = 180717 WHERE Id IN(180718);


