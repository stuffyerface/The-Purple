# increase total_items by 1
execute if score .total_items settings matches 10.. run scoreboard players set .total_items settings -1
execute if score .total_items settings matches ..9 run scoreboard players add .total_items settings 1
execute if score .total_items settings matches ..0 run scoreboard players set .total_items settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"total_items","color":"gray"},{"text":" to "},{"score":{"name":".total_items","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
