clear @s
gamemode adventure
function c:tp/current_location
function main:game/tag/function/player_corrupt
function main:module/miscellaneous/setting/reach
scoreboard players reset @s return

execute store result score .corrupted data if entity @a[tag=source]
execute store result score .spectating data if entity @a[tag=spectator]

# add stats/advancements
advancement grant @s only main:advancement/2_challenge/root
advancement grant @s only main:advancement/1_gameplay/first_mission
execute if score .map settings matches 1 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_1
execute if score .map settings matches 2 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_2
execute if score .map settings matches 3 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_3
