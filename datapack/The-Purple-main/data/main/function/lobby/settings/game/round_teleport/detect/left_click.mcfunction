# increase round_teleport by 1
execute if score .round_teleport settings matches 15.. run scoreboard players set .round_teleport settings -1
execute if score .round_teleport settings matches ..14 run scoreboard players add .round_teleport settings 1
execute if score .round_teleport settings matches ..0 run scoreboard players set .round_teleport settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_teleport","color":"gray"},{"text":" to "},{"score":{"name":".round_teleport","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
