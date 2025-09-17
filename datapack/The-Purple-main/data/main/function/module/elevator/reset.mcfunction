execute unless loaded 0 92 2999 run return fail

schedule clear main:module/elevator/loop
scoreboard players set .elevator data 0
scoreboard players reset .elevator_y dummy

kill @e[tag=elevator]
execute positioned 0 93 2999 run function c:build/elevator

fill -2 156 2997 2 92 3001 air replace barrier
fill -1 157 2998 -1 100 2998 chain
fill 1 157 3000 1 100 3000 chain
execute as @e[tag=elevator.barrier] at @s if block ~ ~ ~ air run setblock ~ ~ ~ barrier
