-- Resolve DBScript Diff for Shadow Labyrinth

-- Delete dbscript_string moved to tbc range for alignment
DELETE FROM `dbscript_string` WHERE `entry` IN (
2000005043, -- 2000020101 "I WILL DESTROY ALL"
2000005044, -- 2000020102 "US ALREADY ALL ANYMORE AND ANYMORE"
2000005220, -- 2000020103 "YOU PRAY SERVANTS MY"
2000005230, -- 2000020104 "I WICKED OGR"
2000005231, -- 2000020105 "I FEEL DEATH ALONGSIDE"
2000005235, -- 2000020106 "NOBODY WILL GET THROUGH ME"
2000005236 --  2000020107 "I FEEL DEATH ALONGSIDE"
);

