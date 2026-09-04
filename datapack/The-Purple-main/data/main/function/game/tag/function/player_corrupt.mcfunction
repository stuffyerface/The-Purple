tag @s remove alive
tag @s remove infected
tag @s remove source
tag @s remove spectator
tag @s add corrupted
attribute @s minecraft:scale modifier add purple:corrupted -0.25 add_value
effect give @s minecraft:weakness infinite 255 true
function main:id/team/set_color
function main:module/disconnect/sync/marker
execute unless score @s return matches -2147483647.. at @s run stopsound @s * purple:music.dead
execute unless score @s return matches -2147483647.. at @s run playsound purple:music.dead master @s ~ ~ ~ 0.33

# items
execute if predicate main:has_item/source run clear @s *[minecraft:custom_data~{id:THE_PURPLE}]
loot replace entity @s armor.head loot main:item/corrupted_head
loot replace entity @s armor.body loot main:item/corrupted_chestplate
loot replace entity @s armor.legs loot main:item/corrupted_leggings
loot replace entity @s armor.feet loot main:item/corrupted_boots
loot replace entity @s hotbar.0 loot main:item/the_purple_spectator
loot replace entity @s hotbar.8 loot main:item/lobby
loot replace entity @s hotbar.7 loot main:item/spectate
