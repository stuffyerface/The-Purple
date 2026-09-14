# set max_rounds to 100
scoreboard players set .max_rounds settings 100

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"max_rounds","color":"gray"},{"text":" to "},{"score":{"name":".max_rounds","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
