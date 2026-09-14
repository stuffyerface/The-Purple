execute if score @s lobby.border matches -1 unless function main:module/miscellaneous/if/teleport run return run function c:tp/lobby
execute if score .game data matches -1 run return run function c:tp/lobby
execute if score .map settings matches 0 run return run function c:tp/lobby
execute if score .map settings matches 1 run return run function c:tp/map_1
execute if score .map settings matches 2 run return run function c:tp/map_2
execute if score .map settings matches 3 run return run function c:tp/map_3
execute unless score .map settings matches 0..3 run return run tellraw @s ["[Console] ",{"text":"This map doesn't exist!","color":"red"}]
