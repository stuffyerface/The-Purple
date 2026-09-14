# increase meteor_spawn_chance
scoreboard players operation .modify_meteor_spawn_chance settings = .meteor_spawn_chance settings
execute if score .modify_meteor_spawn_chance settings matches 100.. run scoreboard players set .meteor_spawn_chance settings 10
execute if score .modify_meteor_spawn_chance settings matches 90..99 run scoreboard players set .meteor_spawn_chance settings 100
execute if score .modify_meteor_spawn_chance settings matches 80..89 run scoreboard players set .meteor_spawn_chance settings 90
execute if score .modify_meteor_spawn_chance settings matches 70..79 run scoreboard players set .meteor_spawn_chance settings 80
execute if score .modify_meteor_spawn_chance settings matches 60..69 run scoreboard players set .meteor_spawn_chance settings 70
execute if score .modify_meteor_spawn_chance settings matches 50..59 run scoreboard players set .meteor_spawn_chance settings 60
execute if score .modify_meteor_spawn_chance settings matches 40..49 run scoreboard players set .meteor_spawn_chance settings 50
execute if score .modify_meteor_spawn_chance settings matches 30..39 run scoreboard players set .meteor_spawn_chance settings 40
execute if score .modify_meteor_spawn_chance settings matches 20..29 run scoreboard players set .meteor_spawn_chance settings 30
execute if score .modify_meteor_spawn_chance settings matches 10..19 run scoreboard players set .meteor_spawn_chance settings 20
execute if score .modify_meteor_spawn_chance settings matches 1..9 run scoreboard players set .meteor_spawn_chance settings 10

execute if score .modify_meteor_spawn_chance settings matches ..0 run scoreboard players set .meteor_spawn_chance settings 10
scoreboard players reset .modify_meteor_spawn_chance settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"meteor_spawn_chance","color":"gray"},{"text":" to "},{"score":{"name":".meteor_spawn_chance","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
