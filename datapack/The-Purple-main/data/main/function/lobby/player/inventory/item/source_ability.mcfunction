clear @s *[custom_data~{id:"SELECTED_SOURCE_ABILITY"}]
execute unless score @s source_ability matches 1.. run loot replace entity @s hotbar.7 loot main:item/selected_ability/source_speed
execute if score @s source_ability matches 1 run loot replace entity @s hotbar.7 loot main:item/selected_ability/source_speed
execute if score @s source_ability matches 2 run loot replace entity @s hotbar.7 loot main:item/selected_ability/source_invisible
execute if score @s source_ability matches 3 run loot replace entity @s hotbar.7 loot main:item/selected_ability/source_darkness
execute if score @s source_ability matches 4 run loot replace entity @s hotbar.7 loot main:item/selected_ability/source_corruption
execute if score @s source_ability matches 5 run loot replace entity @s hotbar.7 loot main:item/selected_ability/source_reach
execute if score @s source_ability matches 6 run loot replace entity @s hotbar.7 loot main:item/selected_ability/source_clone
