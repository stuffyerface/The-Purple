function main:module/inventory/menu_preview/root
loot replace entity @s inventory.26 loot main:item/menu_selected_slot

loot replace entity @s inventory.0 loot main:item/menu_select/death_explode
loot replace entity @s inventory.1 loot main:item/menu_select/death_shrink
loot replace entity @s inventory.2 loot main:item/menu_select/death_grave
loot replace entity @s[tag=vip] inventory.9 loot main:item/menu_select/death_golden_grave
