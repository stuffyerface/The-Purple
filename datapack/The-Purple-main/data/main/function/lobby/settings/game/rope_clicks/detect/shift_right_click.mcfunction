# set rope_clicks to 3
scoreboard players set .rope_clicks settings 3

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"rope_clicks","color":"gray"},{"text":" to "},{"score":{"name":".rope_clicks","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
