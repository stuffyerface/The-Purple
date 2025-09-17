tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to the list of settings."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:[{"text":"\n","bold":true},{"translate":"setting.purple.title.menu","fallback":"Settings","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\n               ","color":"gray"}], alignment: "center"}

# left buttons
execute positioned ~-2 ~3.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.close',translate:"setting.purple.button.main",fallback:"Title Page",background:'"minecraft:gray_concrete"'}
execute if score .map settings matches 0 positioned ~-2 ~2.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.map.page_0',translate:"setting.purple.button.map",fallback:"Map Selector",background:'"minecraft:gray_concrete"'}
execute if score .map settings matches 1 positioned ~-2 ~2.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.map.page_1',translate:"setting.purple.button.map",fallback:"Map Selector",background:'"minecraft:gray_concrete"'}
execute if score .map settings matches 2 positioned ~-2 ~2.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.map.page_2',translate:"setting.purple.button.map",fallback:"Map Selector",background:'"minecraft:gray_concrete"'}
execute if score .map settings matches 3 positioned ~-2 ~2.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.map.page_3',translate:"setting.purple.button.map",fallback:"Map Selector",background:'"minecraft:gray_concrete"'}
execute unless score .map settings matches 0..3 positioned ~-2 ~2.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.map.page_1',translate:"setting.purple.button.map",fallback:"Map Selector",background:'"minecraft:gray_concrete"'}
execute positioned ~-2 ~1.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.ability.page_1',translate:"setting.purple.button.ability",fallback:"Your Abilities",background:'"minecraft:gray_concrete"'}

# right buttons
execute positioned ~2 ~3.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.stats.page_1',translate:"setting.purple.button.stats",fallback:"Statistics",background:'"minecraft:gray_concrete"'}
execute positioned ~2 ~2.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.game.page_1',translate:"setting.purple.button.game",fallback:"Game Settings",background:'"minecraft:gray_concrete"'}
execute positioned ~2 ~1.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.cosmetic.page_1',translate:"setting.purple.button.cosmetic",fallback:"Your Cosmetics",background:'"minecraft:gray_concrete"'}

# elements
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
