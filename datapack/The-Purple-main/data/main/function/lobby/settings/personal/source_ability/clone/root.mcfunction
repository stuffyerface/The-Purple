# set ability
scoreboard players set @s source_ability 6
function main:lobby/player/inventory/item/ability_preview_source
title @s actionbar [{"color":"green","translate":"item.purple.source_ability","fallback":"Corrupted Ability: %s","with":[{"translate":"item.purple.source_ability.clone","fallback":"Clone Ally","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Source Ability: ",{"text":"Clone Ally","color":"gray"},"."]
