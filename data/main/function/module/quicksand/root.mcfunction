# rope animation
scoreboard players add .rope_animation quicksand 1
execute if score .rope_animation quicksand matches 42.. run scoreboard players reset .rope_animation quicksand
execute if score .rope_animation quicksand matches 1 run function main:module/quicksand/animation/sway
execute as @e[tag=trap.quicksand.rope.1] at @s if score @s quicksand matches 0.. run function main:module/quicksand/animation/whip_back

# in quicksand
execute as @a[tag=in_quicksand] at @s unless entity @e[tag=trap.quicksand.block,distance=..1] run title @s clear
execute as @a[tag=in_quicksand] at @s unless entity @e[tag=trap.quicksand.block,distance=..1] run tag @s remove in_quicksand
execute at @e[tag=trap.quicksand.rope.1] as @a[distance=..10,tag=!in_quicksand,gamemode=!spectator] at @s if entity @e[tag=trap.quicksand.block,distance=..0.8] run function main:module/quicksand/trap
execute as @e[tag=trap.quicksand.ride] at @s unless entity @p[distance=..1,nbt={RootVehicle:{Entity:{Tags:["trap.quicksand.ride"]}}}] run kill @s

# kill
execute as @a[tag=in_quicksand,tag=corrupted] run function c:tp/current_location
execute as @a[tag=in_quicksand,gamemode=!spectator,tag=!corrupted,tag=!dying] at @s if block ~ ~ ~ soul_sand if score .game data matches ..0 run function c:tp/current_location
execute as @a[tag=in_quicksand,gamemode=!spectator,tag=!corrupted,tag=!dying] at @s if block ~ ~ ~ soul_sand if score .game data matches 1.. run scoreboard players add @s stat.total_deaths_by_quicksand 1
execute as @a[tag=in_quicksand,gamemode=!spectator,tag=!corrupted,tag=!dying] at @s if block ~ ~ ~ soul_sand if score .game data matches 1.. run function main:module/cosmetic/death_effect/activate
