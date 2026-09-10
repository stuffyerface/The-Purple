# set death effect
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"DEATH_EXPLODE"}] run function main:lobby/settings/personal/death_effect/explode/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"DEATH_SHRINK"}] run function main:lobby/settings/personal/death_effect/shrink/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"DEATH_GRAVE"}] run function main:lobby/settings/personal/death_effect/grave/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"DEATH_GOLDEN_GRAVE"}] run function main:lobby/settings/personal/death_effect/golden_grave/root

advancement grant @s only main:advancement/1_gameplay/choices_choices death_effect

# reset menu
function main:module/inventory/menu_preview/cosmetic_death_effect
