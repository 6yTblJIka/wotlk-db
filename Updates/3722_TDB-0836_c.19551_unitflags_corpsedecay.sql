-- Correct UnitFlags & CorpseDecay for Ember of Al'ar 19551
-- .go c id 19514
UPDATE `creature_template` SET `UnitFlags` = 32768, `CorpseDecay` = 5 WHERE `entry` = 19551;

-- TBC IDs 10000 - 19999
DELETE FROM `dbscript_random_templates` WHERE `id` = 10166;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(10166,0,21869,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21856,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21854,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21867,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21862,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21936,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21863,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21865,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21931,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21933,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21932,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21934,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21855,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21864,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21935,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21857,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21858,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21948,0,'Gahk c.23300 Revered Aura Reaction'),
(10166,0,21860,0,'Gahk c.23300 Revered Aura Reaction');

