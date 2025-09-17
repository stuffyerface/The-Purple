execute unless score .total infected matches 0.. run function main:module/corruption/scoreboard_math
execute if score .infection_time settings matches -1 run return 0
execute if score .game data matches 2.. run return run execute as @a[tag=player,scores={infected=-1..}] at @s run function main:message/game/corruption/safe

# if you're on a corrupted block, increase your score
execute as @a[tag=player,gamemode=!spectator,tag=!infected,tag=!corrupted] at @s align xyz positioned ~ ~-1.1 ~ if entity @n[tag=corrupt_block,dx=0,dy=1] run scoreboard players add @s infected 1
execute as @a[tag=player,gamemode=!spectator,tag=!infected,tag=!corrupted] at @s if score @s infected >= .01 infected run function main:module/corruption/check

# if you have a score and aren't on a corrupted block, reduce your score
execute as @a[tag=player,scores={infected=0..}] at @s align xyz positioned ~ ~-1.1 ~ unless entity @n[tag=corrupt_block,dx=0,dy=1] run scoreboard players remove @s infected 1
execute as @a[tag=player,scores={infected=..0}] at @s run function main:message/game/corruption/safe
