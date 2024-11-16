tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Cosmetic Page 1."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.color","fallback":"Choose Your Color","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\\n                                     ","color":"gray"}]'}

# elements
execute positioned ~-2.3 ~3.3 ~ run function main:lobby/settings/board/element/color {"color":"red"}
execute positioned ~-2.3 ~2.3 ~ run function main:lobby/settings/board/element/color {"color":"orange"}
execute positioned ~-2.3 ~1.3 ~ run function main:lobby/settings/board/element/color {"color":"yellow"}

execute positioned ~-0.75 ~3.3 ~ run function main:lobby/settings/board/element/color {"color":"lime"}
execute positioned ~-0.75 ~2.3 ~ run function main:lobby/settings/board/element/color {"color":"green"}
execute positioned ~-0.75 ~1.3 ~ run function main:lobby/settings/board/element/color {"color":"cyan"}

execute positioned ~0.75 ~3.3 ~ run function main:lobby/settings/board/element/color {"color":"light_blue"}
execute positioned ~0.75 ~2.3 ~ run function main:lobby/settings/board/element/color {"color":"blue"}
execute positioned ~0.75 ~1.3 ~ run function main:lobby/settings/board/element/color {"color":"purple"}

execute positioned ~2.3 ~3.3 ~ run function main:lobby/settings/board/element/color {"color":"magenta"}
execute positioned ~2.3 ~2.3 ~ run function main:lobby/settings/board/element/color {"color":"pink"}
execute positioned ~2.3 ~1.3 ~ run function main:lobby/settings/board/element/color {"color":"brown"}

execute positioned ~0.575 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.cosmetic.page_2',texture:'"minecraft:firework_rocket"',background:'"minecraft:air"'}
execute positioned ~1.500 ~0.45 ~ run function main:lobby/settings/board/element/square_skull {setting:'setting.cosmetic.page_3',texture:'"minecraft:skeleton_skull"',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.350 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
