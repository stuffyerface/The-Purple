# set infection_time to default
scoreboard players set .infection_time settings 30

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"infection_time","color":"gray"},{"text":" to "},{"score":{"name":".infection_time","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
