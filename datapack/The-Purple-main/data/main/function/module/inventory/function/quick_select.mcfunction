# infected ability
execute if items entity @s player.cursor *[custom_data~{ability:"SOURCE_SPEED"}] run function main:module/inventory/quick_select/source_ability/1
execute if items entity @s player.cursor *[custom_data~{ability:"SOURCE_INVISIBLE"}] run function main:module/inventory/quick_select/source_ability/2
execute if items entity @s player.cursor *[custom_data~{ability:"SOURCE_DARKNESS"}] run function main:module/inventory/quick_select/source_ability/3
execute if items entity @s player.cursor *[custom_data~{ability:"SOURCE_CORRUPTION"}] run function main:module/inventory/quick_select/source_ability/4
execute if items entity @s player.cursor *[custom_data~{ability:"SOURCE_REACH"}] run function main:module/inventory/quick_select/source_ability/5
execute if items entity @s player.cursor *[custom_data~{ability:"SOURCE_CLONE"}] run function main:module/inventory/quick_select/source_ability/6

# spectator ability
execute if items entity @s player.cursor *[custom_data~{ability:"SPECTATOR_FIREWORKS"}] run function main:module/inventory/quick_select/spectator_ability/1
execute if items entity @s player.cursor *[custom_data~{ability:"SPECTATOR_SPEED"}] run function main:module/inventory/quick_select/spectator_ability/2
execute if items entity @s player.cursor *[custom_data~{ability:"SPECTATOR_TELEPORT"}] run function main:module/inventory/quick_select/spectator_ability/3
execute if items entity @s player.cursor *[custom_data~{ability:"SPECTATOR_SLIME"}] run function main:module/inventory/quick_select/spectator_ability/4
execute if items entity @s player.cursor *[custom_data~{ability:"SPECTATOR_TIME"}] run function main:module/inventory/quick_select/spectator_ability/5
execute if items entity @s player.cursor *[custom_data~{ability:"SPECTATOR_ITEM"}] run function main:module/inventory/quick_select/spectator_ability/6
