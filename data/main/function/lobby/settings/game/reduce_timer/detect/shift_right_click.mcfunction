# set increase reduce_timer to 0
scoreboard players set .reduce_timer settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"reduce_timer","color":"gray"},{"text":" to "},{"score":{"name":".reduce_timer","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
