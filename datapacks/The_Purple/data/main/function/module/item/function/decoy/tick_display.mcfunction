# age tick
scoreboard players add @s age 1
execute if score @s age matches 600.. run return run kill @s

# sneak under blocks
execute unless block ~ ~1 ~ #minecraft:air run return run data merge entity @s {pose:"crouching"}
execute if block ~ ~1 ~ #minecraft:air run data merge entity @s {pose:"standing"}
