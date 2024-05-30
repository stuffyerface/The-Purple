tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Map Page 2."}]
scoreboard players set .map settings 2
kill @e[tag=settings,tag=!setting.board,tag=!setting.title]

# set title
execute as @e[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n"},{"bold":true,"text":"Map Selector","color":"dark_purple"},{"text":"\\n"},{"strikethrough":true,"text":"                     ","color":"gray"}]'}

# map preview
summon painting ~1 ~2 ~ {Tags:["setting.map.2.preview","setting.map.preview","settings"],variant:"minecraft:donkey_kong",Invulnerable:1b,Rotation:[0.0f,0.0f]}
summon interaction ~2 ~0.9 ~-1.9 {Tags:["setting.map.2.preview","setting.map.preview","settings"],width:4f,height:3f,response:1b} 

# map details
summon text_display ~-2 ~1.6 ~ {Tags:["setting.map.2.name","settings"],shadow:1b,background:0,alignment:"center",text:'[{"text":"Cool Map Name"},{"strikethrough":true,"text":"\\n\\n\\n\\n\\n\\n\\n                            ","color":"dark_gray"}]'}
summon text_display ~-2 ~2.2 ~ {Tags:["setting.map.2.description","settings"],shadow:1b,background:0,alignment:"left",text:'[{"text":"Placeholder Map Details bbbbbbbbb bbb bbbbbb bbbbbbbb bbb bbbbbbbbb bbb bbbbbbb bbbbbbbb bbbb bbbbbbbbb bbbb bbbbbbbbb","color":"gray"}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}

# elements
execute positioned ~2.5 ~0.45 ~ run function main:lobby/settings/board/element/close
execute positioned ~3.5 ~0.45 ~ run function main:lobby/settings/board/element/change_settings 

execute positioned ~-2.78 ~1.11 ~ run function main:lobby/settings/board/element/arrow_left
tag @e[tag=setup_arrow] add setting.map.page_3
tag @e[tag=setup_arrow] remove setup_arrow
execute positioned ~-1.28 ~1.11 ~ run function main:lobby/settings/board/element/arrow_right
tag @e[tag=setup_arrow] add setting.map.page_1
tag @e[tag=setup_arrow] remove setup_arrow
