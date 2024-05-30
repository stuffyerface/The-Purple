<<<<<<< HEAD
# decrease tagback
execute if score .tagback settings matches ..-1 run scoreboard players set .tagback settings 6
execute if score .tagback settings matches 0.. run scoreboard players remove .tagback settings 1
execute if score .tagback settings matches 6.. run scoreboard players set .tagback settings -1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"tagback","color":"gray"},{"text":" to "},{"score":{"name":".tagback","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
=======
# decrease tagback
execute if score .tagback settings matches ..-1 run scoreboard players set .tagback settings 6
execute if score .tagback settings matches 0.. run scoreboard players remove .tagback settings 1
execute if score .tagback settings matches 6.. run scoreboard players set .tagback settings -1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"tagback","color":"gray"},{"text":" to "},{"score":{"name":".tagback","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
>>>>>>> 8e1a5a003a5a873d2b78300003709fbbb3c13948
