# decrease winners by 1
execute if score .winners settings matches ..1 run scoreboard players set .winners settings 5
execute if score .winners settings matches 1.. run scoreboard players remove .winners settings 1
execute if score .winners settings matches 5.. run scoreboard players set .winners settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"winners","color":"gray"},{"text":" to "},{"score":{"name":".winners","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
