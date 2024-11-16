# set total_items to 10
scoreboard players set .total_items settings 10

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"total_items","color":"gray"},{"text":" to "},{"score":{"name":".total_items","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
