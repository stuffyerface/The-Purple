<<<<<<< HEAD
# increase tagback
execute if score .tagback settings matches 6.. run scoreboard players set .tagback settings -1
execute if score .tagback settings matches ..5 run scoreboard players add .tagback settings 1
execute if score .tagback settings matches ..0 run scoreboard players set .tagback settings 0
execute if score .tagback settings matches 6.. run scoreboard players set .tagback settings -1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"tagback","color":"gray"},{"text":" to "},{"score":{"name":".tagback","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
=======
# increase tagback
execute if score .tagback settings matches 6.. run scoreboard players set .tagback settings -1
execute if score .tagback settings matches ..5 run scoreboard players add .tagback settings 1
execute if score .tagback settings matches ..0 run scoreboard players set .tagback settings 0
execute if score .tagback settings matches 6.. run scoreboard players set .tagback settings -1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"tagback","color":"gray"},{"text":" to "},{"score":{"name":".tagback","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
>>>>>>> 8e1a5a003a5a873d2b78300003709fbbb3c13948
