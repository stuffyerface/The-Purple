execute if slots entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"LOBBY_BUTTON"}}}} run return run item modify entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"LOBBY_BUTTON"}}}} main:item/lobby_button

tag @s add active_execution
clear @s *[minecraft:custom_data~{id:"LOBBY_BUTTON"}]
item replace entity @s saddle from entity @s hotbar.0 main:tech/equip_to_saddle
loot replace entity @s hotbar.0 loot main:item/lobby_button
loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"saddle"},modifier:"main:tech/remove_equippable"}]}]}
item replace entity @s saddle with minecraft:air
tag @s remove active_execution
