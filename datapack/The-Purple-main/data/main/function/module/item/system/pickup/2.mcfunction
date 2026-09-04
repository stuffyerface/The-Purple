# confirm held item is below max stack size
execute store result score .hand_count dummy run data get entity @s SelectedItem.count
execute store result score .max_stack_size dummy run data get entity @s SelectedItem.components."minecraft:max_stack_size"
execute if score .hand_count dummy >= .max_stack_size dummy run return fail

# add
execute store result score .item_count dummy run data get entity @s equipment.saddle.count
scoreboard players operation .item_count dummy += .hand_count dummy

# update held item
item modify entity @s weapon.mainhand main:tech/set_count

# subtract
execute store result score .hand_count dummy run data get entity @s SelectedItem.count
scoreboard players operation .item_count dummy -= .hand_count dummy

# return remaining count
execute if score .item_count dummy matches 1.. run item modify entity @s saddle main:tech/set_count
execute if score .item_count dummy matches 1.. run return fail

# finish if none remaining
item replace entity @s saddle with minecraft:air
return 1
