# decrease reduce_timer by 1
execute if score .reduce_timer settings matches 26.. run scoreboard players set .reduce_timer settings 2
execute if score .reduce_timer settings matches ..0 run scoreboard players set .reduce_timer settings 26
execute if score .reduce_timer settings matches 1.. run scoreboard players remove .reduce_timer settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"reduce_timer","color":"gray"},{"text":" to "},{"score":{"name":".reduce_timer","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
