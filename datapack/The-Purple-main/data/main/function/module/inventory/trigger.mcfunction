advancement revoke @s only main:triggers/module/change_inventory

# quick select detection
execute if items entity @s player.cursor * run function main:module/inventory/function/quick_select

# lost readyup detection
execute if score .game data matches -1 unless predicate main:has_item/ready unless predicate main:has_item/not_ready unless score @s relog matches 1.. run function main:module/inventory/function/missing_ready
execute if score .game data matches 1.. unless predicate main:has_item/spectate_game if entity @s[tag=!player,tag=!ready] unless entity @n[type=item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{id:SPECTATE_GAME}}}}] run function c:item/spectate_game
