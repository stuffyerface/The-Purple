# set ability
scoreboard players set @s source_ability 4
function main:lobby/player/inventory/item/source_ability
title @s actionbar [{"color":"green","translate":"item.purple.source_ability","fallback":"Corrupted Ability: %s","with":[{"translate":"item.purple.source_ability.corruption","fallback":"Corrupt Growth","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Source Ability: ",{"text":"Corrupt Growth","color":"gray"},"."]
