# increase item_spawn_percent by 5
execute if score .item_spawn_percent settings matches 100.. run scoreboard players set .item_spawn_percent settings 0
execute if score .item_spawn_percent settings matches ..0 run scoreboard players set .item_spawn_percent settings 0
execute if score .item_spawn_percent settings matches ..99 run scoreboard players add .item_spawn_percent settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"item_spawn_percent","color":"gray"},{"text":" to "},{"score":{"name":".item_spawn_percent","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
