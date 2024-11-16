execute unless score @s spectate_confirm matches 0.. run return run function main:module/item/function/spectate_confirm
advancement revoke @s only main:triggers/items/spectate

#
function main:game/tag/function/player_spectate

title @s times 0 3s 1s
title @s title {"translate":"message.purple.spectate.title","fallback":"Spectator Mode","color":"dark_purple"}
title @s subtitle {"translate":"message.purple.spectate.subtitle","fallback":"%s to return to the game","with":[{"text":"/trigger return","color":"red"}],"color":"gray"}
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5
scoreboard players reset @s spectate_confirm
scoreboard players set @s return -2147483648
scoreboard players enable @s return
