execute if slots entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"PREVIEW_COSMETIC_DEATH_EFFECT"}}}} run return run item modify entity @s {type:"minecraft:filtered",slot_source:"main:player",item_filter:{predicates:{"minecraft:custom_data":{id:"PREVIEW_COSMETIC_DEATH_EFFECT"}}}} main:item/preview_cosmetic_death_effect

loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"hotbar.8"}}]}]}
loot replace entity @s hotbar.8 loot main:item/preview_cosmetic_death_effect
