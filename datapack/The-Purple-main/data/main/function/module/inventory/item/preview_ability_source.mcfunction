execute if slots entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"PREVIEW_ABILITY_SOURCE"}}}} run return run item modify entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"PREVIEW_ABILITY_SOURCE"}}}} main:item/preview_ability_source

loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"hotbar.5"}}]}]}
loot replace entity @s hotbar.5 loot main:item/preview_ability_source
