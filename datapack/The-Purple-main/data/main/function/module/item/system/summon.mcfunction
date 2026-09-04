data merge entity @s {Tags:["item.display","item.display.new"], Glowing:true, item_display:"ground", teleport_duration:1, transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0.06f,0f,0f,0.5f,0f,0f,0f,0f,0.5f]}
execute summon minecraft:interaction run function main:module/item/system/summon_interaction

loot replace entity @s contents loot main:game/item_box

tag @n[tag=item_spawner,distance=..3] add item
tag @s remove item.display.new
