-- Vyragosa 32630 - RARE
DELETE FROM creature_addon WHERE guid = 529999;
DELETE FROM creature_movement WHERE id = 529999;
DELETE FROM game_event_creature WHERE guid = 529999;
DELETE FROM game_event_creature_data WHERE guid = 529999;
DELETE FROM creature_battleground WHERE guid = 529999;
DELETE FROM creature_linking WHERE guid = 529999;
DELETE FROM creature where guid = 529999;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(529999,32630,571,1,1,8552.25,-1840.7164,1218.1696,0,1800,1800,0,3);
DELETE FROM creature_movement WHERE Id = 529999;
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 529999
(529999,1 ,8552.25,-1840.7164,1218.1696,100,0,0),
(529999,2 ,8779.759,-1805.3567,1133.3701,100,0,0),
(529999,3 ,8701.221,-1497.6964,1100.3424,100,0,0),
(529999,4 ,8733.956,-1012.6282,1076.3695,100,0,0),
(529999,5 ,8408.414,-431.63272,1088.1477,100,0,0),
(529999,6 ,8405.614,-182.20302,1072.8145,100,0,0),
(529999,7 ,8228.933,-29.402561,914.3981,100,0,0),
(529999,8 ,8059.836,-96.12364,906.2314,100,0,0),
(529999,9 ,7810.983,-182.98286,913.42584,100,0,0),
(529999,10,7638.4663,-111.84408,906.2314,100,0,0),
(529999,11,7349.9976,-102.84853,886.7314,100,0,0),
(529999,12,7113.3315,-137.00233,842.8705,100,0,0),
(529999,13,7059.893,-332.83685,855.03705,100,0,0),
(529999,14,7070.1587,-491.7232,814.59265,100,0,0),
(529999,15,7059.134,-689.23224,895.12006,100,0,0),
(529999,16,7291.46,-885.5358,996.83057,100,0,0),
(529999,17,7530.8647,-1359.9332,996.8305,100,0,0),
(529999,18,7708.8853,-1645.6808,1328.4745,100,0,0),
(529999,19,7830.276,-1772.002,1340.2527,100,0,0),
(529999,20,8155.9966,-1551.6888,1312.6693,100,0,0),
(529999,21,8489.116,-1677.1376,1285.9747,100,0,0);
DELETE FROM `spawn_group` WHERE id = 33002;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33002, 'Storm Peaks - Vyragosa 32630 - RARE', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33002;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33002, 529999, -1);
DELETE FROM creature_spawn_data WHERE guid IN (529999);
INSERT INTO creature_spawn_data (`guid`, `id`) VALUES 
(529999,20056);
