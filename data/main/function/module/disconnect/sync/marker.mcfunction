scoreboard players operation .update id = @s id
execute as @e[tag=id.marker] if score @s id = .update id run tag @s add sync_marker_with_player

# sync
scoreboard players operation @e[tag=sync_marker_with_player] death_effect = @s death_effect
scoreboard players operation @e[tag=sync_marker_with_player] color = @s color

# add
execute if entity @s[tag=alive] as @e[tag=sync_marker_with_player] run tag @s add alive
execute if entity @s[tag=dead] as @e[tag=sync_marker_with_player] run tag @s add dead
execute if entity @s[tag=source] as @e[tag=sync_marker_with_player] run tag @s add source
execute if entity @s[tag=infected] as @e[tag=sync_marker_with_player] run tag @s add infected
execute if entity @s[tag=spectator] as @e[tag=sync_marker_with_player] run tag @s add spectator
execute if entity @s[tag=corrupted] as @e[tag=sync_marker_with_player] run tag @s add corrupted

# remove
execute unless entity @s[tag=alive] as @e[tag=sync_marker_with_player] run tag @s remove alive
execute unless entity @s[tag=dead] as @e[tag=sync_marker_with_player] run tag @s remove dead
execute unless entity @s[tag=source] as @e[tag=sync_marker_with_player] run tag @s remove source
execute unless entity @s[tag=infected] as @e[tag=sync_marker_with_player] run tag @s remove infected
execute unless entity @s[tag=spectator] as @e[tag=sync_marker_with_player] run tag @s remove spectator
execute unless entity @s[tag=corrupted] as @e[tag=sync_marker_with_player] run tag @s remove corrupted

tag @e[tag=sync_marker_with_player] remove sync_marker_with_player
