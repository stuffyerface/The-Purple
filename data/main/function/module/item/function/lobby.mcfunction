execute unless score @s return_to_lobby_confirm matches 0.. run return run function main:module/item/function/lobby_confirm
advancement revoke @s only main:triggers/items/lobby

function c:tp/lobby
function main:game/tag/function/player_reset
bossbar set main:time players @a[tag=player]

title @s clear
#
#
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
scoreboard players reset @s return_to_lobby_confirm
tag @s add return_to_lobby_confirm
schedule function main:module/miscellaneous/schedule/give_lobby_inventory 1t replace
