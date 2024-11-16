# grant item ownership to thrower
data merge entity @s {Owner:[I;0,0,0,0],PickupDelay:0,Tags:["thrown_item_pick_me_up"]}
data modify entity @s Owner set from entity @s Thrower

# set uuid scores for comparison
execute store result score .item uuid.thrower.0 run data get entity @s Thrower[0]
execute store result score .item uuid.thrower.1 run data get entity @s Thrower[1]
execute as @a store result score @s uuid.thrower.0 run data get entity @s UUID[0]
execute as @a store result score @s uuid.thrower.1 run data get entity @s UUID[1]

# teleport item to thrower
execute at @s as @a if score @s uuid.thrower.0 = .item uuid.thrower.0 if score @s uuid.thrower.1 = .item uuid.thrower.1 run tp @n[tag=thrown_item_pick_me_up] @s
