-- Aotona 32481
DELETE FROM creature_addon WHERE guid IN (520328,520352,520355,520357,520358);
DELETE FROM creature_movement WHERE Id IN (520328,520352,520355,520357,520358);
DELETE FROM game_event_creature WHERE guid IN (520328,520352,520355,520357,520358);
DELETE FROM game_event_creature_data WHERE guid IN (520328,520352,520355,520357,520358);
DELETE FROM creature_battleground WHERE guid IN (520328,520352,520355,520357,520358);
DELETE FROM creature_linking WHERE guid IN (520328,520352,520355,520357,520358)  
 OR master_guid IN (520328,520352,520355,520357,520358);
DELETE FROM creature WHERE guid IN (520328,520352,520355,520357,520358);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(520328,32481,571,1,1,5390.5376,4433.8926,-138.12128,0.8151,28800,28800,15,1),
(520352,32481,571,1,1,5278.45,5000.45,-134.987,4.73295,28800,28800,15,1),
(520355,32481,571,1,1,5169.58,4632.44,-132.482,0.611179,28800,28800,15,1),
(520357,32481,571,1,1,5762.54,5070.1,-134.572,2.28407,28800,28800,15,1), -- poss waypoints
(520358,32481,571,1,1,5734.49,4726.46,-133.774,5.87805,28800,28800,15,1);
DELETE FROM `spawn_group` WHERE id = 32534;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32534, 'Sholazar Basin - Aotona 32481 - Rare', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32534;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32534, 520328, -1),
(32534, 520352, -1),
(32534, 520355, -1),
(32534, 520357, -1),
(32534, 520358, -1);

-- King Krush 32485
DELETE FROM creature_addon WHERE guid IN (520359,520364,520376);
DELETE FROM creature_movement WHERE Id IN (520359,520364,520376);
DELETE FROM game_event_creature WHERE guid IN (520359,520364,520376);
DELETE FROM game_event_creature_data WHERE guid IN (520359,520364,520376);
DELETE FROM creature_battleground WHERE guid IN (520359,520364,520376);
DELETE FROM creature_linking WHERE guid IN (520359,520364,520376)  
 OR master_guid IN (520359,520364,520376);
DELETE FROM creature WHERE guid IN (520359,520364,520376);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(520359,32485,571,1,1,6064.319,4896.986,-94.37252,0,28800,28800,0,4), -- linear
(520364,32485,571,1,1,6388.94,5387.62,-40.6474,0,28800,28800,0,0), -- missing waypoints
(520376,32485,571,1,1,5009.047,4021.1133,-29.881636,0,28800,28800,0,4); -- linear
DELETE FROM `spawn_group` WHERE id = 32535;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32535, 'Sholazar Basin - King Krush 32485 - Rare', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32535;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32535, 520359, -1),
(32535, 520364, -1),
(32535, 520376, -1);
DELETE FROM creature_movement WHERE Id IN (520359,520376);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 520359
(520359,1 ,6064.319,4896.986,-94.37252,100,1000,0),
(520359,2 ,6037.0625,4888.588,-94.63033,100,0,0),
(520359,3 ,6020.516,4874.889,-96.102394,100,0,0),
(520359,4 ,6015.044,4860.4165,-97.604385,100,0,0),
(520359,5 ,5991.258,4839.444,-100.77092,100,0,0),
(520359,6 ,5994.7827,4805.953,-99.944756,100,0,0),
(520359,7 ,6002.1616,4779.902,-96.548134,100,0,0),
(520359,8 ,6009.2935,4752.007,-97.33956,100,0,0),
(520359,9 ,6021.486,4718.9253,-94.93725,100,0,0),
(520359,10,6037.9644,4695.8853,-94.46775,100,0,0),
(520359,11,6051.5356,4662.6724,-94.492966,100,0,0),
(520359,12,6073.332,4623.297,-97.30014,100,1000,0),
-- 520376
(520376,1 ,5009.047,4021.1133,-29.881636,100,1000,0),
(520376,2 ,5000.5225,4063.274,-31.497328,100,0,0),
(520376,3 ,4991.623,4099.026,-31.024977,100,0,0),
(520376,4 ,4971.779,4118.299,-33.911045,100,0,0),
(520376,5 ,4932.2886,4131.4834,-37.392303,100,0,0),
(520376,6 ,4902.421,4140.9707,-35.23091,100,0,0),
(520376,7 ,4880.189,4146.8247,-27.214676,100,0,0),
(520376,8 ,4863.496,4170.406,-27.114262,100,0,0),
(520376,9 ,4878.326,4205.752,-39.85459,100,0,0),
(520376,10,4883.2246,4224.1025,-44.663437,100,0,0),
(520376,11,4875.8896,4252.168,-44.039883,100,0,0),
(520376,12,4848.694,4280.8843,-44.38541,100,0,0),
(520376,13,4859.6235,4301.4497,-52.082504,100,0,0),
(520376,14,4858.1216,4323.3403,-53.70603,100,0,0),
(520376,15,4861.3965,4339.666,-56.671906,100,0,0),
(520376,16,4892.9595,4357.96,-62.150734,100,0,0),
(520376,17,4918.029,4377.694,-62.063244,100,0,0),
(520376,18,4930.325,4404.3975,-69.09895,100,0,0),
(520376,19,4945.2144,4442.67,-74.03049,100,0,0),
(520376,20,4905.7344,4468.1426,-68.94235,100,0,0),
(520376,21,4873.5947,4482.7134,-67.39836,100,0,0),
(520376,22,4852.991,4493.6787,-66.12746,100,0,0),
(520376,23,4844.4585,4511.471,-66.45652,100,0,0),
(520376,24,4857.445,4544.838,-70.88238,100,0,0),
(520376,25,4840.5273,4574.296,-64.91136,100,0,0),
(520376,26,4837.4614,4591.1167,-65.53855,100,0,0),
(520376,27,4851.7793,4599.386,-65.479805,100,0,0),
(520376,28,4845.739,4624.3623,-66.173546,100,0,0),
(520376,29,4841.963,4644.3076,-66.90124,100,0,0),
(520376,30,4858.061,4664.092,-68.96365,100,0,0),
(520376,31,4882.529,4690.9688,-72.24262,100,0,0),
(520376,32,4914.154,4715.2363,-82.95384,100,0,0),
(520376,33,4954.053,4720.0015,-90.54937,100,0,0),
(520376,34,4994.8125,4715.4375,-94.759476,100,1000,0);
