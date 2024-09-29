execute if score .game gameData matches 1.. run return fail
scoreboard players reset .pregame timer
execute as @a[scores={preview=0..}] run function main:lobby/settings/preview/stop

tag @a[gamemode=!spectator] add alive
#execute as @a run function main:module/disconnect/update_marker
execute as @a[tag=alive] run scoreboard players add .alive gameData 1
execute as @a[tag=alive] run scoreboard players add .players gameData 1

execute as @a[tag=alive] run gamemode adventure @s
execute as @a[tag=alive] run function c:tp/map_1
execute as @e[type=text_display,tag=preview] run data merge entity @s {view_range:0.0f}
function main:game/tag/start/round
