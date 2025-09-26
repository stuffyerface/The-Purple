# set ability
scoreboard players set @s source_ability 6
clear @s *[custom_data={id:"SOURCE_ABILITY"}]
function main:module/item/system/macro/give {id:"SOURCE_ABILITY_CLONE",slot:"hotbar.7"}
item replace entity @s hotbar.7 from entity @s hotbar.7 main:fill_player_head
title @s actionbar [{"color":"green","translate":"item.purple.source_ability","fallback":"Corrupted Ability: %s","with":[{"translate":"item.purple.source_ability.clone","fallback":"Clone Ally","color":"white"}]}]
scoreboard players set @s actionbar 30

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Source Ability: ",{"text":"Clone Ally","color":"gray"},"."]
