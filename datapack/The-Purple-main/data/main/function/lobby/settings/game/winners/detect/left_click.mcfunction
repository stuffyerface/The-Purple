# increase winners by 1
execute if score .winners settings matches 4.. run scoreboard players set .winners settings 0
execute if score .winners settings matches ..3 run scoreboard players add .winners settings 1
execute if score .winners settings matches ..1 run scoreboard players set .winners settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"winners","color":"gray"},{"text":" to "},{"score":{"name":".winners","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
