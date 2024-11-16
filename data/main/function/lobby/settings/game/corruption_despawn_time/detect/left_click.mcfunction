# increase corruption_despawn_time by 1
execute if score .corruption_despawn_time settings matches 1200.. run scoreboard players set .corruption_despawn_time settings -20
execute if score .corruption_despawn_time settings matches ..1199 run scoreboard players add .corruption_despawn_time settings 20
execute if score .corruption_despawn_time settings matches ..0 run scoreboard players set .corruption_despawn_time settings 0
execute if score .corruption_despawn_time settings matches 19 run scoreboard players set .corruption_despawn_time settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"corruption_despawn_time","color":"gray"},{"text":" to "},{"score":{"name":".corruption_despawn_time","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
