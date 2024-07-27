tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to the main page."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title]

# set title
execute as @e[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n"},{"bold":true,"text":"The Purple","color":"dark_purple"},{"text":"\\n"},{"strikethrough":true,"text":"                   ","color":"gray"}]'}

# map preview
execute if score .map settings matches 1 run summon painting ~-3 ~2 ~ {Tags:["setting.map.1.preview","setting.main","settings"],variant:"main:map/1",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 2 run summon painting ~-3 ~2 ~ {Tags:["setting.map.2.preview","setting.main","settings"],variant:"main:map/2",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 3 run summon painting ~-3 ~2 ~ {Tags:["setting.map.3.preview","setting.main","settings"],variant:"main:map/3",Invulnerable:1b,Rotation:[0.0f,0.0f]}

execute if score .map settings matches 1 run summon text_display ~-2 ~0.6 ~ {Tags:["setting.map.1.name","settings"],text:'[{"text":"Epic Map Name","color":"gray"}]',shadow:1b,background:0,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute if score .map settings matches 2 run summon text_display ~-2 ~0.6 ~ {Tags:["setting.map.2.name","settings"],text:'[{"text":"Cool Map Name","color":"gray"}]',shadow:1b,background:0,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute if score .map settings matches 3 run summon text_display ~-2 ~0.6 ~ {Tags:["setting.map.3.name","settings"],text:'[{"text":"Awesome Map Name","color":"gray"}]',shadow:1b,background:0,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}

execute if score .map settings matches 1 run summon interaction ~-2 ~0.9 ~-1.9 {Tags:["setting.map.page_1","settings"],width:4f,height:3f,response:1b} 
execute if score .map settings matches 2 run summon interaction ~-2 ~0.9 ~-1.9 {Tags:["setting.map.page_2","settings"],width:4f,height:3f,response:1b} 
execute if score .map settings matches 3 run summon interaction ~-2 ~0.9 ~-1.9 {Tags:["setting.map.page_3","settings"],width:4f,height:3f,response:1b} 

# map description
summon text_display ~2 ~1.2 ~ {Tags:["setting.main.description","setting.main","settings"],shadow:1b,background:0,alignment:"left",text:'[{"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}

# to: list of settings
summon text_display ~1.9 ~0.1 ~ {Tags:["setting.change_settings","settings"],shadow:1b,background:0,alignment:"center",text:'[{"text":""},{"text":"Open Settings"},{"strikethrough":true,"text":"\\n                        ","color":"dark_gray"}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]}}
summon interaction ~1.95 ~0.2 ~-1.75 {Tags:["setting.change_settings","settings","rectangle_button"],width:3.83f,height:0.6f,response:1b} 
