advancement revoke @s only main:triggers/lobby/rock

# find rock
tag @s add pickup_rock
execute as @e[type=interaction,tag=block.rock] at @s on attacker if entity @s[tag=pickup_rock] run tag @n[type=interaction,tag=block.rock] add modify_this_rock
execute as @e[type=interaction,tag=block.rock] at @s on target if entity @s[tag=pickup_rock] run tag @n[type=interaction,tag=block.rock] add modify_this_rock
tag @s remove pickup_rock

# give rock
execute as @n[tag=modify_this_rock] on passengers run data modify storage main:item id.RANDOM_ROCK set from entity @s item
function main:module/item/system/macro/give {id:RANDOM_ROCK,slot:weapon.mainhand}

# play rock
execute at @n[tag=modify_this_rock] run playsound minecraft:block.stone.break block @a[distance=..10] ~ ~ ~ 1 2
schedule function c:spawn/rock 5s append

# bye rock :(
execute as @n[tag=modify_this_rock] on passengers run kill @s
execute as @n[tag=modify_this_rock] on vehicle run tp @s ~ -100 ~
execute as @n[tag=modify_this_rock] run kill @s
