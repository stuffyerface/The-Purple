execute store result score .randomize_horse dummy run random value 1..42

# summon
execute if score .randomize_horse dummy matches 1..35 run summon horse ~ ~ ~ {Tags:["victory_dance","victory_dance.horse","victory_dance.horse_new"],SaddleItem:{id:"minecraft:saddle",Count:1b,components:{"minecraft:hide_tooltip": {},"minecraft:enchantments":{levels:{"minecraft:binding_curse":1},show_in_tooltip:false},"minecraft:enchantment_glint_override":false}},Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Tame:1b,attributes:[{id:"minecraft:jump_strength",base:1.0},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3375}]}
execute if score .randomize_horse dummy matches 36..40 run summon donkey ~ ~ ~ {Tags:["victory_dance","victory_dance.horse"],ChestedHorse:1b,Items:[{Slot:7b,id:"minecraft:player_head",Count:1b,components: {"!minecraft:attribute_modifiers": {}, "minecraft:item_name": '{"fallback":"Horse","translate":"entity.minecraft.horse"}', "minecraft:lore": ['{"color":"gray","fallback":"How hungry?","italic":false,"translate":"item.purple.edible_horse"}'], "minecraft:food": {saturation: 20.0f, nutrition: 20, can_always_eat: 1b}, "minecraft:consumable": {on_consume_effects: [{type: "minecraft:play_sound", sound: "minecraft:entity.horse.death"}], consume_seconds: 1.0f}, "minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTMzNWUzMTk2MTcxMzM1M2E3NjQwMWUwMGMzNDU0YjdjYTg4NWI3Nzg0ZDUyODhkMzIyNzIyMmQ5YjQ4ZDM5MyJ9fX0="}]}, "minecraft:custom_data": {id: "EDIBLE_HORSE"}}}],SaddleItem:{id:"minecraft:saddle",Count:1b,components:{"minecraft:hide_tooltip": {},"minecraft:enchantments":{levels:{"minecraft:binding_curse":1},show_in_tooltip:false},"minecraft:enchantment_glint_override":false}},Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Tame:1b,attributes:[{id:"minecraft:jump_strength",base:1.0},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3375}]}
execute if score .randomize_horse dummy matches 41 run summon zombie_horse ~ ~ ~ {Tags:["victory_dance","victory_dance.horse"],SaddleItem:{id:"minecraft:saddle",Count:1b,components:{"minecraft:hide_tooltip": {},"minecraft:enchantments":{levels:{"minecraft:binding_curse":1},show_in_tooltip:false},"minecraft:enchantment_glint_override":false}},Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Tame:1b,attributes:[{id:"minecraft:jump_strength",base:1.0},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3375}]}
execute if score .randomize_horse dummy matches 42 run summon skeleton_horse ~ ~ ~ {Tags:["victory_dance","victory_dance.horse"],SaddleItem:{id:"minecraft:saddle",Count:1b,components:{"minecraft:hide_tooltip": {},"minecraft:enchantments":{levels:{"minecraft:binding_curse":1},show_in_tooltip:false},"minecraft:enchantment_glint_override":false}},Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Tame:1b,attributes:[{id:"minecraft:jump_strength",base:1.0},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3375}]}
ride @s dismount
ride @s mount @n[tag=victory_dance.horse]

# randomize
execute if score .randomize_horse dummy matches 1 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:0}
execute if score .randomize_horse dummy matches 2 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:256}
execute if score .randomize_horse dummy matches 3 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:512}
execute if score .randomize_horse dummy matches 4 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:768}
execute if score .randomize_horse dummy matches 5 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:1024}
execute if score .randomize_horse dummy matches 6 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:1}
execute if score .randomize_horse dummy matches 7 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:257}
execute if score .randomize_horse dummy matches 8 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:513}
execute if score .randomize_horse dummy matches 9 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:769}
execute if score .randomize_horse dummy matches 10 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:1025}
execute if score .randomize_horse dummy matches 11 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:2}
execute if score .randomize_horse dummy matches 12 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:258}
execute if score .randomize_horse dummy matches 13 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:514}
execute if score .randomize_horse dummy matches 14 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:770}
execute if score .randomize_horse dummy matches 15 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:1026}
execute if score .randomize_horse dummy matches 16 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:3}
execute if score .randomize_horse dummy matches 17 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:259}
execute if score .randomize_horse dummy matches 18 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:515}
execute if score .randomize_horse dummy matches 19 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:771}
execute if score .randomize_horse dummy matches 20 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:1027}
execute if score .randomize_horse dummy matches 21 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:4}
execute if score .randomize_horse dummy matches 22 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:260}
execute if score .randomize_horse dummy matches 23 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:516}
execute if score .randomize_horse dummy matches 24 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:772}
execute if score .randomize_horse dummy matches 25 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:1028}
execute if score .randomize_horse dummy matches 26 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:5}
execute if score .randomize_horse dummy matches 27 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:261}
execute if score .randomize_horse dummy matches 28 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:517}
execute if score .randomize_horse dummy matches 29 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:773}
execute if score .randomize_horse dummy matches 30 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:1029}
execute if score .randomize_horse dummy matches 31 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:6}
execute if score .randomize_horse dummy matches 32 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:262}
execute if score .randomize_horse dummy matches 33 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:518}
execute if score .randomize_horse dummy matches 34 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:774}
execute if score .randomize_horse dummy matches 35 run data merge entity @n[tag=victory_dance.horse_new] {Tags:["victory_dance","victory_dance.horse"],Variant:1030}
