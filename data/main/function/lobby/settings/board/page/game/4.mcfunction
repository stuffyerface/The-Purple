tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Game Page 4."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.game","fallback":"Game Settings","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\\n                      ","color":"gray"}]'}

# elements
execute positioned ~-1.2 ~3 ~ run function main:lobby/settings/game/winners/element
execute positioned ~-1.2 ~2 ~ run function main:lobby/settings/game/players_ready_percent/element
execute positioned ~-1.2 ~1 ~ run function main:lobby/settings/game/offline_time/element

execute positioned ~-3.1 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.presets.page_1',texture:'"minecraft:writable_book"',background:'"minecraft:air"'}
execute positioned ~1.5 ~0.45 ~ run function main:lobby/settings/board/element/square_skull {setting:'setting.items.page_1',texture:'"minecraft:player_head",components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZkY2ZiNDAwOTc2YmY3M2VjMzJjMWI5OTYyYzgzMGZjM2Q3MDA2ZDc0OWY4ZjNkYTNiNmUwZmI4MjkwOWIyOCJ9fX0="}]}}',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}

execute positioned ~-2.03 ~0.25 ~ run function main:lobby/settings/board/element/arrow_left {"page":"game","number":"3"}
execute positioned ~-1.03 ~0.25 ~ run function main:lobby/settings/board/element/arrow_right {"page":"game","number":"5"}
