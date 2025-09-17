execute unless entity @s[tag=rock.arrow] run return run kill @s
execute if score .rock_dupe settings matches 1 if function c:spawn/rock run return run kill @s

summon item ~ ~ ~ {Tags:["modify_this_dropped_rock","dropped_rock"],PickupDelay:1,Item:{id:"minecraft:stone",count:1}}
data modify entity @n[tag=modify_this_dropped_rock] Item set from storage main:item id.THROWING_ROCK
tag @n[tag=modify_this_dropped_rock] remove modify_this_dropped_rock
kill @s
