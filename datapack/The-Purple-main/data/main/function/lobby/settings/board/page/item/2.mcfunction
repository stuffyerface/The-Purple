tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Item Page 2."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:[{"text":"\n","bold":true},{"translate":"setting.purple.title.item","fallback":"Item Settings","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\n                      ","color":"gray"}]}

# elements
execute positioned ~-2.25 ~3.3 ~ run function main:lobby/settings/game/item/element {id:"WIND_CHARGE",texture:'"minecraft:wind_charge"'}
execute positioned ~-2.25 ~2.3 ~ run function main:lobby/settings/game/item/element {id:"REVIVAL_POTION",texture:'"minecraft:splash_potion",components:{"minecraft:potion_contents":{custom_color:16768256}}'}
#execute positioned ~-2.25 ~1.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}

#execute positioned ~-0.75 ~3.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}
#execute positioned ~-0.75 ~2.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}
#execute positioned ~-0.75 ~1.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}

#execute positioned ~0.75 ~3.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}
#execute positioned ~0.75 ~2.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}
#execute positioned ~0.75 ~1.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}

#execute positioned ~2.25 ~3.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}
#execute positioned ~2.25 ~2.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}
#execute positioned ~2.25 ~1.3 ~ run function main:lobby/settings/game/item/element {id:"",texture:'"minecraft:"'}

execute positioned ~1.5 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.game.page_1',texture:'"minecraft:nether_star"',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}

execute positioned ~-2.03 ~0.25 ~ run function main:lobby/settings/board/element/arrow_left {"page":"items","number":"1"}
execute positioned ~-1.03 ~0.25 ~ run function main:lobby/settings/board/element/arrow_right {"page":"items","number":"1"}
