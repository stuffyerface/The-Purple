# set tagback to always
scoreboard players set .tagback settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"tagback","color":"gray"},{"text":" to "},{"score":{"name":".tagback","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
