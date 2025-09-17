# choose direction
execute store result score .elevator_y dummy run data get entity @n[tag=elevator.base] Pos[1] 10
execute if score .elevator data matches 0 if score .elevator_y dummy matches ..930 run scoreboard players set .elevator data 1
execute if score .elevator data matches 0 if score .elevator_y dummy matches 1500.. run scoreboard players set .elevator data -1

# teleport
execute if score .elevator data matches 1 as @e[tag=elevator] at @s run tp @s ~ ~0.5 ~
execute if score .elevator data matches -1 if score .elevator_y dummy matches 940.. as @e[tag=elevator] at @s run tp @s ~ ~-1 ~

# blocks
execute as @n[tag=elevator.base] at @s positioned ~1 ~6 ~1 if block ~ ~ ~ chain run setblock ~ ~ ~ air
execute as @n[tag=elevator.base] at @s positioned ~1 ~7 ~1 if block ~ ~ ~ barrier run setblock ~ ~ ~ chain[axis=y]
execute as @n[tag=elevator.base] at @s positioned ~-1 ~6 ~-1 if block ~ ~ ~ chain run setblock ~ ~ ~ air
execute as @n[tag=elevator.base] at @s positioned ~-1 ~7 ~-1 if block ~ ~ ~ barrier run setblock ~ ~ ~ chain[axis=y]
execute as @e[tag=elevator.barrier] at @s run fill ~ ~1 ~ ~ ~-2 ~ air replace barrier
execute as @e[tag=elevator.barrier] at @s if block ~ ~ ~ air run setblock ~ ~ ~ barrier

# player
execute at @n[tag=elevator.base] positioned ~-2 ~-1 ~-2 as @a[dx=3.5,dz=3.5,dy=6,gamemode=!spectator] run ride @s mount @e[limit=1,sort=random,tag=elevator.chair,predicate=!main:flag/has_passengers]
execute at @n[tag=elevator.base] positioned ~ ~10 ~ run playsound minecraft:block.chain.break block @a[distance=..50] ~ ~ ~ 1 0

# repeat/end
execute store result score .elevator_y dummy run data get entity @n[tag=elevator.base] Pos[1] 10
execute if score .elevator_y dummy matches 935..1495 run return run schedule function main:module/elevator/loop 1t
scoreboard players set .elevator data 0


