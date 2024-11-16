# set infection_time to -1
scoreboard players set .infection_time settings -1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"infection_time","color":"gray"},{"text":" to "},{"score":{"name":".infection_time","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
