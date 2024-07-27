execute if score .rope quicksand matches 0 run scoreboard players set .set_rope quicksand 1
execute if score .rope quicksand matches 1 run scoreboard players set .set_rope quicksand 0
scoreboard players operation .rope quicksand = .set_rope quicksand
scoreboard players reset .set_rope quicksand

# Sway West
execute if score .rope quicksand matches 1 as @e[tag=trap.quicksand.rope.1] run data merge entity @s {transformation:[1f,0.05f,0f,-0.05f,-0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:40}
execute if score .rope quicksand matches 1 as @e[tag=trap.quicksand.rope.2] run data merge entity @s {transformation:[1f,0.05f,0f,-0.10f,-0f,1f,0f,1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:40}
execute if score .rope quicksand matches 1 as @e[tag=trap.quicksand.rope.3] run data merge entity @s {transformation:[1f,0.05f,0f,-0.15f,-0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:40}
execute if score .rope quicksand matches 1 as @e[tag=trap.quicksand.rope.4] run data merge entity @s {transformation:[1f,0.05f,0f,-0.20f,-0f,1f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:40}

# Sway East
execute if score .rope quicksand matches 0 as @e[tag=trap.quicksand.rope.1] run data merge entity @s {transformation:[1f,-0.05f,0f,0.05f,-0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:40}
execute if score .rope quicksand matches 0 as @e[tag=trap.quicksand.rope.2] run data merge entity @s {transformation:[1f,-0.05f,0f,0.10f,-0f,1f,0f,1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:40}
execute if score .rope quicksand matches 0 as @e[tag=trap.quicksand.rope.3] run data merge entity @s {transformation:[1f,-0.05f,0f,0.15f,-0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:40}
execute if score .rope quicksand matches 0 as @e[tag=trap.quicksand.rope.4] run data merge entity @s {transformation:[1f,-0.05f,0f,0.20f,-0f,1f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:40}
