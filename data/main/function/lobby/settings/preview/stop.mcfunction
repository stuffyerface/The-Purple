execute as @n[tag=preview,distance=..10] run data merge entity @s {view_range:0.0f}
scoreboard players reset @s preview
function c:tp/lobby
gamemode adventure @s
title @s actionbar ""
