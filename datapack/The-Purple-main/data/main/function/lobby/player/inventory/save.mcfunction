data remove storage main:dummy player

# hotbar
execute in minecraft:overworld positioned 1000000 0 1000000 run item override block ~ ~ ~ container.* from entity @s hotbar.*
execute in minecraft:overworld positioned 1000000 0 1000000 run data modify storage main:dummy player.hotbar set from block ~ ~ ~ Items

# inventory
execute in minecraft:overworld positioned 1000000 0 1000000 run item override block ~ ~ ~ container.* from entity @s inventory.*
execute in minecraft:overworld positioned 1000000 0 1000000 run data modify storage main:dummy player.inventory set from block ~ ~ ~ Items

# equipment
execute in minecraft:overworld positioned 1000000 0 1000000 run item override block ~ ~ ~ container.* from entity @s {type:"minecraft:group",terms:[{type:"minecraft:slot_range",source:"this",slots:"armor.*"},{type:"minecraft:slot_range",source:"this",slots:"saddle"},{type:"minecraft:slot_range",source:"this",slots:"weapon.offhand"}]}
execute in minecraft:overworld positioned 1000000 0 1000000 run data modify storage main:dummy player.equipment set from block ~ ~ ~ Items

function main:lobby/player/inventory/save_macro with entity @s
execute in minecraft:overworld positioned 1000000 0 1000000 run data remove block ~ ~ ~ Items
