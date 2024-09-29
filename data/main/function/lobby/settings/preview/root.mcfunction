execute as @a[scores={preview=0..},gamemode=spectator] run function main:message/settings/preview_map

execute as @e[tag=preview,nbt={view_range:0.0f}] run data merge entity @s {view_range:1.0f}
execute at @e[tag=preview,nbt={view_range:1.0f}] run particle crimson_spore ~ ~-2 ~ 1 0 1 0 50 force @a[scores={preview=0..},gamemode=spectator]
execute at @e[tag=preview,nbt={view_range:1.0f}] run particle minecraft:portal ~ ~-1.8 ~ 1 0 1 0 100 force @a[scores={preview=0..},gamemode=spectator]
execute at @e[tag=preview,nbt={view_range:1.0f}] as @a[scores={preview=0..},gamemode=spectator,distance=..3] run function main:lobby/settings/preview/stop 
