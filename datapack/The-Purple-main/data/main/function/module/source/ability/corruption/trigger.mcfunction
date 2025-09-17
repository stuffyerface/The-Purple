scoreboard players operation @s source_ability_timer = .ability_corruption settings
function main:message/source/corruption

scoreboard players add @s source_ability.corruption 100

# surround players with corrupt blocks
execute at @a[limit=2,sort=nearest,distance=..100,tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator] positioned ^ ^ ^2 run function main:module/source/ability/corruption/spawn
execute positioned ^ ^ ^2 run function main:module/source/ability/corruption/spawn
