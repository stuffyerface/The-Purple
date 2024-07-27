scoreboard players set .game gameData -1
scoreboard players reset .round gameData
scoreboard players reset .end timer
tag @a remove alive
execute as @a run function c:tp/lobby
gamemode adventure @a
tellraw @a [{"text":"[Console] "},{"text":"game over!"}]