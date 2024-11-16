# set lines
execute unless score $line5 title matches 0.. run scoreboard players set $line5 title 5
execute unless score $line3 title matches 0.. run scoreboard players set $line3 title 3
execute if score $line4 title matches 0.. run scoreboard players reset $line4 title
scoreboard players display numberformat $line5 title blank
scoreboard players display numberformat $line3 title blank

# set text
# 15
# 14
$scoreboard players display name $line13 title ["  ",{"translate":"scoreboard.purple.lobby.ready.1","fallback":"%s players","with":[[{"text":"$(ready)","color":"yellow"},{"text":"/","color":"dark_gray"},{"text":"$(required)"}]]}]
scoreboard players display name $line12 title ["  ",{"translate":"scoreboard.purple.lobby.ready.2","fallback":"are ready!"}]
scoreboard players display name $line11 title ""
$scoreboard players display name $line10 title [" ",{"text":"$(total_games)","color":"yellow"}," ",{"color":"gray","translate":"scoreboard.purple.lobby.total_games","fallback":"games played"}]
$scoreboard players display name $line9 title [" ",{"text":"$(total_rounds)","color":"yellow"}," ",{"color":"gray","translate":"scoreboard.purple.lobby.total_rounds","fallback":"total rounds"}]
$scoreboard players display name $line8 title [" ",{"text":"$(total_deaths)","color":"yellow"}," ",{"color":"gray","translate":"scoreboard.purple.lobby.total_deaths","fallback":"players died"}]
$scoreboard players display name $line7 title [" ",{"text":"$(total_items)","color":"yellow"}," ",{"color":"gray","translate":"scoreboard.purple.lobby.total_items","fallback":"items found"}]
$scoreboard players display name $line6 title [" ",{"text":"$(total_fish)","color":"yellow"}," ",{"color":"gray","translate":"scoreboard.purple.lobby.total_fish","fallback":"fish caught"}]
$scoreboard players display name $line5 title [" ",{"text":"$(total_artifacts)","color":"yellow"},{"text":"/","color":"dark_gray"},{"text":"9","color":"yellow"}," ",{"color":"gray","translate":"scoreboard.purple.lobby.total_artifacts","fallback":"artifacts"}]
# 4
scoreboard players display name $line3 title ""
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
