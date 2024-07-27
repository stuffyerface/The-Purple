scoreboard players add .tick timer 1
execute if score .tick timer matches 20.. if score .pregame timer matches 1.. run scoreboard players remove .pregame timer 1
execute if score .tick timer matches 20.. if score .between timer matches 1.. run scoreboard players remove .between timer 1
execute if score .tick timer matches 20.. if score .end timer matches 1.. run scoreboard players remove .end timer 1
execute if score .tick timer matches 20.. if score .time_remaining timer matches 1.. run scoreboard players remove .time_remaining timer 1
execute if score .tick timer matches 20.. if score .starting_immunity timer matches 0.. run scoreboard players remove .starting_immunity timer 1
execute if score .tick timer matches 20.. as @a[scores={tagback_timer=1..}] run scoreboard players remove @s tagback_timer 1
execute if score .tick timer matches 20.. run scoreboard players set .tick timer 0
execute if score .round_timer settings matches 1.. as @a unless score @s actionbar matches 0.. run title @s actionbar [{"score":{"name":".time_remaining","objective":"timer"}},{"text":"s"}]

# .pregame | .between
execute if score .pregame timer matches ..0 run function main:game/tag/start/game
execute if score .between timer matches ..0 run function main:game/tag/start/round
execute if score .end timer matches ..0 run function main:game/tag/end/game

# .time_remaining
execute if score .time_remaining timer matches 3 if score .tick timer matches 0 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute if score .time_remaining timer matches 2 if score .tick timer matches 0 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.75
execute if score .time_remaining timer matches 1 if score .tick timer matches 0 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5
execute if score .time_remaining timer matches ..0 run function main:game/tag/end/round

# .starting_immunity
execute if score .starting_immunity timer matches 0 run tellraw @a [{"text":"Starting Immunity has worn off!","color":"dark_purple"}]
execute if score .starting_immunity timer matches 0 run scoreboard players reset .starting_immunity timer

# reset tagback
execute as @a[scores={tagback_timer=0}] run scoreboard players reset @s tagback_uuid.0
execute as @a[scores={tagback_timer=0}] run scoreboard players reset @s tagback_timer

# .environmental_corruption
#execute as @a at @s if entity @e[tag=footstep,distance=..0.5] run title @s actionbar "!!!!"