# ability timer
scoreboard players remove @s source_ability.corruption 1
execute if score @s source_ability.corruption matches ..0 run scoreboard players reset @s source_ability.corruption

# only run 4 times a second
execute unless score .source_ability_tick dummy matches 0 unless score .source_ability_tick dummy matches -5 unless score .source_ability_tick dummy matches -10 unless score .source_ability_tick dummy matches -15 run return fail

# surround players with corrupt blocks
execute at @a[limit=2,sort=nearest,distance=..100,tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator] positioned ^ ^ ^2 run function main:module/source/ability/corruption/spawn
execute positioned ^ ^ ^2 run function main:module/source/ability/corruption/spawn