playsound minecraft:block.soul_sand.step player @s ~ ~ ~ 1 0 
title @s times 0 300 0
title @s title [{"text":"Quicksand!","color":"red"}]
title @s subtitle [{"text":"Grab that rope to pull yourself out!","color":"yellow"}]
tag @s add in_quicksand
scoreboard players reset @s quicksand