-- Stormwind City Guard 68

-- duplicate removed
-- had also custom made path 
DELETE FROM creature_addon WHERE guid=79689;
DELETE FROM creature_movement WHERE Id=79689;
DELETE FROM game_event_creature WHERE guid=79689;
DELETE FROM game_event_creature_data WHERE guid=79689;
DELETE FROM creature_battleground WHERE guid=79689;
DELETE FROM creature_linking WHERE guid=79689
OR master_guid=79689;
DELETE FROM creature WHERE guid=79689;

-- custom made path removed
UPDATE creature SET position_x = -8832.558, position_y = 541.7231, position_z = 97.038635, orientation = 2.687807083129882812, spawndist = 0, MovementType = 0 WHERE guid = 79666;
DELETE FROM creature_movement WHERE id = 79666;
