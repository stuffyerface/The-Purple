# set round_teleport to 15
scoreboard players set .round_teleport settings 15

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_teleport","color":"gray"},{"text":" to "},{"score":{"name":".round_teleport","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
