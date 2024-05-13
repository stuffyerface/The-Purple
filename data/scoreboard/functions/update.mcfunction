scoreboard players add .scoreboardTimer gameData 1
execute if score .scoreboardTimer gameData matches 60.. run scoreboard players set .scoreboardTimer gameData 0


execute if score .scoreboardTimer gameData matches 1 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":""},{"bold":true,"color":"white","text":""},{"bold":true,"color":"gold","text":"SCRAMBLE!"}]
execute if score .scoreboardTimer gameData matches 2 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":""},{"bold":true,"color":"white","text":"S"},{"bold":true,"color":"gold","text":"CRAMBLE!"}]
execute if score .scoreboardTimer gameData matches 3 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"S"},{"bold":true,"color":"white","text":"C"},{"bold":true,"color":"gold","text":"RAMBLE!"}]
execute if score .scoreboardTimer gameData matches 4 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SC"},{"bold":true,"color":"white","text":"R"},{"bold":true,"color":"gold","text":"AMBLE!"}]
execute if score .scoreboardTimer gameData matches 5 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCR"},{"bold":true,"color":"white","text":"A"},{"bold":true,"color":"gold","text":"MBLE!"}]
execute if score .scoreboardTimer gameData matches 6 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCRA"},{"bold":true,"color":"white","text":"M"},{"bold":true,"color":"gold","text":"BLE!"}]
execute if score .scoreboardTimer gameData matches 7 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCRAM"},{"bold":true,"color":"white","text":"B"},{"bold":true,"color":"gold","text":"LE!"}]
execute if score .scoreboardTimer gameData matches 8 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCRAMB"},{"bold":true,"color":"white","text":"L"},{"bold":true,"color":"gold","text":"E!"}]
execute if score .scoreboardTimer gameData matches 9 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCRAMBL"},{"bold":true,"color":"white","text":"E"},{"bold":true,"color":"gold","text":"!"}]
execute if score .scoreboardTimer gameData matches 10 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCRAMBLE"},{"bold":true,"color":"white","text":"!"},{"bold":true,"color":"gold","text":""}]
execute if score .scoreboardTimer gameData matches 11 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCRAMBLE!"},{"bold":true,"color":"white","text":""},{"bold":true,"color":"gold","text":""}]
execute if score .scoreboardTimer gameData matches 12 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":""},{"bold":true,"color":"white","text":""},{"bold":true,"color":"yellow","text":"SCRAMBLE!"}]
execute if score .scoreboardTimer gameData matches 13 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":""},{"bold":true,"color":"white","text":"S"},{"bold":true,"color":"yellow","text":"CRAMBLE!"}]
execute if score .scoreboardTimer gameData matches 14 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"S"},{"bold":true,"color":"white","text":"C"},{"bold":true,"color":"yellow","text":"RAMBLE!"}]
execute if score .scoreboardTimer gameData matches 15 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SC"},{"bold":true,"color":"white","text":"R"},{"bold":true,"color":"yellow","text":"AMBLE!"}]
execute if score .scoreboardTimer gameData matches 16 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCR"},{"bold":true,"color":"white","text":"A"},{"bold":true,"color":"yellow","text":"MBLE!"}]
execute if score .scoreboardTimer gameData matches 17 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCRA"},{"bold":true,"color":"white","text":"M"},{"bold":true,"color":"yellow","text":"BLE!"}]
execute if score .scoreboardTimer gameData matches 18 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCRAM"},{"bold":true,"color":"white","text":"B"},{"bold":true,"color":"yellow","text":"LE!"}]
execute if score .scoreboardTimer gameData matches 19 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCRAMB"},{"bold":true,"color":"white","text":"L"},{"bold":true,"color":"yellow","text":"E!"}]
execute if score .scoreboardTimer gameData matches 20 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCRAMBL"},{"bold":true,"color":"white","text":"E"},{"bold":true,"color":"yellow","text":"!"}]
execute if score .scoreboardTimer gameData matches 21 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCRAMBLE"},{"bold":true,"color":"white","text":"!"},{"bold":true,"color":"yellow","text":""}]
execute if score .scoreboardTimer gameData matches 22 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCRAMBLE!"},{"bold":true,"color":"white","text":""},{"bold":true,"color":"yellow","text":""}]
execute if score .scoreboardTimer gameData matches 25 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCRAMBLE!"},{"bold":true,"color":"white","text":""},{"bold":true,"color":"yellow","text":""}]
execute if score .scoreboardTimer gameData matches 28 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCRAMBLE!"},{"bold":true,"color":"white","text":""},{"bold":true,"color":"yellow","text":""}]
execute if score .scoreboardTimer gameData matches 31 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"yellow","text":"SCRAMBLE!"},{"bold":true,"color":"white","text":""},{"bold":true,"color":"yellow","text":""}]
execute if score .scoreboardTimer gameData matches 34 run scoreboard objectives modify sidebar displayname [{"bold":true,"color":"gold","text":"SCRAMBLE!"},{"bold":true,"color":"white","text":""},{"bold":true,"color":"yellow","text":""}]

#> Update Game Time
scoreboard players display name .5 sidebar {"text": "    Game Time:      ","color": "red"}
execute store result storage scoreboard:time timeS int 1 run scoreboard players get .gameClockS gameData
execute store result storage scoreboard:time timeM int 1 run scoreboard players get .gameClockM gameData
execute store result storage scoreboard:time round int 1 run scoreboard players get .round gameData
function scoreboard:time with storage scoreboard:time