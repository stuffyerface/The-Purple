# set starting_immunity to 0
scoreboard players set .starting_immunity settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"starting_immunity","color":"gray"},{"text":" to "},{"score":{"name":".starting_immunity","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
