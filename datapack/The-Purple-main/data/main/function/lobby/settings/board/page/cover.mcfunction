execute if entity @s run tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to the main page."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:[{"text":"\n","bold":true},{"fallback":"%s","translate":"setting.purple.title.main","with":[[{"color":"#AA00AA","text":"T"},{"color":"#B317AE","text":"h"},{"color":"#BD2DB2","text":"e"}," ",{"color":"#C644B5","text":"P"},{"color":"#D05BB9","text":"u"},{"color":"#D971BD","text":"r"},{"color":"#E388C1","text":"p"},{"color":"#EC9FC4","text":"l"},{"color":"#FFCCCC","text":"e"}]],"color":"dark_purple"},{"text":"\n"},{"strikethrough":true,"bold":false,"text":"                   ","color":"gray"}]}

# map preview
execute if score .map settings matches 0 run summon painting ~-3 ~2 ~ {Tags:["setting.main","setting.main.map_preview.0","settings"],variant:"minecraft:changing",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 0 run summon painting ~-4 ~1 ~ {Tags:["setting.main","setting.main.map_preview.0","settings"],variant:"minecraft:creebet",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 0 run summon painting ~-2 ~1 ~ {Tags:["setting.main","setting.main.map_preview.0","settings"],variant:"minecraft:courbet",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 1 run summon painting ~-3 ~2 ~ {Tags:["setting.main","setting.main.map_preview.1","settings"],variant:"minecraft:donkey_kong",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 2 run summon painting ~-3 ~2 ~ {Tags:["setting.main","setting.main.map_preview.2","settings"],variant:"minecraft:skeleton",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 3 run summon painting ~-3 ~2 ~ {Tags:["setting.main","setting.main.map_preview.3","settings"],variant:"minecraft:finding",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 3 run summon painting ~-4 ~1 ~ {Tags:["setting.main","setting.main.map_preview.3","settings"],variant:"minecraft:sea",Invulnerable:1b,Rotation:[0.0f,0.0f]}
execute if score .map settings matches 3 run summon painting ~-2 ~1 ~ {Tags:["setting.main","setting.main.map_preview.3","settings"],variant:"minecraft:pool",Invulnerable:1b,Rotation:[0.0f,0.0f]}

execute if score .map settings matches 0 run summon text_display ~-2 ~0.6 ~ {Tags:["setting.main.map_name","setting.main.map_name.0","settings"],text:[{"translate":"setting.purple.title.map_0","fallback":"Home Base","color":"gray"}],shadow:1b,background:0,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute if score .map settings matches 1 run summon text_display ~-2 ~0.6 ~ {Tags:["setting.main.map_name","setting.main.map_name.1","settings"],text:[{"translate":"setting.purple.title.map_1","fallback":"Scorched Basin","color":"gray"}],shadow:1b,background:0,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute if score .map settings matches 2 run summon text_display ~-2 ~0.6 ~ {Tags:["setting.main.map_name","setting.main.map_name.2","settings"],text:[{"translate":"setting.purple.title.map_2","fallback":"Impact Echoes","color":"gray"}],shadow:1b,background:0,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute if score .map settings matches 3 run summon text_display ~-2 ~0.6 ~ {Tags:["setting.main.map_name","setting.main.map_name.3","settings"],text:[{"translate":"setting.purple.title.map_3","fallback":"Deep Plunge","color":"gray"}],shadow:1b,background:0,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}

execute if score .map settings matches 0 run summon interaction ~-2 ~0.9 ~-1.9 {Tags:["setting.main","setting.map.page_0","settings"],width:4f,height:3f,response:1b} 
execute if score .map settings matches 1 run summon interaction ~-2 ~0.9 ~-1.9 {Tags:["setting.main","setting.map.page_1","settings"],width:4f,height:3f,response:1b} 
execute if score .map settings matches 2 run summon interaction ~-2 ~0.9 ~-1.9 {Tags:["setting.main","setting.map.page_2","settings"],width:4f,height:3f,response:1b} 
execute if score .map settings matches 3 run summon interaction ~-2 ~0.9 ~-1.9 {Tags:["setting.main","setting.map.page_3","settings"],width:4f,height:3f,response:1b} 

# game description
summon text_display ~2 ~1 ~ {Tags:["setting.main.description","setting.main","settings"],line_width:170,shadow:1b,background:0,alignment:"left",text:[{"translate":"setting.purple.description.main","fallback":"Welcome to %s! A fresh take on the classic game of tag. When the game begins, you will be sent to an alien landscape with one goal; be the last survivor of %1$s infection. Good luck!\n\nClick on the map preview to the left to change maps, or click \"Open Settings\" for cosmetics, gameplay settings, ability choices, and more!","with":[[{"color":"#AA00AA","text":"T"},{"color":"#B317AE","text":"h"},{"color":"#BD2DB2","text":"e "},{"color":"#C644B5","text":"P"},{"color":"#D05BB9","text":"u"},{"color":"#D971BD","text":"r"},{"color":"#E388C1","text":"p"},{"color":"#EC9FC4","text":"l"},{"color":"#FFCCCC","text":"e"}]]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]}}

# to: list of settings
execute positioned ~2 ~0.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.change_settings',translate:"setting.purple.button.menu",fallback:"Open Settings",background:'"minecraft:gray_concrete"'}
