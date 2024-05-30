# setting
summon item_display ~-1.9 ~0.4 ~ {Tags:["setting.game.round_timer","settings"],billboard:"fixed",item:{id:"minecraft:ender_eye",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute if score .round_timer settings matches 1.. run summon text_display ~ ~ ~ {Tags:["setting.game.round_timer","settings"],shadow:1b,background:0,alignment:"left",text:'[{"text":"Hide Round Timer? "},{"text":"No","color":"red"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
execute if score .round_timer settings matches ..0 run summon text_display ~ ~ ~ {Tags:["setting.game.round_timer","settings"],shadow:1b,background:0,alignment:"left",text:'[{"text":"Hide Round Timer? "},{"text":"Yes","color":"green"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
summon interaction ~-0.26 ~0.075 ~-1.75 {Tags:["setting.game.round_timer","settings","rectangle_button"],width:3.83f,height:0.6f,response:1b} 

# last updated by
summon item_display ~4.4 ~0.4 ~-0.005 {Tags:["setting.game.round_timer-updater","settings"],billboard:"fixed",item:{id:"minecraft:player_head",count:1},transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.2500f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.5000f]}
summon text_display ~3.2 ~0.1 ~000000 {Tags:["setting.game.round_timer-updater","settings"],line_width:110,shadow:1b,background:0,alignment:"right",text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"text":"default","color":"gray"},{"text":"\\n                         "}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}
data modify entity @e[type=item_display,tag=setting.game.round_timer-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game[].round_timer.last_updater_id
data modify entity @e[type=text_display,tag=setting.game.round_timer-updater,limit=1] text set from storage main:settings setting.game[].round_timer.last_updater_name
