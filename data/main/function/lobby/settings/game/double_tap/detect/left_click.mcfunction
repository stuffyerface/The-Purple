# toggle
scoreboard players operation .modify_double_tap settings = .double_tap settings
execute if score .modify_double_tap settings matches 2.. run scoreboard players set .double_tap settings 1
execute if score .modify_double_tap settings matches ..1 run scoreboard players set .double_tap settings 2
scoreboard players reset .modify_double_tap settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"double_tap","color":"gray"},{"text":" to "},{"score":{"name":".double_tap","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
