# ticking
scoreboard players remove .scoreboard_tick dummy 1
execute if score .scoreboard_tick dummy matches ..-5 run scoreboard players set .scoreboard_tick dummy 0
execute unless score .scoreboard_tick dummy matches 0 run return 0

# store data
execute store result storage main:dummy scoreboard.game int 1 run scoreboard players get .game data
execute store result storage main:dummy scoreboard.required int 1 run scoreboard players get .required data
execute store result storage main:dummy scoreboard.ready int 1 run scoreboard players get .ready data
execute store result storage main:dummy scoreboard.round int 1 run scoreboard players get .round data
execute store result storage main:dummy scoreboard.players int 1 run scoreboard players get .players data
execute store result storage main:dummy scoreboard.alive int 1 run scoreboard players get .alive data
execute store result storage main:dummy scoreboard.infected int 1 run scoreboard players get .corrupted data
execute store result storage main:dummy scoreboard.spectating int 1 run scoreboard players get .spectating data
execute store result storage main:dummy scoreboard.total_games int 1 run scoreboard players get .total_games data
execute store result storage main:dummy scoreboard.total_rounds int 1 run scoreboard players get .total_rounds data
execute store result storage main:dummy scoreboard.total_deaths int 1 run scoreboard players get .total_deaths data
execute store result storage main:dummy scoreboard.total_items int 1 run scoreboard players get .total_items data
execute store result storage main:dummy scoreboard.total_fish int 1 run scoreboard players get .total_fish data
execute store result storage main:dummy scoreboard.total_artifacts int 1 run scoreboard players get .total_artifacts data

# macro
execute if score .game data matches ..0 run function main:module/scoreboard/macro/lobby with storage main:dummy scoreboard
execute if score .game data matches 1.. run function main:module/scoreboard/macro/game with storage main:dummy scoreboard

# game status
execute if score .game data matches -1 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.wait","fallback":"Status: Waiting","color":"dark_gray"}]
execute if score .game data matches 0 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.start","fallback":"Status: Starting","color":"dark_gray"}]
execute if score .game data matches 1 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.active","fallback":"Status: Active!","color":"dark_gray"}]
execute if score .game data matches 2 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.wait","fallback":"Status: Waiting","color":"dark_gray"}]
execute if score .game data matches 3 run scoreboard players display name $line15 title [{"translate":"scoreboard.purple.status.end","fallback":"Status: Ending","color":"dark_gray"}]
