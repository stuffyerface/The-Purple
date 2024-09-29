# set tagback to never
scoreboard players set .tagback settings -1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"tagback","color":"gray"},{"text":" to "},{"score":{"name":".tagback","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
