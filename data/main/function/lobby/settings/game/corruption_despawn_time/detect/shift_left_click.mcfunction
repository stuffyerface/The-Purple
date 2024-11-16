# set corruption_despawn_time to 1200
scoreboard players set .corruption_despawn_time settings 1200

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"corruption_despawn_time","color":"gray"},{"text":" to "},{"score":{"name":".corruption_despawn_time","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
