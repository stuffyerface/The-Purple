execute if entity @s[tag=spectator,gamemode=!spectator] run gamemode spectator @s
function main:module/disconnect/sync/artifact_tags

## find marker
# reset player if no marker can be found after 20 ticks
execute if score @s relog matches 20.. run tellraw @a[tag=debug] ["[Console] ",{"text":"Took too long to find ","color":"red"},{"selector":"@s"},{"text":"'s marker, id reset!","color":"red"}]
execute if score @s relog matches 20.. run scoreboard players reset @s id
execute if score @s relog matches 20.. run return run scoreboard players reset @s relog

# check for marker / reset logout zombie
scoreboard players operation .relog id = @s id
execute as @e[tag=id.marker] if score @s id = .relog id if function main:module/disconnect/zombie/kill run tag @s add this_marker
execute unless entity @e[tag=this_marker] run tellraw @a[tag=debug] ["[Console] ",{"text":"Couldn't find the marker!","color":"red"}]
execute unless entity @e[tag=this_marker] run return run scoreboard players add @s relog 1

## modify player
# calculate time offline
scoreboard players operation .calc disconnect = .world data
scoreboard players operation .calc disconnect -= @s disconnect
tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"its been "},{"score":{"objective":"disconnect","name":".calc"},"color":"green"},{"text":" ticks since "},{"selector":"@s"},{"text":" was last online!"}]

# if rejoining after the game ended
execute if score .game data matches -1 if entity @s[tag=player] run clear @s
execute if score .game data matches -1 unless entity @s[tag=player] run function main:lobby/player/inventory
execute if score .game data matches -1 run function c:tp/current_location
execute if score .game data matches -1 run gamemode adventure @s
execute if score .game data matches -1 if entity @s[tag=was_in_game] run tag @s remove was_in_game
execute if score .game data matches -1 if entity @s[tag=player] run function main:message/game/disconnect_end
execute if score .game data matches -1 if entity @s[tag=player] run function main:game/tag/function/player_reset

# if rejoining with the ready tag
execute if score .game data matches -1.. if entity @s[tag=ready] run function c:tp/lobby
execute if score .game data matches -1.. if entity @s[tag=ready] run function main:message/game/disconnect_end
execute if score .game data matches -1.. if entity @s[tag=ready] run function main:game/tag/function/player_reset

# if rejoining after your logout already died
execute if score .game data matches 0.. if entity @s[tag=alive] if entity @e[tag=this_marker,tag=spectator] run function main:message/game/disconnect
execute if score .game data matches 0.. if entity @s[tag=alive] if entity @e[tag=this_marker,tag=spectator] run function main:game/tag/function/player_kill

# if offline for too long during the game
execute if score .game data matches 0.. if score .calc disconnect >= .offline_time settings if entity @s[tag=player,tag=!spectator] run tag @s add relogged_midgame
execute if entity @s[tag=relogged_midgame,tag=infected] run function main:module/cosmetic/death_effect/activate
execute if entity @s[tag=relogged_midgame,tag=!infected] run function main:game/tag/function/player_kill
execute if entity @s[tag=relogged_midgame] run function main:message/game/disconnect
execute if entity @s[tag=relogged_midgame] run tag @s remove relogged_midgame

# if you were previewing a map
execute if score @s preview matches 0.. run function main:lobby/settings/preview/stop

## clean up
function main:game/tag/function/check_required
tag @e[tag=this_marker] remove this_marker
scoreboard players reset .relog id
scoreboard players reset @s relog
bossbar set main:time players @a[tag=player]
