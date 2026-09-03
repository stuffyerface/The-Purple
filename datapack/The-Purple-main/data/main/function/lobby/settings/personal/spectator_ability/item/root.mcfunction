# set ability
scoreboard players set @s spectator_ability 6
function main:lobby/player/inventory/item/spectator_ability
title @s actionbar [{"color":"green","translate":"item.purple.spectator_ability","fallback":"Spectator Ability: %s","with":[{"translate":"item.purple.spectator_ability.item","fallback":"Item Box","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Spectator Ability: ",{"text":"Item Box","color":"gray"},"."]
