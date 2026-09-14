tag @s add source
tag @s add infected
execute unless entity @s[tag=new_source] run tag @s add has_been_infected

effect give @s speed infinite 1 true
item modify entity @s armor.head main:tech/add_infected_overlay
playsound purple:infected player @s ~ ~ ~ 0.9 2

function c:item/source
function main:id/team/set_color
function main:module/disconnect/sync/marker

execute unless entity @s[tag=new_source] store result score .corrupted data if entity @a[tag=source]
return 1
