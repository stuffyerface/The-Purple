advancement revoke @s only main:triggers/items/spectate
advancement revoke @s only main:triggers/items/spectate_game

# 
title @s times 0 5s 0
title @s title {"translate":"message.purple.spectate.confirm.title","fallback":"Are you sure?","color":"red"}
title @s subtitle {"translate":"message.purple.spectate.confirm.subtitle","fallback":"Click again to enter Spectator Mode","color":"gray"}
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0

# 
scoreboard players set @s spectate_confirm 100
