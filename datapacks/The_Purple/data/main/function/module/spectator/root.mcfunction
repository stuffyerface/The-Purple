# spectator ability cooldown
scoreboard players remove .spectator_tick dummy 1
execute if score .spectator_tick dummy matches -20 run scoreboard players set .spectator_tick dummy 0
execute if score .spectator_tick dummy matches 0 run scoreboard players remove @a[scores={spectator_ability_timer=0..}] spectator_ability_timer 1
execute as @a[scores={spectator_ability_timer=..0}] run scoreboard players reset @s spectator_ability_timer

# remove click detection entities from non-spectators
execute as @a[scores={spectator=1..},gamemode=!spectator] run function main:module/spectator/reset
execute unless entity @a[gamemode=spectator] run return 0

# register new spectators
execute as @a[gamemode=spectator] unless score @s preview matches 0.. unless score @s spectator matches 0.. run scoreboard players set @s spectator 0
execute as @r[scores={spectator=0}] at @s run function main:module/spectator/summon_detection

# teleport click detection entities to their spectators
execute as @a[scores={spectator=1..}] at @s run function main:module/spectator/teleport_detection
