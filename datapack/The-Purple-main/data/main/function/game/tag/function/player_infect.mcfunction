tag @s add source
tag @s add infected
tag @s add has_been_infected
effect give @s speed infinite 1 true
execute unless predicate main:has_item/source run function c:item/source
function main:id/team/set_color
function main:module/disconnect/sync/marker
playsound purple:infected player @s ~ ~ ~ 0.9 2

scoreboard players set .corrupted data 0
execute as @a[tag=source] run scoreboard players add .corrupted data 1
return 1
