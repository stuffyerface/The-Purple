# ready/not ready
execute unless items entity @s main:player *[minecraft:custom_data~{id:"LOBBY_BUTTON"}] run function main:module/inventory/item/lobby_button

# selected ability items
execute unless items entity @s main:player *[minecraft:custom_data~{id:"PREVIEW_ABILITY_SOURCE"}] run function main:module/inventory/item/preview_ability_source
execute unless items entity @s main:player *[minecraft:custom_data~{id:"PREVIEW_ABILITY_SPECTATOR"}] run function main:module/inventory/item/preview_ability_spectator
execute unless items entity @s main:player *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_COLOR"}] run function main:module/inventory/item/preview_cosmetic_color
execute unless items entity @s main:player *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_VIDTORY_DANCE"}] run function main:module/inventory/item/preview_cosmetic_victory_dance
execute unless items entity @s main:player *[minecraft:custom_data~{id:"PREVIEW_COSMETIC_DEATH_EFFECT"}] run function main:module/inventory/item/preview_cosmetic_death_effect

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
