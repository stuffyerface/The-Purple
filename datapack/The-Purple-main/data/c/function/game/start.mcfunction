execute if score .game data matches 1.. run return run tellraw @s ["[Console] ",{"text":"The game is already running!","color":"red"}]
execute if score .countdown data matches 0.. run return run tellraw @s ["[Console] ",{"text":"The game is already starting!","color":"red"}]
tag @a add ready
function main:game/tag/start