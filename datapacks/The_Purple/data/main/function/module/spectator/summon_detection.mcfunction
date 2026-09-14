# create click detection entity
summon interaction ~ ~ ~ {width:1f,height:1f,Tags:["spectator.detection.new"]}

# register your click detection entity
scoreboard players add .recent spectator 1
scoreboard players operation @e[tag=spectator.detection.new] spectator = .recent spectator
scoreboard players operation @s spectator = .recent spectator
execute as @e[tag=spectator.detection.new] run data merge entity @s {Tags:["spectator.detection"]}
