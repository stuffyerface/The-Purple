tag @s remove source
tag @s remove infected
effect clear @s speed
item modify entity @s armor.head main:tech/remove_infected_overlay
clear @s *[minecraft:custom_data~{id:"THE_PURPLE"}]
function main:id/team/set_color
function main:module/disconnect/sync/marker
function main:module/source/reset

execute store result score .corrupted data if entity @a[tag=source]
