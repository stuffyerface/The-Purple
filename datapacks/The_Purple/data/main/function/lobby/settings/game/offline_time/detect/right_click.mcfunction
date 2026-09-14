# decrease offline_time by 1s
execute if score .offline_time settings matches ..20 run scoreboard players set .offline_time settings 1220
execute if score .offline_time settings matches 1.. run scoreboard players remove .offline_time settings 20
execute if score .offline_time settings matches 1202.. run scoreboard players set .offline_time settings 20

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"offline_time","color":"gray"},{"text":" to "},{"score":{"name":".offline_time","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
