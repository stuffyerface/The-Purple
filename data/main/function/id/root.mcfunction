# register new players
execute as @a unless score @s id matches 0.. run scoreboard players set @s id 0
execute as @r[scores={id=0}] at @s run function main:id/register

# teleport markers to their players
execute as @a[scores={id=1..}] at @s run function main:id/teleport_marker