execute if score .game data matches 0.. run return run function main:message/settings/locked
execute if entity @s[type=player] run tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Map Page 2."}]
scoreboard players set .map settings 2
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:[{"text":"\n","bold":true},{"translate":"setting.purple.title.map","fallback":"Map Selector","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\n                     ","color":"gray"}]}

# map preview
summon painting ~1 ~2 ~ {Tags:["setting.map.2.preview","setting.map.preview","settings"],variant:"minecraft:skeleton",Invulnerable:1b,Rotation:[0.0f,0.0f]}
summon interaction ~2 ~0.9 ~-1.9 {Tags:["setting.map.2.preview","setting.map.preview","settings"],width:4f,height:3f,response:1b}

# map details
summon text_display ~-2 ~1.6 ~ {Tags:["setting.map.name","setting.map.2.name","settings"],shadow:1b,background:0,alignment:"center",text:[{"translate":"setting.purple.title.map_2","fallback":"Impact Echoes"},{"strikethrough":true,"text":"\n\n\n\n\n\n\n                              ","color":"dark_gray"}]}
summon text_display ~-2 ~1.9 ~ {Tags:["setting.map.description","setting.map.2.description","settings"],shadow:1b,background:0,line_width:250,alignment:"left",text:[{"translate":"setting.purple.description.map_2","fallback":"This rocky field is difficult to properly study as the near constant downpour of meteors is highly hazardous, it’s almost as if they’re being attracted here. The residue left behind by these impacts hardens immediately, which makes sample-gathering difficult. Try as we might, our tools just aren’t up to the task yet.","color":"gray"}],transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,0.5f,0f,0f,0f,0f,1f]}

# elements
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'"setting.close"',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'"setting.change_settings"',texture:'"minecraft:command_block"',background:'"minecraft:air"'}

execute positioned ~-2.78 ~1.11 ~ run function main:lobby/settings/board/element/arrow_left {"page":"map","number":"1"}
execute positioned ~-1.28 ~1.11 ~ run function main:lobby/settings/board/element/arrow_right {"page":"map","number":"3"}

# mirror
execute if score .sync_board disable matches 1 run return 1
execute as @e[distance=5..,type=interaction,tag=setting.main] run data merge entity @s {Tags:["setting.main","setting.map.page_2","settings"]}
execute as @e[distance=5..,type=painting,tag=setting.main] run data merge entity @s {variant:"minecraft:skeleton"}
execute as @e[distance=5..,type=painting,tag=setting.map.preview] run data merge entity @s {Tags:["setting.map.2.preview","setting.map.preview","settings"],variant:"minecraft:skeleton"}
execute as @e[distance=5..,type=text_display,tag=setting.main.map_name] run data merge entity @s {text:[{"translate":"setting.purple.title.map_2","fallback":"Impact Echoes","color":"gray"}]}
execute as @e[distance=5..,type=text_display,tag=setting.map.name] run data merge entity @s {Tags:["setting.map.name","setting.map.2.name","settings"],text:[{"translate":"setting.purple.title.map_2","fallback":"Impact Echoes"},{"strikethrough":true,"text":"\n\n\n\n\n\n\n                              ","color":"dark_gray"}]}
execute as @e[distance=5..,type=text_display,tag=setting.map.description] run data merge entity @s {Tags:["setting.map.description","setting.map.2.description","settings"],text:[{"translate":"setting.purple.description.map_2","fallback":"This rocky field is difficult to properly study as the near constant downpour of meteors is highly hazardous, it’s almost as if they’re being attracted here. The residue left behind by these impacts hardens immediately, which makes sample-gathering difficult. Try as we might, our tools just aren’t up to the task yet.","color":"gray"}]}
execute as @e[distance=5..,tag=setting.map.arrow_left] run data merge entity @s {Tags:["setting.map.page_1","setting.map.arrow_left","settings","square_button"]}
execute as @e[distance=5..,tag=setting.map.arrow_right] run data merge entity @s {Tags:["setting.map.page_3","setting.map.arrow_left","settings","square_button"]}
