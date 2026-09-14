# decrease max_rounds by 5
execute if score .max_rounds settings matches ..0 run scoreboard players set .max_rounds settings 105
execute if score .max_rounds settings matches 1.. run scoreboard players remove .max_rounds settings 5
execute if score .max_rounds settings matches 101.. run scoreboard players set .max_rounds settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"max_rounds","color":"gray"},{"text":" to "},{"score":{"name":".max_rounds","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
