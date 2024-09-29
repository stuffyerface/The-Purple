# increase offline_time by 1s
execute if score .offline_time settings matches 1200.. run scoreboard players set .offline_time settings 20
execute if score .offline_time settings matches ..1199 run scoreboard players add .offline_time settings 20
execute if score .offline_time settings matches ..1 run scoreboard players set .offline_time settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"offline_time","color":"gray"},{"text":" to "},{"score":{"name":".offline_time","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
