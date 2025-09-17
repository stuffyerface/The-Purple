# set lines
execute unless score $line5 title matches 0.. run scoreboard players set $line5 title 5
execute unless score $line4 title matches 0.. run scoreboard players set $line4 title 4
scoreboard players display numberformat $line5 title blank
scoreboard players display numberformat $line4 title blank

# set text
# 15
# 14
scoreboard players display name $line13 title ['  ', {translate:'scoreboard.purple.lobby.ready.1', fallback:'%s players', with:[[{score:{objective:'data', name:'.ready'}, color:yellow}, {text:'/', color:dark_gray}, {score:{objective:'data', name:'.required'}}]]}]
scoreboard players display name $line12 title ['  ', {translate:'scoreboard.purple.lobby.ready.2', fallback:'are ready!', with:[[{score:{objective:'data', name:'.ready'}, color:yellow}, {text:'/', color:dark_gray}, {score:{objective:'data', name:'.required'}}]]}]
scoreboard players display name $line11 title ''
scoreboard players display name $line10 title [' ', {color:gray, translate:'scoreboard.purple.lobby.total_games', fallback:'%s games played', with:[{score:{objective:'data', name:'.total_games'}, color:yellow}]}]
scoreboard players display name $line9 title [' ', {color:gray, translate:'scoreboard.purple.lobby.total_rounds', fallback:'%s total rounds', with:[{score:{objective:'data', name:'.total_rounds'}, color:yellow}]}]
scoreboard players display name $line8 title [' ', {color:gray, translate:'scoreboard.purple.lobby.total_deaths', fallback:'%s players died', with:[{score:{objective:'data', name:'.total_deaths'}, color:yellow}]}]
scoreboard players display name $line7 title [' ', {color:gray, translate:'scoreboard.purple.lobby.total_items', fallback:'%s items found', with:[{score:{objective:'data', name:'.total_items'}, color:yellow}]}]
scoreboard players display name $line6 title [' ', {color:gray, translate:'scoreboard.purple.lobby.total_fish', fallback:'%s fish caught', with:[{score:{objective:'data', name:'.total_fish'}, color:yellow}]}]
scoreboard players display name $line5 title [' ', {color:gray, translate:'scoreboard.purple.lobby.total_artifacts', fallback:'%s artifacts', with:[[{score:{objective:'data', name:'.total_artifacts'}, color:yellow}, {text:'/', color:dark_gray}, {text:'9', color:yellow}]]}]
scoreboard players display name $line4 title ''
# 3
# 2
# 1

## The Purple
#  Status: Waiting
#  
#    0/2 players
#    are ready!
#  
#   3 games played
#   3 rounds played
#   3 players died
#   3 items found
#   3 fish caught
#   3/7 artifacts
#  
#  Made by stuffy
#   and nightlibra
