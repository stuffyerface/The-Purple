# set team color
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SOURCE_SPEED"}] run function main:lobby/settings/personal/source_ability/speed/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SOURCE_INVISIBLE"}] run function main:lobby/settings/personal/source_ability/invisible/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SOURCE_DARKNESS"}] run function main:lobby/settings/personal/source_ability/darkness/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SOURCE_CORRUPTION"}] run function main:lobby/settings/personal/source_ability/corruption/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SOURCE_REACH"}] run function main:lobby/settings/personal/source_ability/reach/root
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"SOURCE_CLONE"}] run function main:lobby/settings/personal/source_ability/clone/root

# reset menu
function main:module/inventory/menu_preview/ability_source
