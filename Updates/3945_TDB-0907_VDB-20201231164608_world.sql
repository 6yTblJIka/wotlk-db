-- Add your query below.

-- add gnomeregan evacuation event
DELETE FROM `creature_linking` WHERE `master_guid` = 2442;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(2443, 2442, 9856);

UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 2442;
DELETE FROM `creature_movement` WHERE `id` = 2442;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(2442, 1, -5165.01, 635.986, 348.279, 100, 1, 5),
(2442, 2, -5176.52, 637.508, 348.279, 100, 0, 0),
(2442, 3, -5180.35, 647.348, 348.279, 100, 0, 0),
(2442, 4, -5176.56, 656.204, 348.279, 100, 0, 0),
(2442, 5, -5163.17, 665.239, 348.932, 100, 0, 0),
(2442, 6, -5159.09, 708.355, 369.766, 100, 0, 0),
(2442, 7, -5165.51, 714.313, 369.766, 100, 0, 0),
(2442, 8, -5171.31, 714.859, 369.766, 100, 0, 0),
(2442, 9, -5175.11, 706.777, 369.766, 100, 0, 0),
(2442, 10, -5182.93, 606.75, 408.966, 100, 0, 0),
(2442, 11, -5180.14, 597.714, 408.496, 100, 0, 0),
(2442, 12, -5174.19, 584.702, 404.797, 100, 0, 0),
(2442, 13, -5148.45, 587.567, 416.345, 100, 2000, 0),
(2442, 14, -5148.45, 587.567, 416.345, 100, 1, 1);

-- Bonus
UPDATE `creature_template` SET `faction` = 63 WHERE `entry` = 6221; -- Addled Leper (53)

-- End of migration.

