execute store result score .randomize_horse dummy run random value 1..42

# summon
execute if score .randomize_horse dummy matches 1..35 run summon horse ~ ~ ~ {Tags:["victory_dance","victory_dance.horse","victory_dance.horse_new"],drop_chances:{saddle:0.0},Invulnerable:1b,DeathLootTable:"",PersistenceRequired:1b,CanPickUpLoot:0b,Tame:1b,attributes:[{id:"minecraft:jump_strength",base:1.0},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3375}]}
execute if score .randomize_horse dummy matches 36..40 run summon donkey ~ ~ ~ {Tags:["victory_dance","victory_dance.horse"],ChestedHorse:1b,drop_chances:{saddle:0.0},Invulnerable:1b,DeathLootTable:"",PersistenceRequired:1b,CanPickUpLoot:0b,Tame:1b,attributes:[{id:"minecraft:jump_strength",base:1.0},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3375}]}
execute if score .randomize_horse dummy matches 41 run summon zombie_horse ~ ~ ~ {Tags:["victory_dance","victory_dance.horse"],drop_chances:{saddle:0.0},Invulnerable:1b,DeathLootTable:"",PersistenceRequired:1b,CanPickUpLoot:0b,Tame:1b,attributes:[{id:"minecraft:jump_strength",base:1.0},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3375}]}
execute if score .randomize_horse dummy matches 42 run summon skeleton_horse ~ ~ ~ {Tags:["victory_dance","victory_dance.horse"],drop_chances:{saddle:0.0},Invulnerable:1b,DeathLootTable:"",PersistenceRequired:1b,CanPickUpLoot:0b,Tame:1b,attributes:[{id:"minecraft:jump_strength",base:1.0},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3375}]}
execute if score .randomize_horse dummy matches 36..40 run loot replace entity @n[tag=victory_dance.horse] horse.7 loot main:item/edible_horse
loot replace entity @n[tag=victory_dance.horse] saddle loot main:item/saddle
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
