<<<<<<< HEAD
# decrease round_length
scoreboard players operation .modify_round_length settings = .round_length settings
execute if score .modify_round_length settings matches 180.. run scoreboard players set .round_length settings 150
execute if score .modify_round_length settings matches 150..179 run scoreboard players set .round_length settings 120
execute if score .modify_round_length settings matches 120..149 run scoreboard players set .round_length settings 90
execute if score .modify_round_length settings matches 90..119 run scoreboard players set .round_length settings 60
execute if score .modify_round_length settings matches 60..89 run scoreboard players set .round_length settings 30
execute if score .modify_round_length settings matches 1..59 run scoreboard players set .round_length settings 180

execute if score .modify_round_length settings matches ..0 run scoreboard players set .round_length settings 60
scoreboard players reset .modify_round_length settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_length","color":"gray"},{"text":" to "},{"score":{"name":".round_length","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
=======
# decrease round_length
scoreboard players operation .modify_round_length settings = .round_length settings
execute if score .modify_round_length settings matches 180.. run scoreboard players set .round_length settings 150
execute if score .modify_round_length settings matches 150..179 run scoreboard players set .round_length settings 120
execute if score .modify_round_length settings matches 120..149 run scoreboard players set .round_length settings 90
execute if score .modify_round_length settings matches 90..119 run scoreboard players set .round_length settings 60
execute if score .modify_round_length settings matches 60..89 run scoreboard players set .round_length settings 30
execute if score .modify_round_length settings matches 1..59 run scoreboard players set .round_length settings 180

execute if score .modify_round_length settings matches ..0 run scoreboard players set .round_length settings 60
scoreboard players reset .modify_round_length settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_length","color":"gray"},{"text":" to "},{"score":{"name":".round_length","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
>>>>>>> 8e1a5a003a5a873d2b78300003709fbbb3c13948
