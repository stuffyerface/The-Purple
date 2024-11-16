# ticking
scoreboard players remove .source_ability_tick dummy 1
execute if score .source_ability_tick dummy matches -20 run scoreboard players set .source_ability_tick dummy 0

execute if score .source_ability_tick dummy matches 0 run scoreboard players remove @a[scores={source_ability_timer=0..}] source_ability_timer 1
execute if score .source_ability_tick dummy matches 0 run scoreboard players reset @a[scores={source_ability_timer=..0}] source_ability_timer
execute if score .source_ability_tick dummy matches 0 as @a[scores={source_ability.corruption=1..}] at @s run function main:module/source/ability/corruption_timer
execute if score .source_ability_tick dummy matches -10 as @a[scores={source_ability.corruption=1..}] at @s run function main:module/source/ability/corruption_timer

# item cooldown
execute as @a[scores={item.source=..0}] run scoreboard players remove @s item.source 1
execute as @a[scores={item.source=..-10}] run scoreboard players reset @s item.source
