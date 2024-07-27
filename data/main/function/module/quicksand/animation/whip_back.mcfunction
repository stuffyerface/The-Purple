scoreboard players add @s quicksand 1

# middle
execute if score @s quicksand matches 6 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1,distance=..10] run data merge entity @s {transformation:[1f,0.05f,0f,-0.05f,-0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
execute if score @s quicksand matches 6 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.2,distance=..10] run data merge entity @s {transformation:[1f,0.05f,0f,-0.10f,-0f,1f,0f,1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
execute if score @s quicksand matches 6 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.3,distance=..10] run data merge entity @s {transformation:[1f,0.05f,0f,-0.15f,-0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
execute if score @s quicksand matches 6 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.4,distance=..10] run data merge entity @s {transformation:[1f,0.05f,0f,-0.20f,-0f,1f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}

# middle-east
execute if score @s quicksand matches 11 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1,distance=..10] run data merge entity @s {transformation:[1f,-0.450f,0f,0.400f,-0f,1.00f,0f, 2.00f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:6}
execute if score @s quicksand matches 11 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.2,distance=..10] run data merge entity @s {transformation:[1f,-0.550f,0f,0.950f,-0f,0.80f,0f, 1.20f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:6}
execute if score @s quicksand matches 11 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.3,distance=..10] run data merge entity @s {transformation:[1f,-0.650f,0f,1.600f,-0f,0.80f,0f, 0.40f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:6}
execute if score @s quicksand matches 11 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.4,distance=..10] run data merge entity @s {transformation:[1f,-0.550f,0f,2.150f,-0f,0.80f,0f,-0.40f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:6}

# middle-west
execute if score @s quicksand matches 17 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1,distance=..10] run data merge entity @s {transformation:[1f,0.15f,0f,-0.15f,-0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:7}
execute if score @s quicksand matches 17 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.2,distance=..10] run data merge entity @s {transformation:[1f,0.15f,0f,-0.30f,-0f,1f,0f,1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:7}
execute if score @s quicksand matches 17 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.3,distance=..10] run data merge entity @s {transformation:[1f,0.15f,0f,-0.45f,-0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:7}
execute if score @s quicksand matches 17 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.4,distance=..10] run data merge entity @s {transformation:[1f,0.15f,0f,-0.60f,-0f,1f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:7}

# middle
execute if score @s quicksand matches 24 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1,distance=..10] run data merge entity @s {transformation:[1f,-0.05f,0f,0.05f,-0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:8}
execute if score @s quicksand matches 24 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.2,distance=..10] run data merge entity @s {transformation:[1f,-0.05f,0f,0.10f,-0f,1f,0f,1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:8}
execute if score @s quicksand matches 24 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.3,distance=..10] run data merge entity @s {transformation:[1f,-0.05f,0f,0.15f,-0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:8}
execute if score @s quicksand matches 24 as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.4,distance=..10] run data merge entity @s {transformation:[1f,-0.05f,0f,0.20f,-0f,1f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:8}

execute if score @s quicksand matches 25.. run scoreboard players set .rope quicksand 0
execute if score @s quicksand matches 25.. run scoreboard players reset @s quicksand
