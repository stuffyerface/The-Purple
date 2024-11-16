execute unless score .game data matches 2 run scoreboard players set .game data 2
execute unless score .time data matches 0 run scoreboard players set .time data 0

execute unless score .between_rounds data matches 1.. run function main:message/game/end_round
execute unless score .between_rounds data matches 1.. run function main:game/tag/function/kill_infected
execute unless score .between_rounds data matches 1.. run bossbar set main:time players @a[tag=player]
execute unless score .between_rounds data matches 1.. run scoreboard players set .alive data 0
execute unless score .between_rounds data matches 1.. as @a[tag=alive] run scoreboard players add .alive data 1
execute unless score .between_rounds data matches 1.. as @a[tag=alive] run scoreboard players add @s stat.total_rounds 1
execute unless score .between_rounds data matches 1.. as @a[tag=alive] run xp add @s 10 points
execute unless score .between_rounds data matches 1.. as @a[tag=alive,tag=last_second] run advancement grant @s only main:advancement/2_challenge/not_even_close
execute unless score .between_rounds data matches 1.. as @a[tag=alive,tag=last_second] run tag @s remove last_second
execute unless score .between_rounds data matches 1.. if score .alive data <= .winners settings run return run function main:game/tag/end_game
execute unless score .between_rounds data matches 1.. run scoreboard players set .between_rounds data 1

execute if score .between_rounds data matches 1 unless score .countdown data matches 1.. run scoreboard players set .countdown data 6
execute if score .between_rounds data matches 1 if score .countdown data matches 1.. run scoreboard players remove .countdown data 1
execute if score .between_rounds data matches 1 if score .countdown data matches 0..3 run function main:message/game/between_rounds
execute if score .between_rounds data matches 1 if score .countdown data matches 0 run scoreboard players add .between_rounds data 1
execute if score .between_rounds data matches 2 if score .countdown data matches 0 run scoreboard players set .game data 1

execute if score .game data matches 2 run return run schedule function main:game/tag/end_round 1s
scoreboard players reset .countdown data
scoreboard players reset .between_rounds data
scoreboard players add .round data 1
scoreboard players add .total_rounds data 1

# round start
scoreboard players operation .starting_immunity data = .starting_immunity settings
scoreboard players operation .time data = .round_length settings
scoreboard players set @a[scores={spectator_ability_timer=1..}] spectator_ability_timer 1
scoreboard players set @a[scores={source_ability_timer=1..}] source_ability_timer 1
scoreboard players reset * double_tap
scoreboard players reset * double_tap_uuid.0
scoreboard players reset * double_tap_uuid.1
scoreboard players reset * tagback_timer
scoreboard players reset * tagback_uuid.0
scoreboard players reset * tagback_uuid.1
execute if score .reduce_timer settings matches 1.. run function main:game/tag/function/reduce_timer
execute if score .round_teleport settings <= .round data as @a[tag=player,tag=!corrupted,gamemode=!spectator] run function c:tp/current_location
function main:game/tag/function/select_source


## end round
#  - kill all infected players
#  - if only 1 player remains, run main:game/tag/end_game, otherwise continue
#  - wait 5s
#  - new source player(s) are randomly selected
#  - round time starts ticking
