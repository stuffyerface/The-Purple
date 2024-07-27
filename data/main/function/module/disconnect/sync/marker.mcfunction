scoreboard players operation .update id = @s id
execute as @e[tag=id.marker] if score @s id = .update id run tag @s add sync_marker_with_player

# add
execute if entity @s[tag=alive] as @e[tag=sync_marker_with_player] run tag @s add alive
execute if entity @s[tag=dead] as @e[tag=sync_marker_with_player] run tag @s add dead
execute if entity @s[tag=source] as @e[tag=sync_marker_with_player] run tag @s add source

# remove
execute unless entity @s[tag=alive] as @e[tag=sync_marker_with_player] run tag @s remove alive
execute unless entity @s[tag=dead] as @e[tag=sync_marker_with_player] run tag @s remove dead
execute unless entity @s[tag=source] as @e[tag=sync_marker_with_player] run tag @s remove source

tag @e[tag=sync_marker_with_player] remove sync_marker_with_player
