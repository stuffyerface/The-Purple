execute unless loaded 0 92 2999 run return fail

schedule clear main:module/elevator/loop
scoreboard players set .elevator data 0
scoreboard players reset .elevator_y dummy

kill @e[tag=elevator]
execute positioned 0 93 2999 run function init:build/elevator

fill -2 156 2997 2 92 3001 air replace barrier
fill -1 157 2998 -1 100 2998 iron_chain
fill 1 157 3000 1 100 3000 iron_chain
execute as @e[tag=elevator.barrier] at @s if block ~ ~ ~ air run setblock ~ ~ ~ barrier
execute as @e[tag=elevator.head.west] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:player_wall_head[facing=west]{profile:{texture:"minecraft:particle/empty"}}
execute as @e[tag=elevator.head.south] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:player_wall_head[facing=south]{profile:{texture:"minecraft:particle/empty"}}
