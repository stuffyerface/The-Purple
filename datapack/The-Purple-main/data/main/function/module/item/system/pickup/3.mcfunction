summon minecraft:item ~ ~ ~ {Tags:["modify_this_item"], Age:5990s, PickupDelay:0, NoGravity:true, Invulnerable:true, Owner:[I;0,0,0,0], Item:{id:"minecraft:stone", count:1}}

data modify entity @n[tag=modify_this_item] Owner set from entity @s UUID
data modify entity @n[tag=modify_this_item] Thrower set from entity @s UUID

item replace entity @n[tag=modify_this_item] contents from entity @s saddle main:tech/remove_equippable
item replace entity @s saddle with minecraft:air

tag @n[tag=modify_this_item] remove modify_this_item
