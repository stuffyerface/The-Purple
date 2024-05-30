# decrease round_length by 5
execute if score .round_length settings matches 600.. run scoreboard players set .round_length settings 65
execute if score .round_length settings matches ..10 run scoreboard players set .round_length settings 65
execute if score .round_length settings matches 10.. run scoreboard players remove .round_length settings 5

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_length","color":"gray"},{"text":" to "},{"score":{"name":".round_length","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
