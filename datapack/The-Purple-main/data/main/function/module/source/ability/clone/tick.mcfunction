# Footstep
execute store result score .Motion[0] dummy run data get entity @s Motion[0] 10
execute store result score .Motion[2] dummy run data get entity @s Motion[2] 10
execute unless score .Motion[0] dummy matches 0 unless score .Motion[2] dummy matches 0 run scoreboard players add @s footsteps 25

# age tick
scoreboard players add @s age 1

# sync clone entities
scoreboard players operation .clone_age dummy = @s age
scoreboard players operation .clone_id dummy = @s clone_id
execute as @e[type=minecraft:mannequin,tag=clone_mannequin] if score @s clone_id = .clone_id dummy run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:mannequin,tag=clone_mannequin] if score @s clone_id = .clone_id dummy run scoreboard players operation @s age = .clone_age dummy
