# set ability
scoreboard players set @s spectator_ability 3
clear @s *[custom_data={id:"SPECTATOR_ABILITY"}]
function main:module/item/system/macro/give {id:"SPECTATOR_ABILITY_TELEPORT",slot:"hotbar.8"}
title @s actionbar [{"color":"green","translate":"item.purple.spectator_ability","fallback":"Spectator Ability: %s","with":[{"translate":"item.purple.spectator_ability.teleport","fallback":"Random Teleport","color":"white"}]}]
scoreboard players set @s actionbar 30

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Spectator Ability: ",{"text":"Random Teleport","color":"gray"},"."]
