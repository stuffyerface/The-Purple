# dont return this item
execute if items entity @s contents *[minecraft:custom_data~{id:COMPASS}] run return run kill @s

# grant item ownership to thrower
data merge entity @s {PickupDelay:0, Tags:["thrown_item_pick_me_up"]}
data modify entity @s Owner set from entity @s Thrower

# teleport item to thrower
execute on origin at @s run tp @n[tag=thrown_item_pick_me_up] ~ ~ ~
