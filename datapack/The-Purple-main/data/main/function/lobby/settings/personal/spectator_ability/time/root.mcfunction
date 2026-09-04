# set ability
scoreboard players set @s spectator_ability 5
function main:lobby/player/inventory/item/ability_preview_spectator
title @s actionbar [{"color":"green","translate":"item.purple.spectator_ability","fallback":"Spectator Ability: %s","with":[{"translate":"item.purple.spectator_ability.time","fallback":"Reduce Timer","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Spectator Ability: ",{"text":"Reduce Timer","color":"gray"},"."]
