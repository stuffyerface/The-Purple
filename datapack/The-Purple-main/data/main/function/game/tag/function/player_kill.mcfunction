# die with every death effect
execute if score @s death_effect matches 1 run advancement grant @s only main:advancement/1_gameplay/going_out_in_style death_effect_1
execute if score @s death_effect matches 2 run advancement grant @s only main:advancement/1_gameplay/going_out_in_style death_effect_2
execute if score @s death_effect matches 3 run advancement grant @s only main:advancement/1_gameplay/going_out_in_style death_effect_3

# kill
execute if entity @s[tag=disconnect.zombie] run tp @s ~ -100 ~
execute if entity @s[tag=disconnect.zombie] run kill @s
execute unless entity @s[type=player] run return fail
clear @s
effect clear @s speed
tag @s remove last_second
tag @s remove dying
tag @s remove alive
tag @s remove infected
tag @s remove source
stopsound @s * purple:music.main
execute if score .game data matches 1 at @s run playsound purple:music.dead master @s ~ ~ ~ 0.33
execute if score .player_corruption disable matches 1 run tag @s add spectator
execute if score .player_corruption disable matches 1 run gamemode spectator
execute unless score .player_corruption disable matches 1 run function main:game/tag/function/player_corrupt
function main:message/tagged/death
function main:id/team/set_color
function main:module/disconnect/sync/marker
function main:module/item/function/reset


# stats
scoreboard players add @s stat.total_deaths 1
scoreboard players add .total_deaths data 1
scoreboard players set .corrupted data 0
execute as @a[tag=source] run scoreboard players add .corrupted data 1
scoreboard players set .spectating data 0
execute as @a[tag=spectator] run scoreboard players add .spectating data 1
scoreboard players set .alive data 0
execute as @a[tag=alive] run scoreboard players add .alive data 1
