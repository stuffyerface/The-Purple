# increase max_rounds by 5
execute if score .max_rounds settings matches 100.. run scoreboard players set .max_rounds settings -5
execute if score .max_rounds settings matches ..99 run scoreboard players add .max_rounds settings 5
execute if score .max_rounds settings matches ..0 run scoreboard players set .max_rounds settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"max_rounds","color":"gray"},{"text":" to "},{"score":{"name":".max_rounds","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
