execute if slots entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"PREVIEW_COSMETIC_COLOR"}}}} run return run item modify entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"PREVIEW_COSMETIC_COLOR"}}}} main:item/preview_cosmetic_color

loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"hotbar.6"}}]}]}
loot replace entity @s hotbar.6 loot main:item/preview_cosmetic_color
