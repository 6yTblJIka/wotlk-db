-- Add missing Fjord Penguin 28407
-- https://github.com/cmangos/wotlk-db/issues/622
DELETE FROM `creature` WHERE `id` = 28407 AND `guid` BETWEEN 549961 AND 549999;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawndist`, `MovementType`) VALUES
(549961, 28407, 571, 1, 1, -265.347, -5393.54, 17.6095, 3.58607, 0, 0),
(549962, 28407, 571, 1, 1, -242.517, -5385.04, 17.4231, 3.36774, 0, 0),
(549963, 28407, 571, 1, 1, -256.988, -5391.26, 17.5252, 4.77045, 0, 0),
(549964, 28407, 571, 1, 1, -244.555, -5373.01, 18.2294, 3.7353, 0, 0),
(549965, 28407, 571, 1, 1, -254.252, -5386.46, 17.5632, 0.593704, 0, 0),
(549966, 28407, 571, 1, 1, -248.147, -5383.43, 17.6198, 0.660463, 0, 0),
(549967, 28407, 571, 1, 1, -250.77, -5379.14, 17.8239, 4.21046, 0, 0),
(549968, 28407, 571, 1, 1, -244.315, -5367.23, 18.3083, 4.12407, 0, 0),
(549969, 28407, 571, 1, 1, -246.717, -5369.39, 18.3706, 1.85427, 0, 0),
(549970, 28407, 571, 1, 1, -249.526, -5370.2, 18.3764, 1.73646, 0, 0),
(549971, 28407, 571, 1, 1, -253.78, -5374.76, 18.0204, 4.38718, 0, 0),
(549972, 28407, 571, 1, 1, -259.04, -5379.18, 17.6642, 5.03513, 0, 0),
(549973, 28407, 571, 1, 1, -259.956, -5373.97, 17.5147, 4.83485, 0, 0),
(549974, 28407, 571, 1, 1, -264.477, -5391.84, 17.7496, 2.71428, 0, 0),
(549975, 28407, 571, 1, 1, -265.944, -5385.17, 17.6643, 1.01782, 0, 0),
(549976, 28407, 571, 1, 1, -259.321, -5545.38, 18.5444, 3.53658, 0, 0),
(549977, 28407, 571, 1, 1, -264.037, -5377.74, 17.541, 4.66207, 0, 0),
(549978, 28407, 571, 1, 1, -251.769, -5343.58, 17.1284, 1.63592, 0, 0),
(549979, 28407, 571, 1, 1, -267.306, -5374.55, 17.006, 3.09912, 0, 0),
(549980, 28407, 571, 1, 1, -257.881, -5369.12, 17.7324, 1.29271, 0, 0),
(549981, 28407, 571, 1, 1, -250.398, -5365.01, 18.2174, 2.14094, 0, 0),
(549982, 28407, 571, 1, 1, -245.45, -5363.43, 18.3257, 2.27289, 0, 0),
(549983, 28407, 571, 1, 1, -248.439, -5360.94, 18.1971, 2.49672, 0, 0),
(549984, 28407, 571, 1, 1, -244.487, -5358.34, 18.0473, 1.82521, 0, 0),
(549985, 28407, 571, 1, 1, -249.684, -5353.78, 17.891, 3.84368, 0, 0),
(549986, 28407, 571, 1, 1, -255.397, -5359.23, 17.6402, 1.78594, 0, 0),
(549987, 28407, 571, 1, 1, -254.876, -5367.99, 18.0053, 0.7335, 0, 0),
(549988, 28407, 571, 1, 1, -254.761, -5545.15, 18.4633, 6.24621, 0, 0),
(549989, 28407, 571, 1, 1, -256.129, -5547.07, 18.825, 4.52619, 0, 0),
(549990, 28407, 571, 1, 1, -248.415, -5549.75, 19.0899, 4.01568, 0, 0),
(549991, 28407, 571, 1, 1, -252.347, -5553.98, 18.9586, 1.72153, 0, 0),
(549992, 28407, 571, 1, 1, -248.222, -5560.57, 18.8848, 2.59725, 0, 0),
(549993, 28407, 571, 1, 1, -246.338, -5557.52, 19.1707, 1.45842, 0, 0),
(549994, 28407, 571, 1, 1, -239.584, -5577.61, 18.6126, 5.31865, 0, 0),
(549995, 28407, 571, 1, 1, -237.446, -5571.52, 18.7673, 2.73862, 0, 0),
(549996, 28407, 571, 1, 1, -232.998, -5563.14, 18.9112, 1.68225, 0, 0),
(549997, 28407, 571, 1, 1, -232.222, -5568.88, 18.6566, 2.53441, 0, 0),
(549998, 28407, 571, 1, 1, -228.268, -5573.36, 18.5249, 6.1276, 0, 0),
(549999, 28407, 571, 1, 1, -232.346, -5579.26, 18.5982, 5.21261, 0, 0);

UPDATE `creature` SET `movementtype` = 0, `spawndist` = 0 WHERE `id` = 28407;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|64 WHERE `entry` IN (27548,28407,28440,32498);

