execute as @n[tag=preview,distance=..10] run data merge entity @s {view_range:0.0f}
function c:tp/lobby
scoreboard players reset @s preview
gamemode adventure @s
title @s actionbar ""
