# set rope_clicks to 5
scoreboard players set .rope_clicks settings 5

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"rope_clicks","color":"gray"},{"text":" to "},{"score":{"name":".rope_clicks","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
