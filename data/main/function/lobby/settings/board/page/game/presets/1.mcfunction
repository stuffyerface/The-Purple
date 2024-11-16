tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Presets Page 1."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.presets","fallback":"Setting Presets","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\\n                            ","color":"gray"}]'}

# elements
execute positioned ~-1.85 ~3 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.presets.1',translate:"setting.purple.button.presets.1.name",fallback:"Default Settings",texture:'"minecraft:writable_book"',background:'"minecraft:gray_concrete"'}
execute positioned ~-1.85 ~2 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.presets.2',translate:"setting.purple.button.presets.2.name",fallback:"Chaos Mode",texture:'"minecraft:writable_book"',background:'"minecraft:gray_concrete"'}
#execute positioned ~-1.85 ~1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.presets.3',translate:"setting.purple.button.presets.3.name",fallback:"Preset #3",texture:'"minecraft:writable_book"',background:'"minecraft:gray_concrete"'}

#execute positioned ~2.15 ~3 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'setting.presets.4',translate:"setting.purple.button.presets.4.name",fallback:"Preset #4",texture:'"minecraft:writable_book"',background:'"minecraft:gray_concrete"'}
#execute positioned ~2.15 ~2 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'setting.presets.5',translate:"setting.purple.button.presets.5.name",fallback:"Preset #5",texture:'"minecraft:writable_book"',background:'"minecraft:gray_concrete"'}
#execute positioned ~2.15 ~1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'setting.presets.6',translate:"setting.purple.button.presets.6.name",fallback:"Preset #6",texture:'"minecraft:writable_book"',background:'"minecraft:gray_concrete"'}

execute positioned ~-3.1 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.game.page_1',texture:'"minecraft:nether_star"',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}

#execute positioned ~-2.03 ~0.25 ~ run function main:lobby/settings/board/element/arrow_left {"page":"presets","number":"2"}
#execute positioned ~-1.03 ~0.25 ~ run function main:lobby/settings/board/element/arrow_right {"page":"presets","number":"2"}
