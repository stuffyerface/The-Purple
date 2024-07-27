tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to the list of settings."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title]

# set title
execute as @e[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n"},{"bold":true,"text":"Settings","color":"dark_purple"},{"text":"\\n"},{"strikethrough":true,"text":"               ","color":"gray"}]'}

## rectangle buttons

# to: main page
summon text_display ~ ~3 ~ {Tags:["setting.close","settings"],shadow:1b,background:0,alignment:"center",text:'[{"text":"Main Page"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
summon interaction ~ ~3.075 ~-1.75 {Tags:["setting.close","settings","rectangle_button"],width:3.83f,height:0.6f,response:1b} 

# to: map selector
summon text_display ~ ~2 ~ {Tags:["setting.map.page_1","settings"],shadow:1b,background:0,alignment:"center",text:'[{"text":"Map Selector"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
execute if score .map settings matches 1 run summon interaction ~ ~2.075 ~-1.75 {Tags:["setting.map.page_1","settings","rectangle_button"],width:3.83f,height:0.6f,response:1b} 
execute if score .map settings matches 2 run summon interaction ~ ~2.075 ~-1.75 {Tags:["setting.map.page_2","settings","rectangle_button"],width:3.83f,height:0.6f,response:1b} 
execute if score .map settings matches 3 run summon interaction ~ ~2.075 ~-1.75 {Tags:["setting.map.page_3","settings","rectangle_button"],width:3.83f,height:0.6f,response:1b} 

# to: game settings
summon text_display ~ ~1 ~ {Tags:["setting.game.page_1","settings"],shadow:1b,background:0,alignment:"center",text:'[{"text":"Game Settings"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
summon interaction ~ ~1.075 ~-1.75 {Tags:["setting.game.page_1","settings","rectangle_button"],width:3.83f,height:0.6f,response:1b} 

# elements
execute positioned ~2.5 ~0.45 ~ run function main:lobby/settings/board/element/close
execute positioned ~3.5 ~0.45 ~ run function main:lobby/settings/board/element/change_settings
