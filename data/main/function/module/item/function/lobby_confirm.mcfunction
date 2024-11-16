advancement revoke @s only main:triggers/items/lobby

# return item after 1 tick 
execute if items entity @s weapon.mainhand *[minecraft:custom_data={id:LOBBY}] run tag @s add return_item.mainhand.LOBBY
execute if items entity @s weapon.offhand *[minecraft:custom_data={id:LOBBY}] run tag @s add return_item.offhand.LOBBY
schedule function main:module/miscellaneous/schedule/give_item_lobby 1t replace

# 
title @s times 0 5s 0
title @s title {"translate":"message.purple.lobby.confirm.title","fallback":"Are you sure?","color":"red"}
title @s subtitle {"translate":"message.purple.lobby.confirm.subtitle","fallback":"Click again to return to the lobby","color":"gray"}
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0

# 
scoreboard players set @s return_to_lobby_confirm 100
