scoreboard objectives add death_effect.shrink dummy
tag @s add death_effect.shrink
execute as @e[tag=death_effect.shrink] run scoreboard players add @s death_effect.shrink 1
execute as @e[tag=death_effect.shrink] run attribute @s minecraft:scale modifier remove purple:death_effect.shrink

execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 1 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.05 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 2 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.10 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 3 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.15 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 4 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.20 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 5 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.25 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 6 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.30 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 7 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.35 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 8 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.40 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 9 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.45 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 10 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.50 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 11 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.55 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 12 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.60 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 13 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.65 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 14 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.70 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 15 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.75 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 16 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.80 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 17 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.85 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 18 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.90 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 19 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -0.95 add_value
execute as @e[tag=death_effect.shrink] if score @s death_effect.shrink matches 20 run attribute @s minecraft:scale modifier add purple:death_effect.shrink -1.00 add_value

execute as @e[tag=death_effect.shrink] at @s if score @s death_effect.shrink matches 1 run playsound minecraft:zombie_villager.converted player @a[distance=..30] ~ ~ ~ 1 1.5
execute as @e[tag=death_effect.shrink] at @s if score @s death_effect.shrink matches 8 run playsound minecraft:zombie_villager.converted player @a[distance=..30] ~ ~ ~ 1 1.75
execute as @e[tag=death_effect.shrink] at @s if score @s death_effect.shrink matches 16 run playsound minecraft:zombie_villager.converted player @a[distance=..30] ~ ~ ~ 1 2

execute as @e[tag=death_effect.shrink] at @s run summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
execute as @e[tag=death_effect.shrink] at @s run function main:module/cosmetic/setup_corrupt_block

execute as @e[scores={death_effect.shrink=21..}] at @s run function main:game/tag/function/player_kill
execute as @e[scores={death_effect.shrink=21..}] run tag @s remove death_effect.shrink
execute as @e[scores={death_effect.shrink=21..}] run scoreboard players reset @s death_effect.shrink
execute if entity @e[scores={death_effect.shrink=..21}] run return run schedule function main:module/cosmetic/death_effect/shrink 1t replace
