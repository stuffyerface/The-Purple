$summon item_display ~ ~ ~0.003 {Tags:["setting.items.$(id)","setting.items","settings"],billboard:"fixed",item:{id:$(texture),count:1},item_display:"gui",Rotation:[180.0f,0f],transformation:[1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,0.01f,0.0f,0.0f,0.0f,0.0f,1.5f]}
$summon block_display ~-0.4 ~-0.37 ~ {Tags:["setting.items.$(id)","setting.items","settings"],billboard:"fixed",block_state:{Name:"minecraft:light_gray_concrete",count:1},transformation:[1.22f,0.0f,0.0f,0.0f,0.0f,1.14f,0.0f,0.0f,0.0f,0.0f,0.001f,0.0f,0.0f,0.0f,0.0f,1.5f]}
$summon interaction ~ ~-0.38 ~-0.3 {Tags:["setting.items.$(id)","setting.items","settings","square_button"],width:0.83f,height:0.78f,response:1b} 

$execute if score .item_$(id) settings matches 0 run data merge entity @n[type=block_display,tag=setting.items.$(id)] {block_state:{Name:"minecraft:red_concrete"}}
$execute if score .item_$(id) settings matches 1 run data merge entity @n[type=block_display,tag=setting.items.$(id)] {block_state:{Name:"minecraft:lime_concrete"}}
