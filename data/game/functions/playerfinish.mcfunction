scoreboard players add .position gameData 1
execute if score .gameClockS gameData matches ..9 run tellraw @a [{"color":"aqua","selector":"@s"},{"text":" has completed the course in ","color":"yellow"},{"score":{"name":".gameClockM","objective":"gameData"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":".gameClockS","objective":"gameData"},"color":"red"}]
execute if score .gameClockS gameData matches 10.. run tellraw @a [{"color":"aqua","selector":"@s"},{"text":" has completed the course in ","color":"yellow"},{"score":{"name":".gameClockM","objective":"gameData"},"color":"red"},{"text":":","color":"red"},{"score":{"name":".gameClockS","objective":"gameData"},"color":"red"}]
gamemode spectator @s
title @s title {"text":"Course Completed!","color":"aqua"}
title @s subtitle [{"text":"Position #","color":"yellow"},{"score":{"name":".position","objective":"gameData"}}]
clear @s


execute store result storage game:position position int 1 run scoreboard players get .position gameData
function game:positionearned with storage game:position

execute if score .position gameData matches 1 run function game:pointsgained {"points": 15}
execute if score .position gameData matches 2 run function game:pointsgained {"points": 12}
execute if score .position gameData matches 3 run function game:pointsgained {"points": 10}
execute if score .position gameData matches 4 run function game:pointsgained {"points": 8}
execute if score .position gameData matches 5 run function game:pointsgained {"points": 7}
execute if score .position gameData matches 6 run function game:pointsgained {"points": 6}
execute if score .position gameData matches 7 run function game:pointsgained {"points": 5}
execute if score .position gameData matches 8 run function game:pointsgained {"points": 4}
execute if score .position gameData matches 9 run function game:pointsgained {"points": 3}
execute if score .position gameData matches 10 run function game:pointsgained {"points":2}
execute if score .position gameData matches 11 run function game:pointsgained {"points": 1}
execute if score .position gameData matches 12.. run function game:pointsgained {"points": 0}