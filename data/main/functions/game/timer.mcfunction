scoreboard players add .tick timer 1
execute if score .tick timer matches 20.. if score .time_remaining timer matches 1.. run scoreboard players remove .time_remaining timer 1
execute if score .tick timer matches 20.. run scoreboard players set .tick timer 0
execute if score .round_timer settings matches 1.. run title @a actionbar [{"score":{"name":".time_remaining","objective":"timer"}},{"text":"s"}]

execute if score .time_remaining timer matches 3 if score .tick timer matches 0 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute if score .time_remaining timer matches 2 if score .tick timer matches 0 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.75
execute if score .time_remaining timer matches 1 if score .tick timer matches 0 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5
execute if score .time_remaining timer matches ..0 run function main:game/explode

