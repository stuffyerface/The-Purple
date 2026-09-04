# ready/not ready
execute unless items entity @s main:player *[minecraft:custom_data~{id:"LOBBY_BUTTON"}] run function main:lobby/player/inventory/item/lobby_button

# selected ability items
execute unless items entity @s main:player *[minecraft:custom_data~{id:"ABILITY_PREVIEW_SOURCE"}] run function main:lobby/player/inventory/item/ability_preview_source
execute unless items entity @s main:player *[minecraft:custom_data~{id:"ABILITY_PREVIEW_SPECTATOR"}] run function main:lobby/player/inventory/item/ability_preview_spectator

# quick select items
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SOURCE_SPEED"}] run loot replace entity @s inventory.0 loot main:item/quick_select/source_speed
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SOURCE_INVISIBLE"}] run loot replace entity @s inventory.9 loot main:item/quick_select/source_invisible
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SOURCE_DARKNESS"}] run loot replace entity @s inventory.18 loot main:item/quick_select/source_darkness
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SOURCE_CORRUPTION"}] run loot replace entity @s inventory.1 loot main:item/quick_select/source_corruption
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SOURCE_REACH"}] run loot replace entity @s inventory.10 loot main:item/quick_select/source_reach
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SOURCE_CLONE"}] run loot replace entity @s inventory.19 loot main:item/quick_select/source_clone

execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SPECTATOR_FIREWORKS"}] run loot replace entity @s inventory.7 loot main:item/quick_select/spectator_fireworks
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SPECTATOR_SPEED"}] run loot replace entity @s inventory.16 loot main:item/quick_select/spectator_speed
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SPECTATOR_TELEPORT"}] run loot replace entity @s inventory.25 loot main:item/quick_select/spectator_teleport
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SPECTATOR_SLIME"}] run loot replace entity @s inventory.8 loot main:item/quick_select/spectator_slime
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SPECTATOR_TIME"}] run loot replace entity @s inventory.17 loot main:item/quick_select/spectator_time
execute unless items entity @s main:player *[minecraft:custom_data~{id:"QUICK_SELECT", ability:"SPECTATOR_ITEM"}] run loot replace entity @s inventory.26 loot main:item/quick_select/spectator_item

# artifacts
execute unless items entity @s[tag=artifact.frying_pan] main:player *[minecraft:custom_data~{id:"ARTIFACT_FRYING_PAN"}] run loot give @s loot main:item/artifact_frying_pan
execute unless items entity @s[tag=artifact.microscope] main:player *[minecraft:custom_data~{id:"ARTIFACT_MICROSCOPE"}] run loot give @s loot main:item/artifact_microscope
execute unless items entity @s[tag=artifact.ugly_fish] main:player *[minecraft:custom_data~{id:"ARTIFACT_UGLY_FISH"}] run loot give @s loot main:item/artifact_ugly_fish
execute unless items entity @s[tag=artifact.potted_plant] main:player *[minecraft:custom_data~{id:"ARTIFACT_POTTED_PLANT"}] run loot give @s loot main:item/artifact_potted_plant
execute unless items entity @s[tag=artifact.rope] main:player *[minecraft:custom_data~{id:"ARTIFACT_ROPE"}] run loot give @s loot main:item/artifact_rope
execute unless items entity @s[tag=artifact.drill] main:player *[minecraft:custom_data~{id:"ARTIFACT_DRILL"}] run loot give @s loot main:item/artifact_drill
execute unless items entity @s[tag=artifact.meteorite] main:player *[minecraft:custom_data~{id:"ARTIFACT_METEORITE"}] run loot give @s loot main:item/artifact_meteorite
execute unless items entity @s[tag=artifact.gears] main:player *[minecraft:custom_data~{id:"ARTIFACT_GEARS"}] run loot give @s loot main:item/artifact_gears
execute unless items entity @s[tag=artifact.lantern] main:player *[minecraft:custom_data~{id:"ARTIFACT_LANTERN"}] run loot give @s loot main:item/artifact_lantern
