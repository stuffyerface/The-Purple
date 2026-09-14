# set offline_time to 5s
scoreboard players set .offline_time settings 100

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"offline_time","color":"gray"},{"text":" to "},{"score":{"name":".offline_time","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
