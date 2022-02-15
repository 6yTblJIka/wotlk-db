
SET @PATH_ID := 10007;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10007;

SET @CREATURE_0 := 26233;
SET @CREATURE_1 := 26192;
SET @CREATURE_2 := 26193;
SET @CREATURE_3 := 26194;
SET @CREATURE_4 := 26195;

DELETE FROM `creature_linking` WHERE (`master_guid` = @CREATURE_0);
DELETE FROM `creature_movement` WHERE (`Id` = @CREATURE_0);
DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1, @CREATURE_2, @CREATURE_3, @CREATURE_4));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-1203.2561035156250', '367.9830627441406250', '0.487993478775024414', '100', '0', '0'),
(@PATH_ID, '02', '-1223.4442138671875', '339.8689575195312500', '5.145063400268554687', '100', '0', '0'),
(@PATH_ID, '03', '-1244.1081542968750', '318.2741394042968750', '6.207938194274902343', '100', '0', '0'),
(@PATH_ID, '04', '-1289.4333496093750', '314.3910522460937500', '-0.10519874095916748', '100', '0', '0'),
(@PATH_ID, '05', '-1305.8045654296875', '288.3438415527343750', '5.872412681579589843', '100', '0', '0'),
(@PATH_ID, '06', '-1354.8299560546875', '281.0447082519531250', '-0.32590579986572265', '100', '0', '0'),
(@PATH_ID, '07', '-1395.8121337890625', '285.7565917968750000', '5.754737854003906250', '100', '0', '0'),
(@PATH_ID, '08', '-1442.9194335937500', '271.8975219726562500', '8.485725402832031250', '100', '0', '0'),
(@PATH_ID, '09', '-1478.0761718750000', '239.1796875000000000', '-5.48859643936157226', '100', '0', '0'),
(@PATH_ID, '10', '-1484.3227539062500', '190.1089630126953125', '-7.66780757904052734', '100', '0', '0'),
(@PATH_ID, '11', '-1484.8472900390625', '142.2546997070312500', '-4.05612802505493164', '100', '0', '0'),
(@PATH_ID, '12', '-1484.3912353515625', '112.9445800781250000', '1.324862957000732421', '100', '0', '0'),
(@PATH_ID, '13', '-1480.0465087890625', '83.82649993896484375', '9.437793731689453125', '100', '0', '0'),
(@PATH_ID, '14', '-1483.2402343750000', '98.47460937500000000', '5.142383575439453125', '100', '0', '0'),
(@PATH_ID, '15', '-1511.9178466796875', '57.79877471923828125', '7.919022560119628906', '100', '0', '0'),
(@PATH_ID, '16', '-1547.0566406250000', '23.05387306213378906', '11.68921661376953125', '100', '0', '0'),
(@PATH_ID, '17', '-1577.4693603515625', '-15.1540260314941406', '3.315851211547851562', '100', '0', '0'),
(@PATH_ID, '18', '-1585.9160156250000', '-49.7343750000000000', '7.035344600677490234', '100', '0', '0'),
(@PATH_ID, '19', '-1612.9874267578125', '-88.3573150634765625', '0.002438545227050781', '100', '0', '0'),
(@PATH_ID, '20', '-1625.2092285156250', '-115.511993408203125', '-1.51789951324462890', '100', '0', '0'),
(@PATH_ID, '21', '-1624.8662109375000', '-156.681701660156250', '-5.07812213897705078', '100', '0', '0'),
(@PATH_ID, '22', '-1616.5875244140625', '-176.765304565429687', '-7.68019485473632812', '100', '0', '0'),
(@PATH_ID, '23', '-1592.2756347656250', '-215.922576904296875', '-9.19729995727539062', '100', '0', '0'),
(@PATH_ID, '24', '-1583.4412841796875', '-245.066680908203125', '-11.9263248443603515', '100', '0', '0'),
(@PATH_ID, '25', '-1560.4140625000000', '-283.738281250000000', '-25.9393730163574218', '100', '0', '0'),
(@PATH_ID, '26', '-1546.8149414062500', '-318.007751464843750', '-35.0834655761718750', '100', '0', '0'),
(@PATH_ID, '27', '-1548.5650634765625', '-339.506561279296875', '-36.7311286926269531', '100', '0', '0'),
(@PATH_ID, '28', '-1520.6196289062500', '-379.760101318359375', '-42.4318084716796875', '100', '0', '0'),
(@PATH_ID, '29', '-1510.5338134765625', '-417.024536132812500', '-44.6114540100097656', '100', '0', '0'),
(@PATH_ID, '30', '-1490.6901855468750', '-450.139434814453125', '-48.6664199829101562', '100', '0', '0'),
(@PATH_ID, '31', '-1484.7854003906250', '-493.160156250000000', '-55.8904571533203125', '100', '0', '0'),
(@PATH_ID, '32', '-1486.7556152343750', '-524.769958496093750', '-53.3775177001953125', '100', '0', '0'),
(@PATH_ID, '33', '-1490.0371093750000', '-552.550781250000000', '-54.5416679382324218', '100', '0', '0'),
(@PATH_ID, '34', '-1478.1940917968750', '-591.855468750000000', '-55.3477859497070312', '100', '0', '0'),
(@PATH_ID, '35', '-1450.4653320312500', '-606.254150390625000', '-57.3745880126953125', '100', '0', '0'),
(@PATH_ID, '36', '-1429.8724365234375', '-637.376403808593750', '-53.5417861938476562', '100', '0', '0'),
(@PATH_ID, '37', '-1404.8637695312500', '-672.212158203125000', '-55.9791946411132812', '100', '0', '0'),
(@PATH_ID, '38', '-1390.5517578125000', '-687.520080566406250', '-54.1046333312988281', '100', '0', '0'),
(@PATH_ID, '39', '-1354.2451171875000', '-710.162414550781250', '-47.3679122924804687', '100', '0', '0'),
(@PATH_ID, '40', '-1319.6606445312500', '-723.191101074218750', '-41.9374885559082031', '100', '0', '0'),
(@PATH_ID, '41', '-1317.1528320312500', '-755.008605957031250', '-34.8784675598144531', '100', '0', '0'),
(@PATH_ID, '42', '-1343.8817138671875', '-791.687194824218750', '-21.2391242980957031', '100', '0', '0'),
(@PATH_ID, '43', '-1354.1046142578125', '-828.102416992187500', '-10.3050346374511718', '100', '0', '0'),
(@PATH_ID, '44', '-1357.1783447265625', '-858.478637695312500', '-6.97844409942626953', '100', '0', '0'),
(@PATH_ID, '45', '-1357.1552734375000', '-889.603637695312500', '-4.78017616271972656', '100', '0', '0'),
(@PATH_ID, '46', '-1345.2596435546875', '-909.634460449218750', '0.600183486938476562', '100', '0', '0'),
(@PATH_ID, '47', '-1320.9852294921875', '-924.792968750000000', '1.655771255493164062', '100', '0', '0'),
(@PATH_ID, '48', '-1279.0235595703125', '-947.233825683593750', '-2.46679449081420898', '100', '0', '0'),
(@PATH_ID, '49', '-1249.7797851562500', '-951.579772949218750', '-6.13626480102539062', '100', '0', '0'),
(@PATH_ID, '50', '-1211.7033691406250', '-983.564453125000000', '-3.77201080322265625', '100', '0', '0'),
(@PATH_ID, '51', '-1180.3248291015625', '-1015.50347900390625', '-0.06077146530151367', '100', '0', '0'),
(@PATH_ID, '52', '-1175.7401123046875', '-1051.15197753906250', '4.776653766632080078', '100', '0', '0'),
(@PATH_ID, '53', '-1172.3913574218750', '-1081.63708496093750', '11.39125061035156250', '100', '0', '0'),
(@PATH_ID, '54', '-1154.0214843750000', '-1122.68164062500000', '26.42210769653320312', '100', '0', '0'),
(@PATH_ID, '55', '-1113.7575683593750', '-1123.60864257812500', '36.26403045654296875', '100', '0', '0'),
(@PATH_ID, '56', '-1086.5937500000000', '-1096.52478027343750', '27.89162063598632812', '100', '0', '0'),
(@PATH_ID, '57', '-1086.8032226562500', '-1063.54052734375000', '19.50592041015625000', '100', '0', '0'),
(@PATH_ID, '58', '-1093.7930908203125', '-1022.74218750000000', '10.88729667663574218', '100', '0', '0'),
(@PATH_ID, '59', '-1092.2661132812500', '-982.147155761718750', '6.849074363708496093', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-1192.0012207031250', '379.427795410156250', '1.118375420570373535', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-1191.8574218750000', '366.242584228515625', '3.788722276687622070', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_2, '0', '1', '1', '0', '0', '-1181.1627197265625', '367.161560058593750', '6.096107482910156250', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_3, '0', '1', '1', '0', '0', '-1205.2593994140625', '374.875122070312500', '-1.04147660732269287', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_4, '0', '1', '1', '0', '0', '-1204.0141601562500', '389.074859619140625', '-1.65559661388397216', '0.0', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '2972'), (@CREATURE_0, '2973'), (@CREATURE_0, '2974'),
(@CREATURE_1, '2972'), (@CREATURE_1, '2973'), (@CREATURE_1, '2974'),
(@CREATURE_2, '2972'), (@CREATURE_2, '2973'), (@CREATURE_2, '2974'),
(@CREATURE_3, '2972'), (@CREATURE_3, '2973'), (@CREATURE_3, '2974'),
(@CREATURE_4, '2972'), (@CREATURE_4, '2973'), (@CREATURE_4, '2974');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (5) Patrol 002', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2'),
(@GROUP_ID, @CREATURE_3, '3'),
(@GROUP_ID, @CREATURE_4, '4');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '0', '15', '0', @PATH_ID, @PATH_TYPE, 'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (5) Patrol 002');
