scoreboard players set .rope_animation quicksand -32
execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1,distance=..10] run data merge entity @s {transformation:[1f,1.000f,0f,-1.000f,-0f,1.00f,0f, 2.00f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.2,distance=..10] run data merge entity @s {transformation:[1f,0.900f,0f,-1.900f,-0f,0.60f,0f, 1.40f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.3,distance=..10] run data merge entity @s {transformation:[1f,0.800f,0f,-2.700f,-0f,0.40f,0f, 1.00f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.4,distance=..10] run data merge entity @s {transformation:[1f,0.700f,0f,-3.400f,-0f,0.20f,0f, 0.80f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}

scoreboard players add @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1,distance=..10,type=block_display] quicksand 0

# saving older versions

# first attempt, weird and flat
#execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1,distance=..10] run data merge entity @s {transformation:[1f,0.5f,0f,-0.5f,-0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:10}
#execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.2,distance=..10] run data merge entity @s {transformation:[1f,0.5f,0f,-1.0f,-0f,1f,0f,1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:10}
#execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.3,distance=..10] run data merge entity @s {transformation:[1f,0.5f,0f,-1.5f,-0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:10}
#execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.4,distance=..10] run data merge entity @s {transformation:[1f,0.5f,0f,-2.0f,-0f,1f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:10}

# second attempt, less flat but still very straight
#execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1,distance=..10] run data merge entity @s {transformation:[1f,1.000f,0f,-1.000f,-0f,1.00f,0f, 2.00f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
#execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.2,distance=..10] run data merge entity @s {transformation:[1f,0.900f,0f,-1.900f,-0f,0.90f,0f, 1.10f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
#execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.3,distance=..10] run data merge entity @s {transformation:[1f,0.800f,0f,-2.700f,-0f,0.80f,0f, 0.30f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
#execute as @e[limit=1,sort=nearest,tag=trap.quicksand.rope.4,distance=..10] run data merge entity @s {transformation:[1f,0.700f,0f,-3.400f,-0f,0.70f,0f,-0.40f,0f,0f,1f,0f,0f,0f,0f,1f],start_interpolation:0,interpolation_duration:5}
