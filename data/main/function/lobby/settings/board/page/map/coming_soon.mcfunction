execute if score .game data matches 0.. run return run function main:message/settings/locked
execute if entity @s[type=player] run tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Map Page x."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.map","fallback":"Map Selector","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\\n                     ","color":"gray"}]'}

# map preview
summon painting ~-1 ~2 ~ {Tags:["setting.map.coming_soon","settings"],variant:"minecraft:fighters",Invulnerable:1b,Rotation:[0.0f,0.0f]}
summon interaction ~0 ~1.9 ~-1.9 {Tags:["setting.map.coming_soon","settings"],width:4f,height:2f,response:1b}

# elements
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'"setting.close"',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'"setting.change_settings"',texture:'"minecraft:command_block"',background:'"minecraft:air"'}

execute positioned ~-2.78 ~1.11 ~ run function main:lobby/settings/board/element/arrow_left {"page":"map","number":"3"}
execute positioned ~-1.28 ~1.11 ~ run function main:lobby/settings/board/element/arrow_right {"page":"map","number":"1"}
