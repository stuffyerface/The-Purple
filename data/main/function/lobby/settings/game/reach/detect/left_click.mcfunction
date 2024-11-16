# increase reach by 1
execute if score .reach settings matches 10.. run scoreboard players set .reach settings 2
execute if score .reach settings matches ..9 run scoreboard players add .reach settings 1
execute if score .reach settings matches ..3 run scoreboard players set .reach settings 3

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"reach","color":"gray"},{"text":" to "},{"score":{"name":".reach","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
