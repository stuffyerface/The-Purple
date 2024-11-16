scoreboard players operation @s source_ability_timer = .ability_corruption settings
function main:message/source/corruption

scoreboard players add @s source_ability.corruption 5
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
scoreboard players operation @e[type=marker,tag=new_corrupt_block] id = @s id
function main:module/cosmetic/setup_corrupt_block