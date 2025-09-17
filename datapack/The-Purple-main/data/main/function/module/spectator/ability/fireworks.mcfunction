scoreboard players operation @s spectator_ability_timer = .ability_fireworks settings
function main:message/spectator/fireworks
execute unless entity @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] run return fail

# cosmetics
execute as @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 1 0.88
execute as @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] run effect give @s glowing 3 0 true

# summon randomized firework
execute as @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] at @s run function main:module/cosmetic/random_firework
execute as @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] at @s run data modify entity @n[tag=random_firework] LifeTime set value 25

# set colors
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 0 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 16777215
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 0 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 4144959
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 1 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 16755200
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 1 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 4073984
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 2 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 16733695
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 2 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 4134207
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 3 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 5636095
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 3 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 1392447
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 4 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 16777045
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 4 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 4144917
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 5 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 5635925
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 5 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 1392405
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 6 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 16764108
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 6 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 4667705
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 7 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 5592405
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 7 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 1381653
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 8 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 11184810
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 8 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 2763306
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 9 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 43690
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 9 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 10794
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 10 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 11141290
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 10 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 2752554
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 11 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 5592575
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 11 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 1381695
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 12 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 11823181
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 12 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 3546903
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 13 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 43520
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 13 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 10752
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 14 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 16733525
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 14 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 4134165
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 15 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 0
execute if score @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] color matches 15 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 0
execute unless score @s color matches 0..15 as @n[tag=random_firework] run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[] set value 11141290
execute unless score @s color matches 0..15 as @n[tag=random_firework] run return run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] set value 2752554

#  0 FFFFFF|3F3F3F white
#  1 FFAA00|3E2A00 orange
#  2 FF55FF|3F153F magenta
#  3 55FFFF|153F3F light_blue
#  4 FFFF55|3F3F15 yellow
#  5 55FF55|153F15 lime
#  6 FFCCCC|473939 pink
#  7 555555|151515 gray
#  8 AAAAAA|2A2A2A light_gray
#  9 00AAAA|002A2A cyan
# 10 AA00AA|2A002A purple
# 11 5555FF|15153F blue
# 12 B4684D|361F17 brown
# 13 00AA00|002A00 green
# 14 FF5555|3F1515 red
# 15 000000|000000 black
