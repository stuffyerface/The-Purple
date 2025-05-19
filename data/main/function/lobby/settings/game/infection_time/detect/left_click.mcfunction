# increase infection_time
scoreboard players operation .modify_infection_time settings = .infection_time settings
execute if score .modify_infection_time settings matches 120.. run scoreboard players set .infection_time settings -1
execute if score .modify_infection_time settings matches 105..119 run scoreboard players set .infection_time settings 120
execute if score .modify_infection_time settings matches 90..104 run scoreboard players set .infection_time settings 105
execute if score .modify_infection_time settings matches 75..89 run scoreboard players set .infection_time settings 90
execute if score .modify_infection_time settings matches 60..74 run scoreboard players set .infection_time settings 75
execute if score .modify_infection_time settings matches 45..59 run scoreboard players set .infection_time settings 60
execute if score .modify_infection_time settings matches 30..44 run scoreboard players set .infection_time settings 45
execute if score .modify_infection_time settings matches 15..29 run scoreboard players set .infection_time settings 30
execute if score .modify_infection_time settings matches 0..14 run scoreboard players set .infection_time settings 15
execute if score .modify_infection_time settings matches -1 run scoreboard players set .infection_time settings 0

execute if score .modify_infection_time settings matches ..-1 run scoreboard players set .infection_time settings 0
scoreboard players reset .modify_infection_time settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"infection_time","color":"gray"},{"text":" to "},{"score":{"name":".infection_time","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
