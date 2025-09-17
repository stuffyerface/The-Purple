execute if score .map settings matches 1 as @e[tag=preview.map_1] run data merge entity @s {view_range:0.0f,Tags:["preview","preview.map_1","disabled"]}
execute if score .map settings matches 2 as @e[tag=preview.map_2] run data merge entity @s {view_range:0.0f,Tags:["preview","preview.map_2","disabled"]}
execute if score .map settings matches 3 as @e[tag=preview.map_3] run data merge entity @s {view_range:0.0f,Tags:["preview","preview.map_3","disabled"]}

execute as @a[scores={preview=0..}] if score @s preview = .map settings run function main:lobby/settings/preview/stop
execute as @a[tag=ready] run function main:module/item/function/reset
execute as @a[tag=ready] run scoreboard players set @s teleport_lock 0
