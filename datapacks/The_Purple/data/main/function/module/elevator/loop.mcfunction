# choose direction
execute store result score .elevator_y dummy run data get entity @n[tag=elevator.base] Pos[1] 10
execute if score .elevator data matches 0 if score .elevator_y dummy matches ..930 run scoreboard players set .elevator data 1
execute if score .elevator data matches 0 if score .elevator_y dummy matches 1500.. run scoreboard players set .elevator data -1

# teleport
execute if score .elevator data matches 1 as @e[tag=elevator] at @s run tp @s ~ ~0.5 ~
execute if score .elevator data matches -1 if score .elevator_y dummy matches 940.. as @e[tag=elevator] at @s run tp @s ~ ~-1 ~

# blocks
execute as @n[tag=elevator.base] at @s positioned ~1 ~6 ~1 if block ~ ~ ~ minecraft:iron_chain run setblock ~ ~ ~ minecraft:air strict
execute as @n[tag=elevator.base] at @s positioned ~1 ~7 ~1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:iron_chain[axis=y] strict
execute as @n[tag=elevator.base] at @s positioned ~-1 ~6 ~-1 if block ~ ~ ~ minecraft:iron_chain run setblock ~ ~ ~ minecraft:air strict
execute as @n[tag=elevator.base] at @s positioned ~-1 ~7 ~-1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:iron_chain[axis=y] strict
execute as @e[tag=elevator.barrier] at @s run fill ~ ~1 ~ ~ ~-2 ~ minecraft:air replace minecraft:barrier strict
execute as @e[tag=elevator.barrier] at @s if block ~ ~ ~ #main:elevator_replaceable run setblock ~ ~ ~ minecraft:barrier strict
execute as @e[tag=elevator.head] at @s run fill ~ ~1 ~ ~ ~-2 ~ minecraft:air replace minecraft:player_wall_head strict
execute as @e[tag=elevator.head.west] at @s if block ~ ~ ~ #main:elevator_replaceable run setblock ~ ~ ~ minecraft:player_wall_head[facing=west]{profile:{texture:"minecraft:particle/empty"}} strict
execute as @e[tag=elevator.head.south] at @s if block ~ ~ ~ #main:elevator_replaceable run setblock ~ ~ ~ minecraft:player_wall_head[facing=south]{profile:{texture:"minecraft:particle/empty"}} strict

# player
execute at @n[tag=elevator.base] positioned ~-2 ~-1 ~-2 as @a[dx=3.5,dz=3.5,dy=6,gamemode=!spectator] run ride @s mount @e[limit=1,sort=random,tag=elevator.chair,predicate=!main:flag/has_passengers]
execute at @n[tag=elevator.base] positioned ~ ~10 ~ run playsound minecraft:block.chain.break block @a[distance=..50] ~ ~ ~ 1 0

# repeat/end
execute store result score .elevator_y dummy run data get entity @n[tag=elevator.base] Pos[1] 10
execute if score .elevator_y dummy matches 935..1495 run return run schedule function main:module/elevator/loop 1t
execute as @e[tag=elevator.chair,predicate=main:flag/has_passengers] on passengers if entity @s[type=minecraft:player] run ride @s dismount
scoreboard players set .elevator data 0
