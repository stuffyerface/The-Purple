# set winners to 1
scoreboard players set .winners settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"winners","color":"gray"},{"text":" to "},{"score":{"name":".winners","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
