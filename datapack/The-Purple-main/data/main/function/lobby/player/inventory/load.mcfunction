function main:lobby/player/inventory/load_macro with entity @s

# hotbar
execute in minecraft:overworld positioned 1000000 0 1000000 run data modify block ~ ~ ~ Items set from storage main:dummy player.hotbar
execute in minecraft:overworld positioned 1000000 0 1000000 run item override entity @s hotbar.* from block ~ ~ ~ container.*

# inventory
execute in minecraft:overworld positioned 1000000 0 1000000 run data modify block ~ ~ ~ Items set from storage main:dummy player.inventory
execute in minecraft:overworld positioned 1000000 0 1000000 run item override entity @s inventory.* from block ~ ~ ~ container.*

# equipment
execute in minecraft:overworld positioned 1000000 0 1000000 run data modify block ~ ~ ~ Items set from storage main:dummy player.equipment
execute in minecraft:overworld positioned 1000000 0 1000000 run item override entity @s {type:"minecraft:group",terms:[{type:"minecraft:slot_range",source:"this",slots:"armor.*"},{type:"minecraft:slot_range",source:"this",slots:"saddle"},{type:"minecraft:slot_range",source:"this",slots:"weapon.offhand"}]} from block ~ ~ ~ container.*

function main:lobby/player/inventory/items
execute in minecraft:overworld positioned 1000000 0 1000000 run data remove block ~ ~ ~ Items
