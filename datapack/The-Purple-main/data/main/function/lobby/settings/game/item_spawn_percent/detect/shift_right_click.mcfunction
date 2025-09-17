# decrease item_spawn_percent by 5
execute if score .item_spawn_percent settings matches 105.. run scoreboard players set .item_spawn_percent settings 2
execute if score .item_spawn_percent settings matches ..1 run scoreboard players set .item_spawn_percent settings 101
execute if score .item_spawn_percent settings matches 2.. run scoreboard players remove .item_spawn_percent settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"item_spawn_percent","color":"gray"},{"text":" to "},{"score":{"name":".item_spawn_percent","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
