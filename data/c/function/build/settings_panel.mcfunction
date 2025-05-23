# reset board
kill @e[tag=settings,distance=..10]

# background
execute align xyz positioned ~-0.5 ~ ~-0.5 run summon text_display ~3.5 ~0.1 ~0.505 {Tags:["setting.board","settings"],alignment:"center",line_width:320,text:[{"text":"                                                                              "},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"}]}
execute at @n[type=text_display,tag=setting.board] run summon text_display ~ ~4 ~ {Tags:["setting.title","settings"],alignment:"center",line_width:300,shadow:1b,background:0,text:[{"text":"\\n"},{"bold":true,"text":"The Purple","color":"dark_purple"},{"text":"\\n"},{"strikethrough":true,"text":"                   ","color":"gray"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]}}

# everything else
execute at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/cover
