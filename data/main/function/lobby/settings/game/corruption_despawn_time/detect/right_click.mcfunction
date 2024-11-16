# decrease corruption_despawn_time by 1
execute if score .corruption_despawn_time settings matches 0 run scoreboard players set .corruption_despawn_time settings 1220
execute if score .corruption_despawn_time settings matches ..1 run scoreboard players set .corruption_despawn_time settings 0
execute if score .corruption_despawn_time settings matches 1.. run scoreboard players remove .corruption_despawn_time settings 20
execute if score .corruption_despawn_time settings matches 1240.. run scoreboard players set .corruption_despawn_time settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"corruption_despawn_time","color":"gray"},{"text":" to "},{"score":{"name":".corruption_despawn_time","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
