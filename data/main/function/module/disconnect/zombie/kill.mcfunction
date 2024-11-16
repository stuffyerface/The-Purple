execute unless entity @s[tag=id.marker] run return fail
tag @s remove id.marker.offline

# find matching logout zombie
scoreboard players operation .zombie id = @s id
execute as @e[tag=disconnect.zombie] if score @s id = .zombie id run tag @s add this_zombie

# player copies logout zombie
execute if entity @n[tag=this_zombie,tag=infected] as @p[scores={relog=1..},dx=0] run tag @s add infected
execute if entity @n[tag=this_zombie,tag=source] as @p[scores={relog=1..},dx=0] run tag @s add source
execute if entity @n[tag=this_zombie,tag=source] as @p[scores={relog=1..},dx=0] run function c:item/source
execute if entity @n[tag=this_zombie,tag=infected] as @p[scores={relog=1..},dx=0] run function main:id/team/set_color

# kill this zombie
scoreboard players reset @n[tag=this_zombie] id
scoreboard players reset @n[tag=this_zombie] color
scoreboard players reset @n[tag=this_zombie] death_effect
tp @n[tag=this_zombie] ~ -100 ~
kill @n[tag=this_zombie]
return 1