-- Add your query below.

-- update redridge blackrock orks
-- UPDATE `creature` SET `position_x` = -9170.93, `position_y` = -2400.95, `position_z` = 104.074, `orientation` = 5.65487 WHERE `guid` = 31810; -- 31830

UPDATE `creature` SET `movementtype` = 1, `spawndist` = 2 WHERE `guid` = 31811;

DELETE FROM `creature` WHERE `guid` IN (31808,31810);

UPDATE `creature` SET `position_x` = -9156.65, `position_y` = -2513.65, `position_z` = 115.993, `movementtype` = 2 WHERE `guid` = 31832;
DELETE FROM `creature_movement` WHERE `id` = 31832;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(31832, 1, -9156.65, -2513.65, 115.981, 100, 45000, 5), -- orientation?
(31832, 2, -9145.41, -2490.14, 116.751, 100, 0, 0),
(31832, 3, -9156.75, -2454.84, 113.282, 100, 0, 0),
(31832, 4, -9161.11, -2446.5, 111.148, 100, 0, 0),
(31832, 5, -9158.61, -2434.5, 106.876, 100, 0, 0),
(31832, 6, -9164.96, -2420.6, 105.319, 100, 0, 0),
(31832, 7, -9174.89, -2403.74, 104.491, 100, 45000, 0), -- orientation?
(31832, 8, -9169.39, -2420.48, 106.004, 100, 0, 0),
(31832, 9, -9174.43, -2442.38, 114.408, 100, 0, 0),
(31832, 10, -9170.5, -2448.17, 116.441, 100, 0, 0),
(31832, 11, -9158.07, -2465.67, 115.888, 100, 0, 0),
(31832, 12, -9149.25, -2478.14, 115.365, 100, 0, 0),
(31832, 13, -9145.26, -2487.65, 116.262, 100, 0, 0),
(31832, 14, -9146.04, -2503.76, 117.915, 100, 0, 0),
(31832, 15, -9148.71, -2512.97, 117.126, 100, 0, 0),
(31832, 16, -9150.03, -2530.85, 112.715, 100, 0, 0),
(31832, 17, -9149.43, -2549.46, 116.085, 100, 0, 0),
(31832, 18, -9144.39, -2564.02, 116.783, 100, 45000, 0), -- orientation?
(31832, 19, -9138.87, -2560.73, 116.532, 100, 0, 0),
(31832, 20, -9142.3, -2532.23, 114.6, 100, 0, 0);

-- End of migration.

