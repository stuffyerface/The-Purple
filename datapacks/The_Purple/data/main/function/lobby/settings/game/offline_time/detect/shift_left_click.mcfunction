# set offline_time to 30s
scoreboard players set .offline_time settings 600

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"offline_time","color":"gray"},{"text":" to "},{"score":{"name":".offline_time","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
