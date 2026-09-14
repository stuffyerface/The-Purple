# set winners to 4
scoreboard players set .winners settings 4

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"winners","color":"gray"},{"text":" to "},{"score":{"name":".winners","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
