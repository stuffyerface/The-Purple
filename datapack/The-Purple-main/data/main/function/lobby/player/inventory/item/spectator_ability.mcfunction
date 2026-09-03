clear @s *[custom_data~{id:"SELECTED_SPECTATOR_ABILITY"}]
execute unless score @s spectator_ability matches 1.. run loot replace entity @s hotbar.8 loot main:item/selected_ability/spectator_fireworks
execute if score @s spectator_ability matches 1 run loot replace entity @s hotbar.8 loot main:item/selected_ability/spectator_fireworks
execute if score @s spectator_ability matches 2 run loot replace entity @s hotbar.8 loot main:item/selected_ability/spectator_speed
execute if score @s spectator_ability matches 3 run loot replace entity @s hotbar.8 loot main:item/selected_ability/spectator_teleport
execute if score @s spectator_ability matches 4 run loot replace entity @s hotbar.8 loot main:item/selected_ability/spectator_slime
execute if score @s spectator_ability matches 5 run loot replace entity @s hotbar.8 loot main:item/selected_ability/spectator_time
execute if score @s spectator_ability matches 6 run loot replace entity @s hotbar.8 loot main:item/selected_ability/spectator_item
