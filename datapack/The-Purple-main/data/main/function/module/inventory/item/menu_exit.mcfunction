tag @s add active_execution
clear @s *[minecraft:custom_data~{id:"MENU_EXIT"}]
item replace entity @s saddle from entity @s inventory.8 main:tech/equip_to_saddle
loot replace entity @s inventory.8 loot main:item/menu_exit
loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"saddle"},modifier:"main:tech/remove_equippable"}]}]}
item replace entity @s saddle with minecraft:air
tag @s remove active_execution
