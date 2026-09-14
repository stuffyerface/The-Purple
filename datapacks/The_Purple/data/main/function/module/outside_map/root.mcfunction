# ticking
scoreboard players add .tick.outside_map data 1
execute unless score .tick.outside_map data matches 2.. run return 0
scoreboard players set .tick.outside_map data 0

# outside map detection
execute if score .game data matches 0.. if score .map settings matches 1 in minecraft:overworld positioned -10 22 1041 as @a[tag=alive,tag=!infected,distance=..250] at @s positioned ~ 14 ~ if function main:module/outside_map/function/reset_score unless block ~ ~ ~ green_terracotta run function main:module/outside_map/map/1
execute if score .game data matches 0.. if score .map settings matches 2 in minecraft:overworld positioned 23 80 1983 as @a[tag=alive,tag=!infected,distance=..250] at @s positioned ~ 60 ~ if function main:module/outside_map/function/reset_score unless block ~ ~ ~ green_terracotta run function main:module/outside_map/map/2
execute if score .game data matches 0.. if score .map settings matches 3 in minecraft:overworld positioned 0 93 2999 as @a[tag=alive,tag=!infected,distance=..250] at @s if function main:module/outside_map/function/reset_score if entity @s[y=160,dy=100] run function main:module/outside_map/map/3
