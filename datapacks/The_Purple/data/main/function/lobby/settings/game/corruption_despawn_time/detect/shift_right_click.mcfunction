# set corruption_despawn_time to 0
scoreboard players set .corruption_despawn_time settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"corruption_despawn_time","color":"gray"},{"text":" to "},{"score":{"name":".corruption_despawn_time","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
