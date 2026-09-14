tag @s add active_execution
clear @s *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_DEATH_EFFECT"}]
item replace entity @s saddle from entity @s hotbar.8 main:tech/equip_to_saddle
loot replace entity @s hotbar.8 loot main:item/preview_cosmetic_death_effect
loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"saddle"},modifier:"main:tech/remove_equippable"}]}]}
item replace entity @s saddle with minecraft:air
tag @s remove active_execution
