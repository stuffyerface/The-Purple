execute if score .foot footsteps matches 0 run function main:module/footsteps/summon_right
execute if score .foot footsteps matches 1 run function main:module/footsteps/summon_left

execute rotated ~ ~ run tp @e[type=text_display,tag=freshfootstep] ~ ~ ~ ~ -90
execute as @e[tag=freshfootstep] run tag @s remove freshfootstep

scoreboard players reset @s footsteps
scoreboard players add .foot footsteps 1
execute if score .foot footsteps matches 2.. run scoreboard players set .foot footsteps 0