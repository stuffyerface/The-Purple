execute as @e[type=item_display,tag=item.display] at @s run rotate @s ~-2.8725 ~
execute as @e[type=item_display,tag=item.display] at @s run particle crit ~ ~-0.5 ~ 0.1 0 0.1 0.01 1
execute unless score .game data matches 1..2 run return 0
execute if score .total_items settings matches ..0 run return 0

# ticking
scoreboard players remove .item_tick dummy 1
execute if score .item_tick dummy matches ..-100 run scoreboard players set .item_tick dummy 0
execute unless score .item_tick dummy matches 0 run return 0

# return if the item limit has been reached
execute store result score .total_items dummy if entity @e[type=interaction,tag=item.display,tag=!dontkillme]
execute if score .total_items dummy >= .total_items settings run return 0

# there is an x% chance for an item to spawn at a random preset location
execute store result score .item_spawn_percent dummy run random value 1..100
execute if score .item_spawn_percent dummy > .item_spawn_percent settings run return fail

execute if score .map settings matches 0 as @e[limit=1,sort=random,tag=item_spawner.map_0,tag=!item] at @s positioned ~ ~1.25 ~ unless entity @n[tag=item.display,dx=0] summon minecraft:item_display run function main:module/item/system/summon
execute if score .map settings matches 1 as @e[limit=1,sort=random,tag=item_spawner.map_1,tag=!item] at @s positioned ~ ~1.25 ~ unless entity @n[tag=item.display,dx=0] summon minecraft:item_display run function main:module/item/system/summon
execute if score .map settings matches 2 as @e[limit=1,sort=random,tag=item_spawner.map_2,tag=!item] at @s positioned ~ ~1.25 ~ unless entity @n[tag=item.display,dx=0] summon minecraft:item_display run function main:module/item/system/summon
execute if score .map settings matches 3 as @e[limit=1,sort=random,tag=item_spawner.map_3,tag=!item] at @s positioned ~ ~1.25 ~ unless entity @n[tag=item.display,dx=0] summon minecraft:item_display run function main:module/item/system/summon
