execute if slots entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"ABILITY_PREVIEW_SOURCE"}}}} run return run item modify entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"ABILITY_PREVIEW_SOURCE"}}}} main:item/ability_preview_source

item replace entity @s main:give from entity @s hotbar.7
loot replace entity @s hotbar.7 loot main:item/ability_preview_source
