execute if score .game data matches 1.. run return run tellraw @s ["[Console] ",{"text":"The game is already running!","color":"red"}]
scoreboard players set .game data 0

execute unless score .countdown data matches 1.. unless score .pregame data matches 1.. run scoreboard players set .countdown data 6
execute unless score .countdown data matches 1.. if score .pregame data matches 1.. run scoreboard players set .countdown data 9
execute if score .countdown data matches 1.. run scoreboard players remove .countdown data 1
execute if score .countdown data matches 0..5 run function main:message/game/pregame
execute if score .countdown data matches 0 run scoreboard players add .pregame data 1

execute if score .countdown data matches 0 if score .pregame data matches 1 run clear @a[tag=ready]
execute if score .countdown data matches 0 if score .pregame data matches 1 run function main:game/tag/function/teleport
execute if score .countdown data matches 0 if score .pregame data matches 1 if score .map settings matches 0 run data merge block 3 14 -22 {lock:{components:{"minecraft:custom_data":{id:KEY}}}}
execute if score .countdown data matches 0 if score .pregame data matches 2 run function main:message/settings/breakdown
execute if score .countdown data matches 0 if score .pregame data matches 2 as @e[tag=preview,nbt={view_range:1.0f}] run data merge entity @s {view_range:0.0f}
execute if score .countdown data matches 0 if score .pregame data matches 2 run function main:game/tag/function/player_setup
execute if score .countdown data matches 0 if score .pregame data matches 2 store result bossbar main:time max run scoreboard players get .round_length settings
execute if score .countdown data matches 0 if score .pregame data matches 2 run bossbar set main:time visible true
execute if score .countdown data matches 0 if score .pregame data matches 2 run scoreboard players operation .starting_immunity data = .starting_immunity settings
execute if score .countdown data matches 0 if score .pregame data matches 2 run scoreboard players operation .time data = .round_length settings
execute if score .countdown data matches 0 if score .pregame data matches 2 run scoreboard players set .game data 1

execute if score .game data matches 0 run return run schedule function main:game/tag/start 1s
scoreboard players reset .start_countdown data
scoreboard players reset .countdown data
scoreboard players reset .required data
scoreboard players reset .pregame data
scoreboard players reset .ready data
scoreboard players add .round data 1
scoreboard players add .total_rounds data 1

## start
# - 5s until game starts
# - teleport all ready players into the selected map
# - 5s to spread out
# - source player(s) are randomly selected
# - round time starts ticking
