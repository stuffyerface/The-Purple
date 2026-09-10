advancement revoke @s only main:triggers/module/change_inventory
execute if entity @s[tag=active_execution] run return fail

# quick select detection
execute if score .game data matches 1.. unless entity @s[tag=!player,tag=!ready] run return fail
execute if items entity @s player.cursor *[minecraft:custom_data~{menu_preview:true}] run return run function main:module/inventory/menu_preview
execute if items entity @s main:menu_select *[minecraft:custom_data~{menu_item:true}] run return run function main:module/inventory/menu_select

# sticky buttons
execute if score .game data matches 0.. unless entity @s[tag=!player,tag=!ready] run return fail
execute unless items entity @s hotbar.4 *[minecraft:custom_data~{id:"PREVIEW_ABILITY_SPECTATOR"}] run function main:module/inventory/item/preview_ability_spectator
execute unless items entity @s hotbar.5 *[minecraft:custom_data~{id:"PREVIEW_ABILITY_SOURCE"}] run function main:module/inventory/item/preview_ability_source
execute unless items entity @s hotbar.6 *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_COLOR"}] run function main:module/inventory/item/preview_cosmetic_color
execute unless items entity @s hotbar.7 *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_VICTORY_DANCE"}] run function main:module/inventory/item/preview_cosmetic_victory_dance
execute unless items entity @s hotbar.8 *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_DEATH_EFFECT"}] run function main:module/inventory/item/preview_cosmetic_death_effect
execute unless items entity @s[tag=in_selection_menu] inventory.8 *[minecraft:custom_data~{id:"MENU_EXIT"}] run function main:module/inventory/item/menu_exit

# lost lobby_button detection
execute if score .game data matches -1 if score @s relog matches 1.. run return fail
execute if predicate main:has_item/lobby_button run return fail
execute if entity @n[type=minecraft:item,distance=..5,predicate=main:has_item/lobby_button] run return fail

function main:module/inventory/item/lobby_button
