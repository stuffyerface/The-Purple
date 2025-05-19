clear @s
gamemode adventure
function c:tp/current_location
function main:game/tag/function/player_corrupt
function main:module/miscellaneous/setting/reach
scoreboard players reset @s return

scoreboard players set .corrupted data 0
execute as @a[tag=source] run scoreboard players add .corrupted data 1
scoreboard players set .spectating data 0
execute as @a[tag=spectator] run scoreboard players add .spectating data 1

# add stats/advancements
advancement grant @s only main:advancement/2_challenge/root
advancement grant @s only main:advancement/1_gameplay/first_mission
execute if score .map settings matches 1 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_1
execute if score .map settings matches 2 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_2
execute if score .map settings matches 3 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_3
