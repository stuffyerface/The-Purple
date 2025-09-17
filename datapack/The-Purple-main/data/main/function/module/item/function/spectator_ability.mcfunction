# called by main:module/source/trigger
advancement revoke @s only main:triggers/items/spectator_ability
execute if score .game data matches 2.. run return fail
execute unless entity @s[tag=corrupted] run return fail
execute if entity @s[scores={item.source=..0}] run return fail
scoreboard objectives add item.source dummy
scoreboard players remove @s item.source 1
execute if score @s spectator_ability_timer matches 0.. run return run function main:message/spectator/cooldown

playsound minecraft:block.chorus_flower.grow player @s ~ ~ ~ 1 2
tag @s add used_ability_before

execute unless score @s spectator_ability matches 0.. run function main:module/spectator/ability/fireworks
execute if score @s spectator_ability matches 1 run function main:module/spectator/ability/fireworks
execute if score @s spectator_ability matches 2 run function main:module/spectator/ability/speed
execute if score @s spectator_ability matches 3 run function main:module/spectator/ability/teleport
execute if score @s spectator_ability matches 4 run function main:module/spectator/ability/slime
execute if score @s spectator_ability matches 5 run function main:module/spectator/ability/time
execute if score @s spectator_ability matches 6 run function main:module/spectator/ability/item

execute unless score @s spectator_ability_timer matches 1.. run scoreboard players set @s spectator_ability_timer 20
