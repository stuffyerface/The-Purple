# increase rope_clicks by 1
execute if score .rope_clicks settings matches 10.. run scoreboard players set .rope_clicks settings 0
execute if score .rope_clicks settings matches ..9 run scoreboard players add .rope_clicks settings 1
execute if score .rope_clicks settings matches ..1 run scoreboard players set .rope_clicks settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"rope_clicks","color":"gray"},{"text":" to "},{"score":{"name":".rope_clicks","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
