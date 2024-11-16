# set ability
scoreboard players set @s source_ability 3
clear @s *[custom_data={id:"SOURCE_ABILITY"}]
function main:module/item/system/macro/give {id:"SOURCE_ABILITY_DARKNESS",slot:"hotbar.7"}
title @s actionbar [{"color":"green","translate":"item.purple.source_ability","fallback":"Corrupted Ability: %s","with":[{"translate":"item.purple.source_ability.darkness","fallback":"Looming Darkness","color":"white"}]}]
scoreboard players set @s actionbar 30

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Source Ability: ",{"text":"Looming Darkness","color":"gray"},"."]
