# scoreboard
execute if score .game data matches ..0 run function main:module/scoreboard/lobby
execute if score .game data matches 1.. run function main:module/scoreboard/game

# game status
execute if score .game data matches -1 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.wait","fallback":"Status: Waiting","color":"dark_gray"}]
execute if score .game data matches 0 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.start","fallback":"Status: Starting","color":"dark_gray"}]
execute if score .game data matches 1 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.active","fallback":"Status: Active!","color":"dark_gray"}]
execute if score .game data matches 2 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.wait","fallback":"Status: Waiting","color":"dark_gray"}]
execute if score .game data matches 3 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.end","fallback":"Status: Ending","color":"dark_gray"}]
