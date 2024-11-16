advancement revoke @s only main:triggers/items/spectate
advancement revoke @s only main:triggers/items/spectate_game

# return item after 1 tick 
execute if items entity @s weapon.mainhand *[minecraft:custom_data={id:SPECTATE}] run tag @s add return_item.mainhand.SPECTATE
execute if items entity @s weapon.offhand *[minecraft:custom_data={id:SPECTATE}] run tag @s add return_item.offhand.SPECTATE
execute if items entity @s weapon.mainhand *[minecraft:custom_data={id:SPECTATE_GAME}] run tag @s add return_item.mainhand.SPECTATE_GAME
execute if items entity @s weapon.offhand *[minecraft:custom_data={id:SPECTATE_GAME}] run tag @s add return_item.offhand.SPECTATE_GAME
schedule function main:module/miscellaneous/schedule/give_item_spectate 1t replace

# 
title @s times 0 5s 0
title @s title {"translate":"message.purple.spectate.confirm.title","fallback":"Are you sure?","color":"red"}
title @s subtitle {"translate":"message.purple.spectate.confirm.subtitle","fallback":"Click again to enter Spectator Mode","color":"gray"}
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0

# 
scoreboard players set @s spectate_confirm 100
