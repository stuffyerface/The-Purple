# decrease round_teleport by 1
execute if score .round_teleport settings matches ..0 run scoreboard players set .round_teleport settings 16
execute if score .round_teleport settings matches 1.. run scoreboard players remove .round_teleport settings 1
execute if score .round_teleport settings matches 17.. run scoreboard players set .round_teleport settings 15

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_teleport","color":"gray"},{"text":" to "},{"score":{"name":".round_teleport","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
