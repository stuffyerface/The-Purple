# decrease reach by 1
execute if score .reach settings matches ..3 run scoreboard players set .reach settings 11
execute if score .reach settings matches 1.. run scoreboard players remove .reach settings 1
execute if score .reach settings matches 12.. run scoreboard players set .reach settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"reach","color":"gray"},{"text":" to "},{"score":{"name":".reach","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
