execute if slots entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"LOBBY_BUTTON"}}}} run return run item modify entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"LOBBY_BUTTON"}}}} main:item/lobby_button

item replace entity @s main:give from entity @s hotbar.4
loot replace entity @s hotbar.4 loot main:item/lobby_button
