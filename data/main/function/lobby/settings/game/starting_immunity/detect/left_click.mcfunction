# increase starting_immunity by 1
execute if score .starting_immunity settings matches 10.. run scoreboard players set .starting_immunity settings -1
execute if score .starting_immunity settings matches ..9 run scoreboard players add .starting_immunity settings 1
execute if score .starting_immunity settings matches ..0 run scoreboard players set .starting_immunity settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"starting_immunity","color":"gray"},{"text":" to "},{"score":{"name":".starting_immunity","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
