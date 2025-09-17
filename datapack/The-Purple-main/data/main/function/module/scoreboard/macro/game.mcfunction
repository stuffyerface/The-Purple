# set lines
execute if score $line5 title matches 0.. run scoreboard players reset $line5 title
execute if score $line4 title matches 0.. run scoreboard players reset $line4 title
execute if score $line3 title matches 0.. run scoreboard players reset $line3 title

# set text
# 15
# 14
scoreboard players display name $line13 title ["",{"translate":"scoreboard.purple.game.stats","fallback":"Player Stats","bold":true}]
scoreboard players display name $line12 title ""
$scoreboard players display name $line11 title [{"text":" $(alive)","color":"yellow"},{"text":"/","color":"dark_gray"},"$(players) ",{"color":"green","translate":"scoreboard.purple.game.stats.alive","fallback":"alive"}]
$scoreboard players display name $line10 title [{"text":" $(infected)","color":"yellow"}," ",{"color":"dark_purple","translate":"scoreboard.purple.game.stats.infected","fallback":"infected"}]
$scoreboard players display name $line9 title [{"text":" $(spectating)","color":"yellow"}," ",{"color":"gray","translate":"scoreboard.purple.game.stats.spectating","fallback":"spectating"}]
scoreboard players display name $line8 title ""
$scoreboard players display name $line7 title ["",{"translate":"scoreboard.purple.game.round","fallback":"Round","bold":true},": ",{"text":"$(round)","color":"yellow"}]
scoreboard players display name $line6 title ""
# 5
# 4
# 3
# 2
# 1

## The Purple
#  Status: Active!
#  
#  Player Stats
#  
#   6/12 alive
#   3 infected
#   3 spectating
#  
#  Round: 1
#  
#  Made by stuffy
#   and nightlibra
