# increase players_ready_percent by 5
execute if score .players_ready_percent settings matches 100.. run scoreboard players set .players_ready_percent settings 0
execute if score .players_ready_percent settings matches ..1 run scoreboard players set .players_ready_percent settings 0
execute if score .players_ready_percent settings matches ..95 run scoreboard players add .players_ready_percent settings 5

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"players_ready_percent","color":"gray"},{"text":" to "},{"score":{"name":".players_ready_percent","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
