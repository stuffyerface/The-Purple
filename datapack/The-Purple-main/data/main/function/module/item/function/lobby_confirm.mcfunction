advancement revoke @s only main:triggers/items/lobby

# 
title @s times 0 5s 0
title @s title {"translate":"message.purple.lobby.confirm.title","fallback":"Are you sure?","color":"red"}
title @s subtitle {"translate":"message.purple.lobby.confirm.subtitle","fallback":"Click again to return to the lobby","color":"gray"}
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0

# 
scoreboard players set @s return_to_lobby_confirm 100
