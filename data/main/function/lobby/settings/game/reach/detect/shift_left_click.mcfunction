# set reach to 10
scoreboard players set .reach settings 10

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"reach","color":"gray"},{"text":" to "},{"score":{"name":".reach","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]