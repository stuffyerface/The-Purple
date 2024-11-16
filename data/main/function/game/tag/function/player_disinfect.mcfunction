tag @s remove source
tag @s remove infected
effect clear @s speed
clear @s minecraft:popped_chorus_fruit[minecraft:custom_data={id:"THE_PURPLE"}]
function main:id/team/set_color
function main:module/disconnect/sync/marker

scoreboard players set .corrupted data 0
execute as @a[tag=source] run scoreboard players add .corrupted data 1