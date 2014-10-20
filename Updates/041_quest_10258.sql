-- Honor the Fallen (q.10258)
DELETE FROM dbscripts_on_quest_end WHERE id = 10258;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10258,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Commander Hogarth - active'),
(10258,1,10,20117,15000,0,0,0,0,0,0,0,-1186.952,2608.809,27.702,5.385233,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1192.142,2602.695,29.26251,0.08202434,''),
(10258,1,10,20117,15000,0,0,0,0,0,0,0,-1181.955,2611.131,27.30041,4.615656,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1183.653,2603.656,29.49267,6.092192,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1176.263,2604.513,29.68511,3.302124,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1184.48,2609.259,27.71925,5.011032,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1175.393,2607.397,28.85298,3.634733,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1178.365,2609.962,27.88143,4.123753,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1182.51,2608.35,28.12008,4.673831,''), 
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1189.117,2601.882,29.69882,0.2426594,''), 
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1179.461,2606.029,29.02162,3.810308,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1180.596,2598.148,35.23167,1.946922,''),
(10258,1,10,20117,15000,0,0,0,0,0,0,0,-1190.869,2607.063,27.9991,5.868977,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1179.811,2603.427,29.80272,3.126373,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1184.467,2606.898,28.44422,5.188805,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1186.627,2605.579,28.7169,5.790787,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1189.033,2604.599,28.8694,6.106967,''),
(10258,1,10,19863,15000,0,0,0,0,0,0,0,-1185.68,2603.391,29.44758,5.188805,''),
(10258,1,10,19863,20000,0,0,0,0,0,0,0,-1181.975,2605.763,28.94763,4.406826,''),
(10258,17,28,0,0,19863,20,7,0,0,0,0,0,0,0,0,''),
(10258,18,1,3,0,19863,20,7,0,0,0,0,0,0,0,0,''),
(10258,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Commander Hogarth - unactive');
UPDATE quest_template SET CompleteScript = 10258 WHERE entry = 10258;
-- Commander Hogarth
UPDATE creature SET modelid = 16502 WHERE guid = 71031;
-- Vengeful Unyielding Knight
UPDATE creature_template SET EquipmentTemplateId = 326, movementType = 0 WHERE entry = 20117;
DELETE FROM creature_template_addon WHERE entry = 20117;
INSERT INTO creature_template_addon VALUES (20117,0,0,1,0,0,0,33900);
-- Vengeful Unyielding 
UPDATE creature_template SET EquipmentTemplateId = 249, movementType = 0 WHERE entry = 19863;
DELETE FROM creature_template_addon WHERE entry = 19863;
INSERT INTO creature_template_addon VALUES (19863,0,8,1,0,0,0,33900);