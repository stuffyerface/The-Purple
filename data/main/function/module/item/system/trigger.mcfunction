advancement revoke @s only main:triggers/items/pickup_item
scoreboard players reset .compare dummy

# find correct item display
tag @s add pickup_item
execute as @e[type=interaction,tag=item.display] at @s on attacker if entity @s[tag=pickup_item] run tag @e[tag=item.display,limit=2,sort=nearest] add modify_this_entity
execute as @e[type=interaction,tag=item.display] at @s on target if entity @s[tag=pickup_item] run tag @e[tag=item.display,limit=2,sort=nearest] add modify_this_entity
tag @s remove pickup_item

# compare items
execute if items entity @s weapon.mainhand * run data modify storage main:item compare set from entity @s SelectedItem.components."minecraft:custom_data".id
execute if items entity @s weapon.mainhand * store result score .compare dummy run data modify storage main:item compare set from entity @n[type=item_display,tag=modify_this_entity] item.components."minecraft:custom_data".id
execute if score .compare dummy matches 1 run function main:module/item/system/trigger_reset
execute if score .compare dummy matches 1 run return run function main:message/item/mismatch

# count
execute store result score .hand_count dummy run data get entity @s SelectedItem.count
execute store result score .item_count dummy run data get entity @n[type=item_display,tag=modify_this_entity] item.count
execute if items entity @s weapon.mainhand * store result score .max_stack_size dummy run data get entity @s SelectedItem.components."minecraft:max_stack_size"
execute if items entity @s weapon.mainhand * if score .hand_count dummy >= .max_stack_size dummy run function main:module/item/system/trigger_reset
execute if items entity @s weapon.mainhand * if score .hand_count dummy >= .max_stack_size dummy run return run function main:message/item/full_stack
scoreboard players operation .item_count dummy += .hand_count dummy

# replace my item
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=modify_this_entity] contents main:set_count
execute as @n[type=item_display,tag=modify_this_entity] at @s run playsound minecraft:entity.item.pickup player @a
execute as @n[type=item_display,tag=modify_this_entity,tag=dontkillme] at @s run particle minecraft:happy_villager ~ ~ ~ 0.1 0.1 0.1 0 5

# reset or remove correct item display
execute as @n[type=item_display,tag=modify_this_entity,tag=!dontkillme] at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 2
execute as @n[type=item_display,tag=modify_this_entity,tag=!dontkillme] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
execute as @e[tag=modify_this_entity,tag=!dontkillme] run kill @s
function main:module/item/system/trigger_reset
