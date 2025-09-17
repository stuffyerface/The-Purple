execute as @e[type=#main:footstep,scores={footsteps=50..}] unless entity @s[gamemode=spectator] at @s run function main:module/footsteps/create
execute as @e[tag=footstep] run function main:module/footsteps/age
