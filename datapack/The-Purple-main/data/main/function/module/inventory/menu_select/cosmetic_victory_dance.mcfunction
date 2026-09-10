# set victory dance
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"VICTORY_FIREWORKS"}] run function main:lobby/settings/personal/victory_dance/fireworks/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"VICTORY_RAINBOW_SHEEP"}] run function main:lobby/settings/personal/victory_dance/rainbow_sheep/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"VICTORY_HORSE"}] run function main:lobby/settings/personal/victory_dance/horse/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"VICTORY_GOLDEN_THRONE"}] run function main:lobby/settings/personal/victory_dance/golden_throne/root

advancement grant @s only main:advancement/1_gameplay/choices_choices victory_dance

# reset menu
function main:module/inventory/menu_preview/cosmetic_victory_dance
