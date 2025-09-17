function main:module/elevator/reset
function main:module/music/reset
schedule clear main:game/tag/start
execute as @a[tag=player] run ride @s dismount
execute at @a[tag=player] run kill @e[type=item,distance=..1]
tp @e[tag=victory_dance] ~ -64 ~
kill @e[tag=victory_dance]
kill @e[tag=disconnect.zombie]
kill @e[tag=footstep]
kill @e[tag=kill_meteor]
kill @e[tag=corrupt_block,tag=!dontkillme]
kill @e[tag=item.display,tag=!dontkillme]
kill @e[tag=item.display.gravity]
kill @e[tag=death_effect.grave,tag=!dontkillme]
kill @e[type=#main:kill]
tag @e[tag=item_spawner] remove item
data remove block 3 14 -22 lock
scoreboard players set .game data -1
scoreboard players reset .time data
scoreboard players reset .alive data
scoreboard players reset .players data
scoreboard players reset .start_countdown data
scoreboard players reset .countdown data
scoreboard players reset .required data
scoreboard players reset .pregame data
scoreboard players reset .ready data
scoreboard players reset .round data
scoreboard players reset * return
scoreboard players reset * spectate_confirm
scoreboard players reset * return_to_lobby_confirm
scoreboard players reset * double_tap
scoreboard players reset * double_tap_uuid.0
scoreboard players reset * double_tap_uuid.1
scoreboard players reset * tagback_timer
scoreboard players reset * tagback_uuid.0
scoreboard players reset * tagback_uuid.1
scoreboard players reset * spectator_ability_timer
scoreboard players reset * source_ability_timer
bossbar set main:time visible false
bossbar set main:time players
execute as @a[tag=!player] run function c:item/ready
execute as @a[tag=player] run gamemode adventure @s
execute as @a[tag=player] run scoreboard players set @s teleport_lock 0
execute as @a[tag=player] run function main:game/tag/function/player_reset
execute as @a[tag=was_in_game] run tag @s remove was_in_game
function main:game/tag/function/check_required

execute at @e[tag=block.turtle_egg.1] unless block ~ ~ ~ turtle_egg[eggs=1] run setblock ~ ~ ~ turtle_egg[eggs=1]
execute at @e[tag=block.turtle_egg.2] unless block ~ ~ ~ turtle_egg[eggs=2] run setblock ~ ~ ~ turtle_egg[eggs=2]
execute at @e[tag=block.turtle_egg.3] unless block ~ ~ ~ turtle_egg[eggs=3] run setblock ~ ~ ~ turtle_egg[eggs=3]
execute at @e[tag=block.turtle_egg.4] unless block ~ ~ ~ turtle_egg[eggs=4] run setblock ~ ~ ~ turtle_egg[eggs=4]
