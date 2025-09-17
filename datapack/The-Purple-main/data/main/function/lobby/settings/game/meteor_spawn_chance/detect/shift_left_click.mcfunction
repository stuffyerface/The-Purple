# increase meteor_spawn_chance by 5
execute if score .meteor_spawn_chance settings matches 100.. run scoreboard players set .meteor_spawn_chance settings 0
execute if score .meteor_spawn_chance settings matches ..0 run scoreboard players set .meteor_spawn_chance settings 0
execute if score .meteor_spawn_chance settings matches ..99 run scoreboard players add .meteor_spawn_chance settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"meteor_spawn_chance","color":"gray"},{"text":" to "},{"score":{"name":".meteor_spawn_chance","objective":"settings"},"color":"green"},{"text":" shift_left_click","color":"gray"}]
