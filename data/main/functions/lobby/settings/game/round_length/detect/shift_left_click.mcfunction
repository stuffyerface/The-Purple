<<<<<<< HEAD
# increase round_length by 5
execute if score .round_length settings matches 600.. run scoreboard players set .round_length settings 55
execute if score .round_length settings matches ..10 run scoreboard players set .round_length settings 55
execute if score .round_length settings matches ..595 run scoreboard players add .round_length settings 5

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_length","color":"gray"},{"text":" to "},{"score":{"name":".round_length","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
=======
# increase round_length by 5
execute if score .round_length settings matches 600.. run scoreboard players set .round_length settings 55
execute if score .round_length settings matches ..10 run scoreboard players set .round_length settings 55
execute if score .round_length settings matches ..595 run scoreboard players add .round_length settings 5

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_length","color":"gray"},{"text":" to "},{"score":{"name":".round_length","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
>>>>>>> 8e1a5a003a5a873d2b78300003709fbbb3c13948
