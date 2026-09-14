# decrease players_ready_percent by 5
execute if score .players_ready_percent settings matches 105.. run scoreboard players set .players_ready_percent settings 10
execute if score .players_ready_percent settings matches ..5 run scoreboard players set .players_ready_percent settings 105
execute if score .players_ready_percent settings matches 10.. run scoreboard players remove .players_ready_percent settings 5

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"players_ready_percent","color":"gray"},{"text":" to "},{"score":{"name":".players_ready_percent","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
