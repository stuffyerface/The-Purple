# confirm pedestals are loaded
execute unless loaded -12 17 -8 run forceload add -14 -10
execute unless loaded -12 17 -8 run return run schedule function c:reset/artifact 1s replace
forceload remove -14 -10

# reset artifact pedestals
execute at @e[tag=lobby.artifact_display,tag=full] run kill @e[distance=..1,tag=furniture.artifact]
execute as @e[tag=lobby.artifact_display,tag=full] run data merge entity @s {Tags:["lobby.artifact_display","empty"], view_range:1f}
scoreboard players set .artifact_lifetime data 0
scoreboard players set .total_artifacts data 0

# respawn artifacts
execute if score artifact.frying_pan data matches 1.. positioned -49.5 20 10.5 run function init:build/artifact/lobby_frying_pan
execute if score artifact.microscope data matches 1.. positioned -54.4 19 47.5 run function init:build/artifact/lobby_microscope
execute if score artifact.drill data matches 1.. positioned 1.77 82 1917.3 run function init:build/artifact/map_drill
execute if score artifact.gears data matches 1.. positioned 20.45 137 3002.58 run function init:build/artifact/map_gears
execute if score artifact.lantern data matches 1.. positioned -18.45 152 3020.55 run function init:build/artifact/map_lantern
execute if score artifact.meteorite data matches 1.. positioned 1.25 80 2073.94 run function init:build/artifact/map_meteorite
execute if score artifact.potted_plant data matches 1.. positioned 32.34 35 1003.39 run function init:build/artifact/map_potted_plant
execute if score artifact.rope data matches 1.. positioned 20.51 20 1079.53 run function init:build/artifact/map_rope

# reset artifact data
scoreboard players reset artifact.frying_pan data
scoreboard players reset artifact.microscope data
scoreboard players reset artifact.ugly_fish data
scoreboard players reset artifact.drill data
scoreboard players reset artifact.gears data
scoreboard players reset artifact.lantern data
scoreboard players reset artifact.meteorite data
scoreboard players reset artifact.potted_plant data
scoreboard players reset artifact.rope data
scoreboard players reset artifact.test data

# remove artifacts from players
tag @a remove artifact.frying_pan
tag @a remove artifact.microscope
tag @a remove artifact.ugly_fish
tag @a remove artifact.drill
tag @a remove artifact.gears
tag @a remove artifact.lantern
tag @a remove artifact.meteorite
tag @a remove artifact.potted_plant
tag @a remove artifact.rope
tag @a remove artifact.test
