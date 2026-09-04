execute if slots entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"ABILITY_PREVIEW_SPECTATOR"}}}} run return run item modify entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"ABILITY_PREVIEW_SPECTATOR"}}}} main:item/ability_preview_spectator

item replace entity @s main:give from entity @s hotbar.8
loot replace entity @s hotbar.8 loot main:item/ability_preview_spectator
