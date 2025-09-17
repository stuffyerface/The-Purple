advancement revoke @s only main:triggers/game/tagged_by_clone

# if dead, find new target
execute if function main:module/miscellaneous/if/infected_or_corrupted if entity @a[tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator] on attacker run return run damage @s 0 minecraft:generic_kill by @p[tag=player,tag=!corrupted,tag=!source,gamemode=!spectator]

# find origin
execute on attacker run scoreboard players operation .check id = @s id
execute on attacker run effect give @s[tag=clone] minecraft:instant_health infinite 3 true
execute as @a if score @s id = .check id run tag @s add clone_origin
damage @s 1 minecraft:generic_kill by @p[tag=clone_origin]
tag @a[tag=clone_origin] remove clone_origin
