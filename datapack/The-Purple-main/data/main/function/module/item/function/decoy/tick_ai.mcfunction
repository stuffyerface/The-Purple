# Footstep
execute store result score .Motion[0] dummy run data get entity @s Motion[0] 10
execute store result score .Motion[2] dummy run data get entity @s Motion[2] 10
execute unless score .Motion[0] dummy matches 0 unless score .Motion[2] dummy matches 0 run scoreboard players add @s footsteps 25

# sync decoy entities
scoreboard players operation .decoy_id dummy = @s clone_id
execute as @e[type=minecraft:mannequin,tag=decoy] if score @s clone_id = .decoy_id dummy run return run tp @s ~ ~ ~ ~ ~

# remove if no mannequin exists
tp @s ~ -64 ~
kill @s
