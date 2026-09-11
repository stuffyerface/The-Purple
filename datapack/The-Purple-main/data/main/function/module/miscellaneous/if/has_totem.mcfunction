execute unless predicate main:has_item/totem_of_undying run return 0

damage @s 1000000
tag @s add has_used_healing_items
scoreboard players add @s stat.item.totem_of_undying 1
return 1
