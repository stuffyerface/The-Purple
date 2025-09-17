advancement revoke @s only main:triggers/items/pickup_item
scoreboard players reset .compare dummy

# find correct item display
tag @s add pickup_item
execute as @e[type=interaction,tag=item.display] at @s on attacker if entity @s[tag=pickup_item] run tag @n[type=interaction,tag=item.display] add modify_this_entity
execute as @e[type=interaction,tag=item.display] at @s on attacker if entity @s[tag=pickup_item] run tag @n[type=item_display,tag=item.display] add modify_this_entity
execute as @e[type=interaction,tag=item.display] at @s on target if entity @s[tag=pickup_item] run tag @n[type=interaction,tag=item.display] add modify_this_entity
execute as @e[type=interaction,tag=item.display] at @s on target if entity @s[tag=pickup_item] run tag @n[type=item_display,tag=item.display] add modify_this_entity
tag @s remove pickup_item

# disable players from picking up item displays while teleporting
execute if score @s teleport_lock matches 0.. at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.8
execute if score @s teleport_lock matches 0.. run scoreboard players set @s actionbar 30
execute if score @s teleport_lock matches 0.. run title @s actionbar [{"translate":"message.purple.impossible_pickup","fallback":"You cannot pick up this item!","color":"red"}]
execute if score @s teleport_lock matches 0.. run return run function main:module/item/system/trigger_reset

# disable players from picking up permanent item displays during the game
execute if score .game data matches 0.. if entity @e[tag=modify_this_entity,tag=dontkillme] if entity @s[tag=player] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.8
execute if score .game data matches 0.. if entity @e[tag=modify_this_entity,tag=dontkillme] if entity @s[tag=player] run scoreboard players set @s actionbar 30
execute if score .game data matches 0.. if entity @e[tag=modify_this_entity,tag=dontkillme] if entity @s[tag=player] run title @s actionbar [{"translate":"message.purple.impossible_pickup","fallback":"You cannot pick up this item!","color":"red"}]
execute if score .game data matches 0.. if entity @e[tag=modify_this_entity,tag=dontkillme] if entity @s[tag=player] run return run function main:module/item/system/trigger_reset

# disable non-participating players from picking up gameplay items when the game is running
execute if score .game data matches 0.. if entity @e[tag=modify_this_entity,tag=!dontkillme] if entity @s[tag=!player] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.8
execute if score .game data matches 0.. if entity @e[tag=modify_this_entity,tag=!dontkillme] if entity @s[tag=!player] run scoreboard players set @s actionbar 30
execute if score .game data matches 0.. if entity @e[tag=modify_this_entity,tag=!dontkillme] if entity @s[tag=!player] run title @s actionbar [{"translate":"message.purple.impossible_pickup","fallback":"You cannot pick up this item!","color":"red"}]
execute if score .game data matches 0.. if entity @e[tag=modify_this_entity,tag=!dontkillme] if entity @s[tag=!player] run return run function main:module/item/system/trigger_reset

# corrupted check
execute if entity @s[tag=corrupted] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.8
execute if entity @s[tag=corrupted] run scoreboard players set @s actionbar 30
execute if entity @s[tag=corrupted] run title @s actionbar [{"translate":"message.purple.impossible_pickup","fallback":"You cannot pick up this item!","color":"red"}]
execute if entity @s[tag=corrupted] run return run function main:module/item/system/trigger_reset

# distance check
execute at @e[type=interaction,tag=modify_this_entity] unless entity @s[distance=..6] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.8
execute at @e[type=interaction,tag=modify_this_entity] unless entity @s[distance=..6] run scoreboard players set @s actionbar 30
execute at @e[type=interaction,tag=modify_this_entity] unless entity @s[distance=..6] run title @s actionbar [{"translate":"message.purple.impossible_reach","fallback":"Your arms are too long!","color":"red"}]
execute at @e[type=interaction,tag=modify_this_entity] unless entity @s[distance=..6] run tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"},{"text":" triggered a distance check","color":"dark_red"}]
execute at @e[type=interaction,tag=modify_this_entity] unless entity @s[distance=..6] run return run function main:module/item/system/trigger_reset

# debug stick dev tool
execute if entity @s[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack unless entity @n[tag=item.display_case,distance=..1] run summon block_display ~-0.4 ~-0.5 ~-0.4 {Tags:["item.display","item.display_case","item.display_case.new","dontkillme"],transformation:[0.8f,0f,0f,0f,0f,1.1f,0f,0f,0f,0f,0.8f,0f,0f,0f,0f,1f],block_state:{Name:"minecraft:glass"}}
execute if entity @s[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack run data modify entity @n[tag=item.display_case,distance=..1] block_state.Name set from entity @p[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] SelectedItem.id
execute if entity @s[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack run kill @n[distance=..1,tag=item.display_case,tag=!item.display_case.new]
execute if entity @s[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack if entity @e[tag=item.display_case.new] run tag @e[tag=modify_this_entity] add dontkillme
execute if entity @s[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack unless entity @e[tag=item.display_case.new] run tag @e[tag=modify_this_entity] remove dontkillme
execute if entity @s[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack run tag @e[tag=item.display_case.new] remove item.display_case.new
execute if entity @s[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s interaction run data modify entity @n[type=item_display,tag=item.display,distance=..1] item set from entity @p[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] SelectedItem
execute if entity @s[nbt={Inventory:[{id:"minecraft:debug_stick",Slot:-106b}]}] run return run function main:module/item/system/trigger_reset

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
execute unless entity @n[type=item_display,tag=modify_this_entity,tag=dontkillme] run scoreboard players add @s stat.found_items 1
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=modify_this_entity] contents main:set_count
execute as @s at @s run playsound minecraft:entity.item.pickup player @a
execute as @n[type=item_display,tag=modify_this_entity,tag=dontkillme] at @s run particle minecraft:happy_villager ~ ~ ~ 0.15 0.1 0.15 0 1

# reset or remove correct item display
execute if entity @e[type=item_display,tag=modify_this_entity,tag=!dontkillme] run scoreboard players add .total_items data 1
execute as @n[type=item_display,tag=modify_this_entity,tag=!dontkillme] at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 2
execute as @n[type=item_display,tag=modify_this_entity,tag=!dontkillme] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
execute as @e[type=item_display,tag=modify_this_entity,tag=!dontkillme] at @s run tag @n[tag=item_spawner,tag=item,distance=..3] remove item
execute as @e[tag=modify_this_entity,tag=!dontkillme] run kill @s
function main:module/item/system/trigger_reset
