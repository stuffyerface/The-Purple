# empty hand
execute unless items entity @s weapon.mainhand * run return run function main:module/item/system/pickup/1

# holding identical item
data modify storage main:item compare set from entity @s SelectedItem.components.minecraft:custom_data.id
execute store result score .compare dummy run data modify storage main:item compare set from entity @s equipment.saddle.components.minecraft:custom_data.id
execute if score .compare dummy matches 0 if function main:module/item/system/pickup/2 run return 2

# drop remaining item
function main:module/item/system/pickup/3

# empty hand -> item replace directly
# full hand, same type -> item modify count
# full hand, different item / full stack -> item modify count of the first found matching non-full stack, otherwise place in first available air slot
