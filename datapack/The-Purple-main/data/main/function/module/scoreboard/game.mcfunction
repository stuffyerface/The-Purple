# set lines
execute if score $line5 title matches 0.. run scoreboard players reset $line5 title
execute if score $line4 title matches 0.. run scoreboard players reset $line4 title
#execute if score $line3 title matches 0.. run scoreboard players reset $line3 title

# set text
# 15
# 14
scoreboard players display name $line13 title ['', {translate:'scoreboard.purple.game.stats', fallback:'Player Stats', bold:true}]
scoreboard players display name $line12 title ''
scoreboard players display name $line11 title [' ', {color:green, translate:'scoreboard.purple.game.stats.alive', fallback:'%s alive', with:[[{score:{objective:'data', name:'.alive'}, color:yellow},{text:'/', color:dark_gray},{score:{objective:'data', name:'.players'}, color:yellow}]]}]
scoreboard players display name $line10 title [' ', {color:dark_purple, translate:'scoreboard.purple.game.stats.infected', fallback:'%s infected', with:[{score:{objective:'data', name:'.corrupted'}, color:yellow}]}]
scoreboard players display name $line9 title [' ', {color:gray, translate:'scoreboard.purple.game.stats.spectating', fallback:'%s spectating', with:[{score:{objective:'data', name:'.spectating'}, color:yellow}]}]
scoreboard players display name $line8 title ''
scoreboard players display name $line7 title ['', {translate:'scoreboard.purple.game.round', fallback:'Round: %s', bold:true, with:[[{score:{objective:'data', name:'.round'}, color:yellow, bold:false}]]}]
scoreboard players display name $line6 title ''
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
