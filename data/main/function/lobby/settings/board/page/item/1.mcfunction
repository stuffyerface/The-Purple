tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Item Page 1."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.item","fallback":"Item Settings","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\\n                      ","color":"gray"}]'}

# elements
execute positioned ~-2.25 ~3.3 ~ run function main:lobby/settings/game/item/element {id:"SMALL_MUSHROOM",texture:'"minecraft:player_head",components:{"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY5NmI4ZDAxZjU4MzVlZDM4YWZkNDUzMDIyOGQwYjVhYmI3ZDQ1YTM1NTUxOWVhNjgwYzQwZmZjYTMyZWRmMiJ9fX0="}]}}'}
execute positioned ~-2.25 ~2.3 ~ run function main:lobby/settings/game/item/element {id:"CHORUS_FRUIT",texture:'"minecraft:chorus_fruit"'}
execute positioned ~-2.25 ~1.3 ~ run function main:lobby/settings/game/item/element {id:"ENDER_PEARL",texture:'"minecraft:ender_pearl"'}

execute positioned ~-0.75 ~3.3 ~ run function main:lobby/settings/game/item/element {id:"GLOW_HORN",texture:'"minecraft:goat_horn"'}
execute positioned ~-0.75 ~2.3 ~ run function main:lobby/settings/game/item/element {id:"TOTEM_OF_UNDYING",texture:'"minecraft:totem_of_undying"'}
execute positioned ~-0.75 ~1.3 ~ run function main:lobby/settings/game/item/element {id:"TRIDENT",texture:'"minecraft:trident"'}

execute positioned ~0.75 ~3.3 ~ run function main:lobby/settings/game/item/element {id:"SAFETY_VEST",texture:'"minecraft:leather_chestplate",components:{"minecraft:trim": {material: "minecraft:iron", show_in_tooltip: 0b, pattern: "minecraft:host"}, "minecraft:dyed_color": {show_in_tooltip: 0b, rgb: 16742400}}'}
execute positioned ~0.75 ~2.3 ~ run function main:lobby/settings/game/item/element {id:"PRISON_KEY",texture:'"minecraft:trial_key"'}
execute positioned ~0.75 ~1.3 ~ run function main:lobby/settings/game/item/element {id:"COMPASS",texture:'"minecraft:compass"'}

execute positioned ~2.25 ~3.3 ~ run function main:lobby/settings/game/item/element {id:"FREEZE_TIME",texture:'"minecraft:clock"'}
execute positioned ~2.25 ~2.3 ~ run function main:lobby/settings/game/item/element {id:"SMOKE_BOMB",texture:'"minecraft:lingering_potion",components:{"minecraft:potion_contents":{custom_color:7829367}}'}
execute positioned ~2.25 ~1.3 ~ run function main:lobby/settings/game/item/element {id:"ANTIDOTE",texture:'"minecraft:potion",components:{"minecraft:potion_contents":{custom_color:16711680}}'}

execute positioned ~1.5 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.game.page_1',texture:'"minecraft:nether_star"',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}

execute positioned ~-2.03 ~0.25 ~ run function main:lobby/settings/board/element/arrow_left {"page":"items","number":"2"}
execute positioned ~-1.03 ~0.25 ~ run function main:lobby/settings/board/element/arrow_right {"page":"items","number":"2"}
