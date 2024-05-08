execute if score .countdown gameData matches 1 run schedule function game:start 1s
execute if score .countdown gameData matches 2.. run schedule function game:countdowndisplay 1s

title @a title [{"text":"Round ","color": "aqua"},{"score":{"name":".round","objective": "gameData","color": "aqua"}}]
title @a subtitle {"score": {"name": ".countdown","objective": "gameData"},"color": "gold"}

scoreboard players remove .countdown gameData 1