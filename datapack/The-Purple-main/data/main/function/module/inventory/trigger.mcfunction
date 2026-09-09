advancement revoke @s only main:triggers/module/change_inventory
execute if entity @s[tag=active_execution] run return fail

# quick select detection
execute if items entity @s player.cursor *[minecraft:custom_data~{menu_preview:true}] run function main:module/inventory/menu_preview
execute if items entity @s player.cursor *[minecraft:custom_data~{menu_item:true}] run function main:module/inventory/menu_select

# lost lobby_button detection
execute if score .game data matches -1 if score @s relog matches 1.. run return fail
execute if score .game data matches 1.. unless entity @s[tag=!player,tag=!ready] run return fail
execute if predicate main:has_item/lobby_button run return fail
execute if entity @n[type=item, distance=..5, predicate=main:has_item/lobby_button] run return fail

function main:module/inventory/item/lobby_button
