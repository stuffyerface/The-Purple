# decrease players_ready_percent
scoreboard players operation .modify_players_ready_percent settings = .players_ready_percent settings
execute if score .modify_players_ready_percent settings matches 100.. run scoreboard players set .players_ready_percent settings 75
execute if score .modify_players_ready_percent settings matches 75..99 run scoreboard players set .players_ready_percent settings 50
execute if score .modify_players_ready_percent settings matches 50..74 run scoreboard players set .players_ready_percent settings 25
execute if score .modify_players_ready_percent settings matches 25..49 run scoreboard players set .players_ready_percent settings 100
execute if score .modify_players_ready_percent settings matches 1..24 run scoreboard players set .players_ready_percent settings 75

execute if score .modify_players_ready_percent settings matches ..0 run scoreboard players set .players_ready_percent settings 75
scoreboard players reset .modify_players_ready_percent settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"players_ready_percent","color":"gray"},{"text":" to "},{"score":{"name":".players_ready_percent","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
