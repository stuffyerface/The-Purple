#> Instantiate Scoreboard
scoreboard objectives add sidebar dummy {"text": "SCRAMBLE!","bold": true,"color": "gold"}
scoreboard objectives modify sidebar displayautoupdate true
scoreboard objectives modify sidebar numberformat blank
scoreboard objectives setdisplay sidebar sidebar
scoreboard players reset * sidebar
scoreboard players set .0 sidebar 0
scoreboard players set .1 sidebar 1
scoreboard players set .2 sidebar 2
scoreboard players set .3 sidebar 3
scoreboard players set .4 sidebar 4
scoreboard players set .5 sidebar 5
scoreboard players set .6 sidebar 6
scoreboard players set .7 sidebar 7

scoreboard players display name .7 sidebar {"text": " "}
scoreboard players display name .6 sidebar {"text": " "}
scoreboard players display name .5 sidebar {"text": " "}
scoreboard players display name .4 sidebar {"text": " "}
scoreboard players display name .3 sidebar {"text": " "}
scoreboard players display name .2 sidebar {"text": " "}
scoreboard players display name .1 sidebar {"text": " "}
scoreboard players display name .0 sidebar {"text": " "}


scoreboard objectives add gameData dummy {"text": "gameData"}
scoreboard players set .scoreboardTimer gameData 0

scoreboard players set .round gameData 0

scoreboard objectives add points dummy 
scoreboard players reset * points

scoreboard objectives add position dummy
scoreboard players reset * position

scoreboard objectives add teamColor dummy
scoreboard players reset * teamColor

#> Alert server of reload.
tellraw @a {"text": "Datapack reloaded successfully.","color": "aqua"}