# set team color
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SPECTATOR_FIREWORKS"}] run function main:lobby/settings/personal/spectator_ability/fireworks/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SPECTATOR_SPEED"}] run function main:lobby/settings/personal/spectator_ability/speed/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SPECTATOR_TELEPORT"}] run function main:lobby/settings/personal/spectator_ability/teleport/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SPECTATOR_SLIME"}] run function main:lobby/settings/personal/spectator_ability/slime/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SPECTATOR_TIME"}] run function main:lobby/settings/personal/spectator_ability/time/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SPECTATOR_ITEM"}] run function main:lobby/settings/personal/spectator_ability/item/root

# reset menu
function main:module/inventory/menu_preview/ability_spectator
