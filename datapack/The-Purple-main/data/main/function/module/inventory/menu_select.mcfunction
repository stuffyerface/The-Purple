# close menu
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"MENU_EXIT"}] run tag @s add active_execution
execute if entity @s[tag=active_execution] run clear @s
execute if entity @s[tag=active_execution] run function main:lobby/player/inventory/load
execute if entity @s[tag=active_execution] run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
execute if entity @s[tag=active_execution] run tag @s remove in_selection_menu
execute if entity @s[tag=active_execution] run return run tag @s remove active_execution

# 
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"SELECT_ABILITY_SOURCE"}] run function main:module/inventory/menu_select/ability_source
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"SELECT_ABILITY_SPECTATOR"}] run function main:module/inventory/menu_select/ability_spectator
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"SELECT_COSMETIC_COLOR"}] run function main:module/inventory/menu_select/cosmetic_color
