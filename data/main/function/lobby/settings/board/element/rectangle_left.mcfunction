$summon item_display ~-1.65 ~0.4 ~0.002 {Tags:[$(setting),"settings"],item_display:"gui",billboard:"fixed",item:{id:$(texture),count:1},Rotation:[180.0f,0.0f],transformation:[1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,0.01f,0.0f,0.0f,0.0f,0.0f,2.0f]}
$summon text_display ~ ~ ~ {Tags:[$(setting),"settings"],shadow:1b,background:0,alignment:"center",text:'[{"translate":"$(translate)","fallback":"$(fallback)"},{"strikethrough":true,"text":"\\n                              ","color":"dark_gray"}]'}
$summon interaction ~-0.2 ~0.075 ~-1.6 {Tags:[$(setting),"settings","rectangle_button"],width:3.5f,height:0.6f,response:1b} 
$summon block_display ~-1.95 ~0.08 ~-0.001 {Tags:[$(setting),"settings","setting.background","setting.background.1"],billboard:"fixed",block_state:{Name:$(background),count:1},transformation:[0.88f,0.0f,0.0f,0.0f,0.0f,0.88f,0.0f,0.0f,0.0f,0.0f,0.002f,0.0f,0.0f,0.0f,0.0f,1.5f]}
$summon block_display ~-1.365 ~0.08 ~-0.001 {Tags:[$(setting),"settings","setting.background","setting.background.2"],billboard:"fixed",block_state:{Name:$(background),count:1},transformation:[0.88f,0.0f,0.0f,0.0f,0.0f,0.88f,0.0f,0.0f,0.0f,0.0f,0.002f,0.0f,0.0f,0.0f,0.0f,1.5f]}
$summon block_display ~-0.78 ~0.08 ~-0.001 {Tags:[$(setting),"settings","setting.background","setting.background.3"],billboard:"fixed",block_state:{Name:$(background),count:1},transformation:[0.88f,0.0f,0.0f,0.0f,0.0f,0.88f,0.0f,0.0f,0.0f,0.0f,0.002f,0.0f,0.0f,0.0f,0.0f,1.5f]}
$summon block_display ~-0.195 ~0.08 ~-0.001 {Tags:[$(setting),"settings","setting.background","setting.background.4"],billboard:"fixed",block_state:{Name:$(background),count:1},transformation:[0.88f,0.0f,0.0f,0.0f,0.0f,0.88f,0.0f,0.0f,0.0f,0.0f,0.002f,0.0f,0.0f,0.0f,0.0f,1.5f]}
$summon block_display ~0.39 ~0.08 ~-0.001 {Tags:[$(setting),"settings","setting.background","setting.background.5"],billboard:"fixed",block_state:{Name:$(background),count:1},transformation:[0.88f,0.0f,0.0f,0.0f,0.0f,0.88f,0.0f,0.0f,0.0f,0.0f,0.002f,0.0f,0.0f,0.0f,0.0f,1.5f]}
$summon block_display ~0.975 ~0.08 ~-0.001 {Tags:[$(setting),"settings","setting.background","setting.background.6"],billboard:"fixed",block_state:{Name:$(background),count:1},transformation:[0.88f,0.0f,0.0f,0.0f,0.0f,0.88f,0.0f,0.0f,0.0f,0.0f,0.002f,0.0f,0.0f,0.0f,0.0f,1.5f]}
