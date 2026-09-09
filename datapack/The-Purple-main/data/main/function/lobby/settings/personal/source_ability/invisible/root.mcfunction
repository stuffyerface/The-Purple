# set ability
scoreboard players set @s source_ability 2
function main:module/inventory/item/preview_ability_source
title @s actionbar [{"color":"green","translate":"item.purple.source_ability","fallback":"Corrupted Ability: %s","with":[{"translate":"item.purple.source_ability.invisible","fallback":"Invisibility","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Source Ability: ",{"text":"Invisibility","color":"gray"},"."]
