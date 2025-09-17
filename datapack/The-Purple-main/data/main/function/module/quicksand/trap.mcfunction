playsound minecraft:block.soul_sand.step player @s ~ ~ ~ 1 0 
title @s times 0 100 0
title @s title [{"translate":"message.purple.map.quicksand","fallback":"Quicksand!","color":"red"}]
title @s subtitle [{"translate":"message.purple.map.quicksand.rope","fallback":"Grab that rope to pull yourself out!","color":"yellow"}]
tag @s add in_quicksand
scoreboard players reset @s quicksand
