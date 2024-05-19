execute as @e[tag=freshfootstep] run tag @s remove freshfootstep

execute if score .foot gameData matches 0 run summon text_display ~ ~.01 ~ {Rotation:[0F,-90F],text:'{"text":"    ■","color":"green"}',Tags:["footstep","freshfootstep"],background:0,text_opacity:90}
execute if score .foot gameData matches 1 run summon text_display ~ ~.01 ~ {Rotation:[0F,-90F],text:'{"text":"■    ","color":"green"}',Tags:["footstep","freshfootstep"],background:0,text_opacity:90}

execute rotated ~ ~ run tp @e[type=text_display,tag=freshfootstep] ~ ~.01 ~ ~ -90

scoreboard players add .foot gameData 1
execute if score .foot gameData matches 2 run scoreboard players set .foot gameData 0