execute if score .infection_time settings matches -1 run return 0
execute unless score .total infected matches 0.. run function main:module/corruption/scoreboard_math
execute unless score .game data matches 3 as @a[tag=player,gamemode=!spectator,tag=!infected,tag=!corrupted] if score @s infected >= .01 infected at @s run function main:module/corruption/check
execute unless score .game data matches 3 as @a[tag=player,gamemode=!spectator,tag=!infected,tag=!corrupted] at @s align xyz positioned ~ ~-0.1 ~ if entity @n[tag=corrupt_block,dx=0] run scoreboard players add @s infected 1
execute as @a[tag=player,scores={infected=0..}] at @s align xyz positioned ~ ~-0.1 ~ unless entity @n[tag=corrupt_block,dx=0] run scoreboard players reset @s infected
