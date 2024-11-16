execute if entity @s[tag=corrupted] run function main:module/item/function/spectator_ability
advancement revoke @s only main:triggers/game/source

execute if score .game data matches 2.. run return fail
execute unless entity @s[tag=source] run return fail
execute if entity @s[scores={item.source=..0}] run return fail

scoreboard objectives add item.source dummy
scoreboard players remove @s item.source 1
execute if score @s source_ability_timer matches 0.. run return run function main:message/source/cooldown

playsound minecraft:block.chorus_flower.grow player @s ~ ~ ~ 1 2
effect give @s speed 10 2
tag @s add used_ability_before

execute unless score @s source_ability matches 0.. run function main:module/source/ability/speed
execute if score @s source_ability matches 1 run function main:module/source/ability/speed
execute if score @s source_ability matches 2 run function main:module/source/ability/invisible
execute if score @s source_ability matches 3 run function main:module/source/ability/darkness
execute if score @s source_ability matches 4 run function main:module/source/ability/corruption
execute if score @s source_ability matches 5 run function main:module/source/ability/reach

execute unless score @s source_ability_timer matches 1.. run scoreboard players set @s source_ability_timer 20
