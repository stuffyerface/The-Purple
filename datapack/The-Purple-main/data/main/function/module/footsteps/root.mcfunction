execute as @a[gamemode=!spectator,scores={footsteps=50..}] at @s run function main:module/footsteps/create
execute as @e[tag=footstep] run function main:module/footsteps/age
