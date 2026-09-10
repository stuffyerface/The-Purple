execute unless entity @s[tag=in_selection_menu] run return fail

# close menu
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"MENU_EXIT"}] run tag @s add active_execution
execute if entity @s[tag=active_execution] run tag @s remove in_selection_menu
execute if entity @s[tag=active_execution] run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
execute if entity @s[tag=active_execution] run clear @s
execute if entity @s[tag=active_execution] run return run function main:lobby/player/inventory/load

# selection buttons
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"SELECT_ABILITY_SOURCE"}] run function main:module/inventory/menu_select/ability_source
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"SELECT_ABILITY_SPECTATOR"}] run function main:module/inventory/menu_select/ability_spectator
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"SELECT_COSMETIC_COLOR"}] run function main:module/inventory/menu_select/cosmetic_color
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"SELECT_COSMETIC_VICTORY_DANCE"}] run function main:module/inventory/menu_select/cosmetic_victory_dance
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"SELECT_COSMETIC_DEATH_EFFECT"}] run function main:module/inventory/menu_select/cosmetic_death_effect

# miscellaneous menu items
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"LOBBY_BUTTON"}] run loot give @s loot main:item/lobby_button
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"MENU_SELECTED_SLOT"}] run loot give @s loot main:item/menu_selected_slot
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"MENU_SLOT_EMPTY"}] run loot give @s loot main:item/menu_slot_empty
item fill entity @s main:menu_select with minecraft:air
