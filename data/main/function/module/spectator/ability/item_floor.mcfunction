execute as @e[tag=floor_me] at @s if block ~ ~-1 ~ #minecraft:air run tp @s ~ ~-1 ~
execute as @e[tag=floor_me] at @s if block ~ ~-1 ~ #minecraft:air run return run function main:module/spectator/ability/item_floor
tag @s remove floor_me
