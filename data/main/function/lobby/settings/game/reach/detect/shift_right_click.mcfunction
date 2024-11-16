# set reach to 3
scoreboard players set .reach settings 3

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"reach","color":"gray"},{"text":" to "},{"score":{"name":".reach","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
