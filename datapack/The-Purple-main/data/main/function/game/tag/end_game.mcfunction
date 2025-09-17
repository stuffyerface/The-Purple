execute unless score .game data matches 3 run scoreboard players set .game data 3

execute unless score .end data matches 1.. as @a[tag=alive] at @s run function main:game/tag/function/player_win_stats
execute unless score .end data matches 1.. as @a[tag=alive] at @s run function main:module/cosmetic/victory_dance/activate
execute unless score .end data matches 1.. run function main:message/game/end_game
execute unless score .end data matches 1.. run scoreboard players set .end data 1

execute if score .end data matches 1 unless score .countdown data matches 1.. run scoreboard players set .countdown data 10
execute if score .end data matches 1 if score .countdown data matches 1.. run scoreboard players remove .countdown data 1
#execute if score .end data matches 1 if score .countdown data matches 0..5 run function main:message/game/end
execute if score .end data matches 1 if score .countdown data matches 0 run scoreboard players add .end data 1

execute if score .end data matches 2 if score .countdown data matches 0 run function main:game/tag/function/reset
execute if score .end data matches 2 if score .countdown data matches 0 run scoreboard players set .game data -1

execute if score .game data matches 3 run return run schedule function main:game/tag/end_game 1s
scoreboard players reset .countdown data
scoreboard players reset .end data
scoreboard players add .total_games data 1

## end game
#  - cosmetic victory stuff
#  - wait 5s
#  - run main:game/tag/function/reset
