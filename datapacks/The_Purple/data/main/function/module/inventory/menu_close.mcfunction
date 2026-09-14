execute unless entity @s[tag=in_selection_menu] run return fail
execute if items entity @s main:menu_select *[minecraft:custom_data~{id:"MENU_EXIT"}] run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5

# close menu
tag @s add active_execution
tag @s remove in_selection_menu
clear @s
function main:lobby/player/inventory/load
tag @s remove active_execution
