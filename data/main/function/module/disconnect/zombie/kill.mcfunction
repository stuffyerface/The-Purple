tag @s remove id.marker.offline

# find matching logout zombie
scoreboard players operation .zombie id = @s id
execute as @e[tag=disconnect.zombie] if score @s id = .zombie id run tag @s add this_zombie

# player copies logout zombie
execute if entity @e[tag=this_zombie,tag=source] as @p[scores={relog=1..},dx=0] run tag @s add source
execute if entity @e[tag=this_zombie,tag=source] as @p[scores={relog=1..},dx=0] run function c:item/source

# kill this zombie
scoreboard players reset @e[tag=this_zombie] id
tp @e[tag=this_zombie] ~ -100 ~
kill @e[tag=this_zombie]

