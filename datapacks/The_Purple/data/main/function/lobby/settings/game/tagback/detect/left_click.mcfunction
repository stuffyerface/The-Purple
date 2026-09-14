# increase tagback
execute if score .tagback settings matches 6.. run scoreboard players set .tagback settings -1
execute if score .tagback settings matches ..5 run scoreboard players add .tagback settings 1
execute if score .tagback settings matches ..0 run scoreboard players set .tagback settings 0
execute if score .tagback settings matches 6.. run scoreboard players set .tagback settings -1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"tagback","color":"gray"},{"text":" to "},{"score":{"name":".tagback","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
