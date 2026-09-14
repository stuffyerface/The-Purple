playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
clear @s

# load preview items
function main:module/inventory/item/lobby_button
function main:module/inventory/item/preview_ability_spectator
function main:module/inventory/item/preview_ability_source
function main:module/inventory/item/preview_cosmetic_color
function main:module/inventory/item/preview_cosmetic_victory_dance
function main:module/inventory/item/preview_cosmetic_death_effect

# blank inventory
loot replace entity @s hotbar.1 loot main:item/menu_slot_empty
loot replace entity @s hotbar.2 loot main:item/menu_slot_empty
loot replace entity @s hotbar.3 loot main:item/menu_slot_empty
loot replace entity @s inventory.0 loot main:item/menu_slot_empty
loot replace entity @s inventory.1 loot main:item/menu_slot_empty
loot replace entity @s inventory.2 loot main:item/menu_slot_empty
loot replace entity @s inventory.3 loot main:item/menu_slot_empty
loot replace entity @s inventory.4 loot main:item/menu_slot_empty
loot replace entity @s inventory.5 loot main:item/menu_slot_empty
loot replace entity @s inventory.6 loot main:item/menu_slot_empty
loot replace entity @s inventory.7 loot main:item/menu_slot_empty
loot replace entity @s inventory.8 loot main:item/menu_exit
loot replace entity @s inventory.9 loot main:item/menu_slot_empty
loot replace entity @s inventory.10 loot main:item/menu_slot_empty
loot replace entity @s inventory.11 loot main:item/menu_slot_empty
loot replace entity @s inventory.12 loot main:item/menu_slot_empty
loot replace entity @s inventory.13 loot main:item/menu_slot_empty
loot replace entity @s inventory.14 loot main:item/menu_slot_empty
loot replace entity @s inventory.15 loot main:item/menu_slot_empty
loot replace entity @s inventory.16 loot main:item/menu_slot_empty
loot replace entity @s inventory.17 loot main:item/menu_slot_empty
loot replace entity @s inventory.18 loot main:item/menu_slot_empty
loot replace entity @s inventory.19 loot main:item/menu_slot_empty
loot replace entity @s inventory.20 loot main:item/menu_slot_empty
loot replace entity @s inventory.21 loot main:item/menu_slot_empty
loot replace entity @s inventory.22 loot main:item/menu_unselected_slot
loot replace entity @s inventory.23 loot main:item/menu_unselected_slot
loot replace entity @s inventory.24 loot main:item/menu_unselected_slot
loot replace entity @s inventory.25 loot main:item/menu_unselected_slot
loot replace entity @s inventory.26 loot main:item/menu_unselected_slot
