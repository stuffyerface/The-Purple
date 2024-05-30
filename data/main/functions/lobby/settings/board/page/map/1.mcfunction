tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Map Page 1."}]
scoreboard players set .map settings 1
kill @e[tag=settings,tag=!setting.board,tag=!setting.title]

# set title
execute as @e[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n"},{"bold":true,"text":"Map Selector","color":"dark_purple"},{"text":"\\n"},{"strikethrough":true,"text":"                     ","color":"gray"}]'}

# map preview
summon painting ~1 ~2 ~ {Tags:["setting.map.1.preview","setting.map.preview","settings"],variant:"minecraft:skeleton",Invulnerable:1b,Rotation:[0.0f,0.0f]}
summon interaction ~2 ~0.9 ~-1.9 {Tags:["setting.map.1.preview","setting.map.preview","settings"],width:4f,height:3f,response:1b} 

# map details
summon text_display ~-2 ~1.6 ~ {Tags:["setting.map.1.name","settings"],shadow:1b,background:0,alignment:"center",text:'[{"text":"Epic Map Name"},{"strikethrough":true,"text":"\\n\\n\\n\\n\\n\\n\\n                            ","color":"dark_gray"}]'}
summon text_display ~-2 ~2.2 ~ {Tags:["setting.map.1.description","settings"],shadow:1b,background:0,alignment:"left",text:'[{"text":"Placeholder Map Details aaaaaa aaaaaaaaaaaaa aa aaaaaaaaa aaaaaaaaaaaaa aaaaaa aaaaaaaaaa aaaaaaa aaaaa aaaaaaaaaaaaaaaa aaaaaa aaaaaaaaa","color":"gray"}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}

# elements
execute positioned ~2.5 ~0.45 ~ run function main:lobby/settings/board/element/close
execute positioned ~3.5 ~0.45 ~ run function main:lobby/settings/board/element/change_settings

execute positioned ~-2.78 ~1.11 ~ run function main:lobby/settings/board/element/arrow_left
tag @e[tag=setup_arrow] add setting.map.page_2
tag @e[tag=setup_arrow] remove setup_arrow
execute positioned ~-1.28 ~1.11 ~ run function main:lobby/settings/board/element/arrow_right
tag @e[tag=setup_arrow] add setting.map.page_3
tag @e[tag=setup_arrow] remove setup_arrow
