# decrease infection_time
scoreboard players operation .modify_infection_time settings = .infection_time settings
execute if score .modify_infection_time settings matches 125.. run scoreboard players set .infection_time settings 110
execute if score .modify_infection_time settings matches 110..124 run scoreboard players set .infection_time settings 95
execute if score .modify_infection_time settings matches 95..109 run scoreboard players set .infection_time settings 80
execute if score .modify_infection_time settings matches 80..94 run scoreboard players set .infection_time settings 65
execute if score .modify_infection_time settings matches 65..79 run scoreboard players set .infection_time settings 50
execute if score .modify_infection_time settings matches 50..64 run scoreboard players set .infection_time settings 35
execute if score .modify_infection_time settings matches 35..49 run scoreboard players set .infection_time settings 20
execute if score .modify_infection_time settings matches 20..34 run scoreboard players set .infection_time settings 0
execute if score .modify_infection_time settings matches 0..19 run scoreboard players set .infection_time settings -1
execute if score .modify_infection_time settings matches ..-1 run scoreboard players set .infection_time settings 125

execute if score .modify_infection_time settings matches ..-1 run scoreboard players set .infection_time settings 125
scoreboard players reset .modify_infection_time settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"infection_time","color":"gray"},{"text":" to "},{"score":{"name":".infection_time","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
