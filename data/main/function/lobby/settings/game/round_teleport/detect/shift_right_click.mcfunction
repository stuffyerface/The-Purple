# set round_teleport to 0
scoreboard players set .round_teleport settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_teleport","color":"gray"},{"text":" to "},{"score":{"name":".round_teleport","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
