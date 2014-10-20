-- Trek to Ashenvale (q.990)
-- 'Sentinel Selarin' should appear after compl. q.994 or q.995
DELETE FROM dbscripts_on_quest_end WHERE id IN (994,995);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(994,0,31,3694,15,0,0,0x08,0,0,0,0,0,0,0,0,''), -- check if creature is alive (prevent double spawn)
(994,1,10,3694,650000,0,0,0,0,0,0,0,6339.14,341.764,24.3387,0.498114,'spawn Sentinel Selarin'),
(995,0,31,3694,15,0,0,0x08,0,0,0,0,0,0,0,0,''), -- check if creature is alive (prevent double spawn) (3694,1,6353.39,354.557,22.3779,0,0,0,0,0,0,0,0,0,0,0.768994,0,0),
(995,1,10,3694,650000,0,0,0,0,0,0,0,6339.14,341.764,24.3387,0.498114,'spawn Sentinel Selarin');
UPDATE quest_template SET CompleteScript = 994 WHERE entry = 994;
UPDATE quest_template SET CompleteScript = 995 WHERE entry = 995;
-- Sentinel Selarin
UPDATE creature_template SET FactionAlliance = 80, FactionHorde = 80, SpeedWalk = 1, MovementType = 2 WHERE entry = 3694;
DELETE FROM creature_template_addon WHERE entry = 3694;
INSERT INTO creature_template_addon VALUES (3694,0,0,1,1,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 3694;
INSERT INTO creature_movement_template VALUES
(3694,1,6339.14,341.764,24.3387,1000,369401,0,0,0,0,0,0,0,0,0.498114,0,0),
(3694,2,6353.39,354.557,22.3779,0,0,0,0,0,0,0,0,0,0,0.768994,0,0),
(3694,3,6368.99,357.894,21.5712,0,0,0,0,0,0,0,0,0,0,0.171388,0,0),
(3694,4,6387.81,359.455,18.9899,0,0,0,0,0,0,0,0,0,0,0.328468,0,0),
(3694,5,6398.12,363.588,17.366,0,0,0,0,0,0,0,0,0,0,0.505183,0,0),
(3694,6,6403.68,370.92,15.6815,0,0,0,0,0,0,0,0,0,0,0.983488,0,0),
(3694,7,6416.57,392.998,12.0215,0,0,0,0,0,0,0,0,0,0,0.944219,0,0),
(3694,8,6424.95,399.193,10.9586,0,0,0,0,0,0,0,0,0,0,0.0292295,0,0),
(3694,9,6428.93,396.971,11.1736,0,0,0,0,0,0,0,0,0,0,5.0974,0,0),
(3694,10,6432,388.708,13.7662,0,0,0,0,0,0,0,0,0,0,5.02044,0,0),
(3694,11,6436.71,375.264,13.9403,0,0,0,0,0,0,0,0,0,0,4.74006,0,0),
(3694,12,6434.92,367.203,13.9403,600000,0,0,0,0,0,0,0,0,0,4.6089,0,0), -- missing chat with 'Terenthis'
(3694,13,6436.9,374.833,13.9403,0,0,0,0,0,0,0,0,0,0,1.85765,0,0),
(3694,14,6431.63,389.723,13.5875,0,0,0,0,0,0,0,0,0,0,1.96918,0,0),
(3694,15,6428.84,397.45,11.0941,0,0,0,0,0,0,0,0,0,0,2.58414,0,0),
(3694,16,6424,400.084,10.9784,0,0,0,0,0,0,0,0,0,0,3.33734,0,0),
(3694,17,6413.76,392.804,12.2825,0,0,0,0,0,0,0,0,0,0,4.12981,0,0),
(3694,18,6401.4,368.195,16.4249,0,0,0,0,0,0,0,0,0,0,3.85806,0,0),
(3694,19,6393.69,360.887,18.1549,0,0,0,0,0,0,0,0,0,0,3.44736,0,0),
(3694,20,6377.21,357.731,20.6589,0,0,0,0,0,0,0,0,0,0,3.04995,0,0),
(3694,21,6358.35,357.353,22.2106,0,0,0,0,0,0,0,0,0,0,3.50941,0,0),
(3694,22,6348.45,352.662,22.6056,0,0,0,0,0,0,0,0,0,0,4.03249,0,0),
(3694,23,6322.42,326.649,25.3338,2000,369402,0,0,0,0,0,0,0,0,3.91389,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (369401,369402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(369401,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sentinel Selarin active'),
(369401,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(369402,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Sentinel Selarin unactive'),
(369402,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
-- quest must be available for both options 
UPDATE quest_template SET PrevQuestid = 0 WHERE entry = 990;
UPDATE quest_template SET NextQuestid = 990 WHERE entry IN (994,995);
