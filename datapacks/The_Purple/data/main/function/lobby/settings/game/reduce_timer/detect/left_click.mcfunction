# increase reduce_timer by 1
execute if score .reduce_timer settings matches 25.. run scoreboard players set .reduce_timer settings -1
execute if score .reduce_timer settings matches ..-1 run scoreboard players set .reduce_timer settings -1
execute if score .reduce_timer settings matches ..24 run scoreboard players add .reduce_timer settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"reduce_timer","color":"gray"},{"text":" to "},{"score":{"name":".reduce_timer","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
