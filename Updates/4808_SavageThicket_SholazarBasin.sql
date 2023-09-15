-- The Savage Thicket - Sholazar Basin

-- Primordial Hatchling 28389
-- comes from spell
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28389);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id = 28389);
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id = 28389);
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id = 28389);
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id = 28389);
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id = 28389)
 OR master_guid IN(SELECT guid FROM creature WHERE id = 28389);
DELETE FROM creature WHERE id = 28389;

-- Primordial Drake 28378
-- missing added - deleted guids reused
DELETE FROM creature_addon WHERE guid IN (522541,522542,522543,522544);
DELETE FROM creature_movement WHERE Id IN (522541,522542,522543,522544);
DELETE FROM game_event_creature WHERE guid IN (522541,522542,522543,522544);
DELETE FROM game_event_creature_data WHERE guid IN (522541,522542,522543,522544);
DELETE FROM creature_battleground WHERE guid IN (522541,522542,522543,522544);
DELETE FROM creature_linking WHERE guid IN (522541,522542,522543,522544)  
 OR master_guid IN (522541,522542,522543,522544);
DELETE FROM creature WHERE guid IN (522541,522542,522543,522544);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(522541,28378,571,1,1,6447.2256,4964.224,-64.386154,3.2503,300,300,10,1),
(522542,28378,571,1,1,6587.436,4921.6606,-43.593872,6.26524,300,300,10,1),
(522543,28378,571,1,1,6598.9873,4867.5693,-40.413853,4.84596,300,300,10,1),
(522544,28378,571,1,1,6376.88,4931.51,-76.1633,1.06221,300,300,10,1);
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid IN (522449,522450,522452);
UPDATE creature SET position_x = 6541.340332, position_y = 4973.998047, position_z = -53.159420 WHERE guid = 522450;
UPDATE creature SET position_x = 6369.618652, position_y = 4853.079590, position_z = -79.987640 WHERE guid = 522449;
UPDATE creature SET position_x = 6531.6826, position_y = 4960.001, position_z = -27.081194, spawndist = 0, MovementType = 3 WHERE guid = 522451; -- circle
UPDATE creature SET position_x = 6441.9785, position_y = 4942.7847, position_z = -40.470608, spawndist = 0, MovementType = 3 WHERE guid = 522453; -- circle
UPDATE creature SET position_x = 6576.4126, position_y = 4831.391, position_z = -28.619038, spawndist = 0, MovementType = 3 WHERE guid = 522458; -- circle
UPDATE creature SET position_x = 6556.3125, position_y = 4828.8867, position_z = -20.00649, spawndist = 0, MovementType = 3 WHERE guid = 522446; -- circle
UPDATE creature SET position_x = 6564.859, position_y = 4805.072, position_z = -25.523247, spawndist = 0, MovementType = 3 WHERE guid = 522454; -- circle
UPDATE creature SET position_x = 6490.367, position_y = 4773.5464, position_z = -43.589474, spawndist = 0, MovementType = 3 WHERE guid = 522447; -- circle
UPDATE creature SET position_x = 6478.3203, position_y = 4808.337, position_z = -63.226837, spawndist = 0, MovementType = 2 WHERE guid = 522460; -- normal wps on the ground
UPDATE creature SET position_x = 6571.393, position_y = 4760.393, position_z = -42.90209, spawndist = 0, MovementType = 2 WHERE guid = 522459; -- normal wps on the ground
DELETE FROM creature_spawn_data WHERE guid IN (
522451,522453,522458,522446,522454,522447,522448,522449,522450,522452,522455,522456,522457,522459,522460,522541,522542,522543,522544);
INSERT INTO creature_spawn_data (guid, Id) VALUES
-- fly
(522451,20056),(522453,20056),(522458,20056),
(522446,20056),(522454,20056),(522447,20056),
-- RP
(522448,80),(522449,80),(522450,80),(522452,80),
(522455,80),(522456,80),(522457,80),(522459,80),
(522460,80),(522541,80),(522542,80),(522543,80),
(522544,80);
-- waypoints
DELETE FROM creature_movement WHERE Id IN (522451,522453,522458,522446,522454,522447,522460,522459);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 522453
(522453,1,6441.9785,4942.7847,-40.470608,100,0,0),
(522453,2,6417.2246,4999.754,-39.053936,100,0,0),
(522453,3,6466.7603,5015.5615,-39.053936,100,0,0),
(522453,4,6502.6665,4956.4077,-35.831707,100,0,0),
-- 522451
(522451,1,6531.6826,4960.001,-27.081194,100,0,0),
(522451,2,6492.444,4963.5596,-41.60505,100,0,0),
(522451,3,6455.5186,5020.4243,-38.664524,100,0,0),
(522451,4,6544.3354,5005.1387,-30.275633,100,0,0),
-- 522458
(522458,1,6576.4126,4831.391,-28.619038,100,0,0),
(522458,2,6566.9326,4779.276,-28.61904,100,0,0),
(522458,3,6541.8164,4779.316,-28.61904,100,0,0),
(522458,4,6511.7017,4873.4893,-28.61904,100,0,0),
-- 522446
(522446,1,6556.3125,4828.8867,-20.00649,100,0,0),
(522446,2,6619.51,4792.1094,-7.673158,100,0,0),
(522446,3,6606.662,4760.3267,-7.673159,100,0,0),
(522446,4,6550.2725,4757.979,-22.784271,100,0,0),
-- 522454
(522454,1,6564.859,4805.072,-25.523247,100,0,0),
(522454,2,6515.902,4828.549,-32.21769,100,0,0),
(522454,3,6461.976,4799.9487,-38.384354,100,0,0),
(522454,4,6532.1816,4750.3145,-29.63436,100,0,0),
-- 522447
(522447,1,6490.367,4773.5464,-43.589474,100,0,0),
(522447,2,6473.398,4824.4917,-43.589474,100,0,0),
(522447,3,6422.3647,4804.9863,-47.978367,100,0,0),
(522447,4,6420.7446,4749.4673,-55.33948,100,0,0),
-- 522460
(522460,1,6478.3203,4808.337,-63.226837,100,0,0),
(522460,2,6483.7817,4783.5786,-61.316963,100,0,0),
(522460,3,6467.887,4762.3145,-66.99726,100,0,0),
(522460,4,6442.39,4767.922,-72.27755,100,0,0),
(522460,5,6438.8926,4790.8125,-69.389244,100,0,0),
(522460,6,6446.5366,4813.372,-67.22566,100,0,0),
-- 522459
(522459,1,6571.393,4760.393,-42.90209,100,0,0),
(522459,2,6575.634,4783.474,-43.868015,100,0,0),
(522459,3,6594.91,4805.65,-39.1209,100,0,0),
(522459,4,6611.66,4805.07,-33.2958,100,0,0),
(522459,5,6620.4707,4791.9126,-28.522045,100,0,0),
(522459,6,6618.19,4769.48,-27.2902,100,0,0),
(522459,7,6601.57,4753.98,-33.7515,100,0,0);
DELETE FROM dbscripts_on_relay WHERE id IN (20747);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20747,1,31,28408,35,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Primordial Drake 28378 EAI: search for 28408'),
(20747,100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Primordial Drake 28378 EAI: idle'),
(20747,200,15,52791,0,0,28408,40,1,0,0,0,0,0,0,0,0,'Part of Primordial Drake 28378 EAI: cast 28408 on buddy'),
(20747,300,15,52793,0,0,28408,40,1,0,0,0,0,0,0,0,0,'Part of Primordial Drake 28378 EAI: cast 28408 on buddy'),
(20747,600,15,52793,0,0,28408,40,1,0,0,0,0,0,0,0,0,'Part of Primordial Drake 28378 EAI: cast 28408 on buddy'),
(20747,1200,15,52793,0,0,28408,40,1,0,0,0,0,0,0,0,0,'Part of Primordial Drake 28378 EAI: cast 28408 on buddy'),
(20747,1500,15,52793,0,0,28408,40,1,0,0,0,0,0,0,0,0,'Part of Primordial Drake 28378 EAI: cast 28408 on buddy'),
(20747,2000,20,1,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Primordial Drake 28378 EAI: random movement');
DELETE FROM spell_script_target WHERE entry IN (52791,52793);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(52791, 1, 28408, 0),
(52793, 1, 28408, 0);
