# set max_rounds to 0
scoreboard players set .max_rounds settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"max_rounds","color":"gray"},{"text":" to "},{"score":{"name":".max_rounds","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
