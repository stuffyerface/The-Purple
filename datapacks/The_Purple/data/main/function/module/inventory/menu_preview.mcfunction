# save inventory
execute unless entity @s[tag=in_selection_menu] run function main:lobby/player/inventory/save
tag @s add in_selection_menu

# load selection menu
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"PREVIEW_ABILITY_SOURCE"}] run function main:module/inventory/menu_preview/ability_source
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"PREVIEW_ABILITY_SPECTATOR"}] run function main:module/inventory/menu_preview/ability_spectator
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_COLOR"}] run function main:module/inventory/menu_preview/cosmetic_color
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_DEATH_EFFECT"}] run function main:module/inventory/menu_preview/cosmetic_death_effect
execute if items entity @s player.cursor *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_VICTORY_DANCE"}] run function main:module/inventory/menu_preview/cosmetic_victory_dance
