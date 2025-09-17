# refund
$execute unless entity @s[tag=dont_drop_items] unless items entity @s $(slot) *[minecraft:custom_data={id:LOBBY}] unless items entity @s $(slot) *[minecraft:custom_data={id:SPECTATE}] unless items entity @s $(slot) *[minecraft:custom_data={id:SPECTATE_GAME}] unless items entity @s $(slot) *[minecraft:custom_data={id:READY}] unless items entity @s $(slot) *[minecraft:custom_data={id:NOT_READY}] unless items entity @s $(slot) *[minecraft:custom_data={id:SOURCE_ABILITY}] unless items entity @s $(slot) *[minecraft:custom_data={id:SPECTATOR_ABILITY}] at @s run summon item ~ ~ ~ {Age:5990s,PickupDelay:0,Owner:[I;0,0,0,0],NoGravity:1b,Invulnerable:1b,Tags:["modify_this_item"],Item:{id:"minecraft:stone",count:1}}
$item replace entity @n[tag=modify_this_item] contents from entity @s $(slot)
data modify entity @n[tag=modify_this_item] Owner set from entity @s UUID
data modify entity @n[tag=modify_this_item] Thrower set from entity @s UUID
tag @n[tag=modify_this_item] remove modify_this_item

# replace
summon item_display ~ ~ ~ {view_range:0f,Tags:["item.give"]}
$data modify entity @n[tag=item.give] item set from storage main:item id.$(id)
$item replace entity @s $(slot) from entity @n[tag=item.give] contents
kill @n[tag=item.give]

# i wish there was a better way to handle this
# unless items entity @s $(slot) *[minecraft:custom_data={id:LOBBY}]
# unless items entity @s $(slot) *[minecraft:custom_data={id:SPECTATE}]
# unless items entity @s $(slot) *[minecraft:custom_data={id:SPECTATE_GAME}]
# unless items entity @s $(slot) *[minecraft:custom_data={id:READY}]
# unless items entity @s $(slot) *[minecraft:custom_data={id:NOT_READY}]
# unless items entity @s $(slot) *[minecraft:custom_data={id:SOURCE_ABILITY}]
# unless items entity @s $(slot) *[minecraft:custom_data={id:SPECTATOR_ABILITY}]
