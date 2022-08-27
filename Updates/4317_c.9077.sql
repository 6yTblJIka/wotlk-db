-- Warlord Goretooth 9077 - RP Fix
UPDATE creature SET MovementType=2 WHERE id = 9077;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 9077;
DELETE FROM creature_movement_template WHERE entry = 9077;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(9077,1,-6677.62,-2224.11,278.559,100,0,907701),
(9077,2,-6677.62,-2224.11,278.559,100,0,0),
(9077,3,-6666.75,-2223.21,278.58,100,0,0),
(9077,4,-6661.61,-2231.73,278.446,100,0,0),
(9077,5,-6666.28,-2243.37,272.058,100,0,0),
(9077,6,-6677.49,-2244.14,272.019,100,0,0),
(9077,7,-6679.47,-2232.97,272.045,100,0,0),
(9077,8,-6672.57,-2227.45,269.454,100,0,0),
(9077,9,-6668.03,-2233.48,266.891,100,0,0),
(9077,10,-6674.64,-2238.53,264.064,100,0,0),
(9077,11,-6680.17,-2230.43,260.373,100,0,907702),
(9077,12,-6647.47,-2210.55,245.571,100,0,0),
(9077,13,-6646.23,-2200.34,244.144,100,0,0),
(9077,14,-6653.89,-2191.76,244.144,100,0,0),
(9077,15,-6680.09,-2174.92,244.158,100,0,0),
(9077,16,-6686.56,-2165.76,244.144,100,0,907703),
(9077,17,-6686.56,-2165.76,244.144,100,0,0),
(9077,18,-6679.02,-2153.74,244.144,100,0,907704),
(9077,19,-6679.02,-2153.74,244.144,100,0,0),
(9077,20,-6686.15,-2165.75,244.144,100,0,0),
(9077,21,-6679.55,-2175.26,244.158,100,0,0),
(9077,22,-6653.74,-2191.61,244.145,100,0,0),
(9077,23,-6646.55,-2203.24,244.145,100,0,0),
(9077,24,-6649.67,-2210.69,246.134,100,0,0),
(9077,25,-6679.81,-2230.96,260.432,100,0,0),
(9077,26,-6673.88,-2238.29,264.133,100,0,0),
(9077,27,-6667.92,-2233.3,266.899,100,0,0),
(9077,28,-6672.64,-2227.78,269.461,100,0,0),
(9077,29,-6679.08,-2233.75,272.046,100,0,0),
(9077,30,-6677.21,-2244.13,272.023,100,0,0),
(9077,31,-6666.05,-2243.3,272.203,100,0,0),
(9077,32,-6661.79,-2230.97,278.574,100,0,0),
(9077,33,-6666.63,-2223.8,278.563,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 907701 AND 907704;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(907701,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'pause WP movement'),
(907701,1000,29,3,1,0,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added'),
(907701,5000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.56563,''),
(907702,0,0,0,0,0,9083,100,7,4661,0,0,0,0,0,0,0,''),
(907702,8000,0,0,0,0,9085,100,7,4662,0,0,0,0,0,0,0,''),
(907702,10000,0,0,0,0,9085,100,7,4663,0,0,0,0,0,0,0,''),
(907702,20000,0,0,0,0,9086,100,7,4664,0,0,0,0,0,0,0,''),
(907702,24000,0,0,0,0,9086,100,7,4665,0,0,0,0,0,0,0,''),
(907702,26000,0,0,0,0,9082,100,7,4666,0,0,0,0,0,0,0,''),
(907702,28000,0,0,0,0,9086,100,7,4667,0,0,0,0,0,0,0,''),
(907702,29000,0,0,0,0,9082,100,7,4668,0,0,0,0,0,0,0,''),
(907702,32000,0,0,0,0,9084,100,7,4669,0,0,0,0,0,0,0,''),
(907703,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'pause WP movement'),
(907703,1000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.02664,''),
(907703,2000,3,0,0,0,9082,15,3,0,0,0,0,0,0,0,5.17217,''),
(907703,2000,0,0,0,0,0,0,0,4673,0,0,0,0,0,0,0,''),
(907703,6000,0,0,0,0,9082,15,7,4672,0,0,0,0,0,0,0,''),
(907703,10000,0,0,0,0,0,0,0,4688,0,0,0,0,0,0,0,''),
(907703,16000,0,0,0,0,9082,15,7,4690,0,0,0,0,0,0,0,''),
(907703,18000,3,0,0,0,9082,15,7,0,0,0,0,0,0,0,2.38871,''),
(907703,19000,0,0,0,0,9082,15,7,4691,0,0,0,0,0,0,0,''),
(907703,22000,32,0,0,0,9082,15,7,0,0,0,0,0,0,0,0,'unpause WP movement'),
(907703,22000,32,0,0,0,9083,15,7,0,0,0,0,0,0,0,0,'unpause WP movement'),
(907703,22000,32,0,0,0,9084,15,7,0,0,0,0,0,0,0,0,'unpause WP movement'),
(907703,22000,32,0,0,0,9085,15,7,0,0,0,0,0,0,0,0,'unpause WP movement'),
(907703,22000,32,0,0,0,9086,15,7,0,0,0,0,0,0,0,0,'unpause WP movement'),
(907703,23000,29,2,0,0,9082,15,7,0,0,0,0,0,0,0,0,'npcFlags removed'),
(907703,23000,29,2,0,0,9084,15,7,0,0,0,0,0,0,0,0,'npcFlags removed'),
(907703,28000,0,0,0,0,9079,35,7,4679,0,0,0,0,0,0,0,''),
(907703,32000,0,0,0,0,9078,35,7,4683,0,0,0,0,0,0,0,''),
(907703,37000,0,0,0,0,9079,35,7,4685,0,0,0,0,0,0,0,''),
(907703,43000,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unpause WP movement'),
(907703,45000,0,0,0,0,9078,35,7,4687,0,0,0,0,0,0,0,''),
(907703,46000,0,0,0,0,9078,35,7,4686,0,0,0,0,0,0,0,''),
(907704,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'pause WP movement'),
(907704,1000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.90471,''),
(907704,2000,0,0,0,0,0,0,0,4689,0,0,0,0,0,0,0,''),
(907704,3000,36,0,0,0,9079,15,3,0,0,0,0,0,0,0,0,'face Goretooth'),
(907704,3000,36,0,0,0,9078,15,3,0,0,0,0,0,0,0,0,'face Goretooth'),
(907704,6000,0,0,0,0,9079,35,7,4694,0,0,0,0,0,0,0,''),
(907704,7000,0,0,0,0,9078,35,7,4693,0,0,0,0,0,0,0,''),
(907704,10000,0,0,0,0,0,0,0,4695,0,0,0,0,0,0,0,''),
(907704,14000,0,0,0,0,0,0,0,4696,0,0,0,0,0,0,0,''),
(907704,20000,0,0,0,0,0,0,0,4697,0,0,0,0,0,0,0,''),
(907704,27000,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unpause WP movement'),
(907704,28000,36,1,0,0,9079,15,3,0,0,0,0,0,0,0,0,'reset orientation'),
(907704,28000,36,1,0,0,9078,15,3,0,0,0,0,0,0,0,0,'reset orientation');
-- texts
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `Id` IN (4664,4669);
