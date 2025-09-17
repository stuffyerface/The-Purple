execute as @a[tag=relog_delay] run scoreboard players operation .relog id = @s id
execute as @e[tag=id.marker.offline] if score @s id = .relog id run function main:module/disconnect/zombie/kill
scoreboard players reset .relog id

execute as @a[tag=relog_delay] run function main:module/disconnect/sync/marker
execute as @a[tag=relog_delay] run function c:tp/current_location
execute as @a[tag=relog_delay] run tag @s remove relog_delay
