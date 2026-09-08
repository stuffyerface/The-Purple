execute if slots entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"ABILITY_PREVIEW_SOURCE"}}}} run return run item modify entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"ABILITY_PREVIEW_SOURCE"}}}} main:item/ability_preview_source

loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"hotbar.7"}}]}]}
loot replace entity @s hotbar.7 loot main:item/ability_preview_source
