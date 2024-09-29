scoreboard players set .game gameData -1
scoreboard players reset .round gameData
scoreboard players reset .alive gameData
scoreboard players reset .players gameData
scoreboard players reset .pregame timer
scoreboard players reset .between timer
scoreboard players reset .time_remaining timer
scoreboard players reset .starting_immunity timer

tag @a remove source
tag @a remove alive
tag @a remove start_now
tag @a remove cancel_start

clear @a minecraft:popped_chorus_fruit[minecraft:custom_data={source:1b}]
clear @a minecraft:lime_dye[minecraft:custom_data={start_now:1b}]
clear @a minecraft:gray_dye[minecraft:custom_data={cancel_start:1b}]