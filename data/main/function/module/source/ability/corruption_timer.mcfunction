scoreboard players remove @s source_ability.corruption 1
execute if score @s source_ability.corruption matches ..0 run scoreboard players reset @s source_ability.corruption

summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
scoreboard players operation @e[type=marker,tag=new_corrupt_block] id = @s id
function main:module/cosmetic/setup_corrupt_block
