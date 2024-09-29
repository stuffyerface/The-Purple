# set increase_timer to 10
scoreboard players set .increase_timer settings 5

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"increase_timer","color":"gray"},{"text":" to "},{"score":{"name":".increase_timer","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
