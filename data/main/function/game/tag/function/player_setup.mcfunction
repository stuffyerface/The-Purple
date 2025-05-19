# add stats/advancements
execute as @a[tag=ready] run advancement grant @s only main:advancement/2_challenge/root
execute as @a[tag=ready] run advancement grant @s only main:advancement/1_gameplay/first_mission
execute as @a[tag=ready] if score .map settings matches 1 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_1
execute as @a[tag=ready] if score .map settings matches 2 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_2
execute as @a[tag=ready] if score .map settings matches 3 run advancement grant @s only main:advancement/1_gameplay/expert_explorer map_3

# setup
bossbar set main:time players @a[tag=ready]
execute as @a[tag=!ready] run function c:item/spectate_game
execute as @a[tag=ready] run function main:module/item/function/reset
execute at @a[tag=ready] run kill @e[type=item,distance=..2]
execute as @a[tag=ready] run clear @s
execute as @a[tag=ready] run gamemode adventure
execute as @a[tag=ready] run scoreboard players add .players data 1
execute as @a[tag=ready] run scoreboard players add @s stat.total_games 1
execute as @a[tag=ready] run function main:module/cosmetic/space_helmet
execute as @a[tag=ready] run tag @s add alive
execute as @a[tag=ready] run tag @s add player
execute as @a[tag=ready] run tag @s add was_in_game
execute as @a[tag=ready] run tag @s remove used_ability_before
execute as @a[tag=ready] run tag @s remove has_used_healing_items
execute as @a[tag=ready] run tag @s remove source
execute as @a[tag=ready] run tag @s remove infected
execute as @a[tag=ready] run tag @s remove spectator
execute as @a[tag=ready] run tag @s remove ready

function main:module/miscellaneous/setting/reach
function main:game/tag/function/select_source
