# debug stick dev tool
tag @s add debug_stick
execute as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack unless entity @n[tag=item.display_case,distance=..1] run summon block_display ~-0.4 ~-0.5 ~-0.4 {Tags:["item.display","item.display_case","item.display_case.new","dontkillme"],transformation:[0.8f,0f,0f,0f,0f,1.1f,0f,0f,0f,0f,0.8f,0f,0f,0f,0f,1f],block_state:{id:"minecraft:glass"}}
execute as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack run data modify entity @n[tag=item.display_case,distance=..1] block_state set from entity @p[tag=debug_stick] SelectedItem.id
execute as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack run kill @n[distance=..1,tag=item.display_case,tag=!item.display_case.new]
execute as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack if entity @e[tag=item.display_case.new] run tag @e[tag=modify_this_entity] add dontkillme
execute as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack unless entity @e[tag=item.display_case.new] run tag @e[tag=modify_this_entity] remove dontkillme
execute as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s attack run tag @e[tag=item.display_case.new] remove item.display_case.new
execute as @n[type=interaction,tag=modify_this_entity] at @s if data entity @s interaction run data modify entity @n[type=item_display,tag=item.display,distance=..1] item set from entity @p[tag=debug_stick] SelectedItem
tag @s remove debug_stick
function main:module/item/system/trigger_reset
