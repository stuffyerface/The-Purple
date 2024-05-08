$execute if score .gameClockS gameData matches ..9 run scoreboard players display name .4 sidebar {"text": "    $(timeM):0$(timeS)","color": "red"}
$execute if score .gameClockS gameData matches 10.. run scoreboard players display name .4 sidebar {"text": "    $(timeM):$(timeS)","color": "red"}
$scoreboard players display name .6 sidebar {"text": "    Round $(round)/3","color": "aqua"}