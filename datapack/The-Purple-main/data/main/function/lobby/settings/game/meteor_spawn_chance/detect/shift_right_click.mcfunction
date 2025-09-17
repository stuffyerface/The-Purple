# decrease meteor_spawn_chance by 5
execute if score .meteor_spawn_chance settings matches 105.. run scoreboard players set .meteor_spawn_chance settings 2
execute if score .meteor_spawn_chance settings matches ..1 run scoreboard players set .meteor_spawn_chance settings 101
execute if score .meteor_spawn_chance settings matches 2.. run scoreboard players remove .meteor_spawn_chance settings 1

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"meteor_spawn_chance","color":"gray"},{"text":" to "},{"score":{"name":".meteor_spawn_chance","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
