# details
execute unless score .total_rainbow_sheep settings matches 0..500 run scoreboard players set .total_rainbow_sheep settings 250
execute if score .rainbow_sheep dummy >= .total_rainbow_sheep settings run return run scoreboard players reset .rainbow_sheep dummy
scoreboard players add .rainbow_sheep dummy 1

# summon 
summon tropical_fish ~ ~ ~ {Tags:["victory_dance","rainbow_sheep_randomize","rainbow_sheep"],Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",Team:"hide_nametag",PersistenceRequired:1b,CanPickUpLoot:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.gravity",base:0.05},{id:"minecraft:generic.scale",base:0.0625},{id:"minecraft:generic.step_height",base:0}],Variant:0,Passengers:[{id:"minecraft:sheep",Tags:["victory_dance","rainbow_sheep"],Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty",Team:"hide_nametag",PersistenceRequired:1b,CanPickUpLoot:0b,CustomName:'"jeb_"',attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute store result score .rainbow_sheep_randomize dummy run random value 1..6
execute if score .rainbow_sheep_randomize dummy matches 1 run data merge entity @n[tag=rainbow_sheep_randomize] {Tags:["victory_dance","rainbow_sheep"],attributes:[{id:"minecraft:generic.gravity",base:0.05}]}
execute if score .rainbow_sheep_randomize dummy matches 2 run data merge entity @n[tag=rainbow_sheep_randomize] {Tags:["victory_dance","rainbow_sheep"],attributes:[{id:"minecraft:generic.gravity",base:0.06}]}
execute if score .rainbow_sheep_randomize dummy matches 3 run data merge entity @n[tag=rainbow_sheep_randomize] {Tags:["victory_dance","rainbow_sheep"],attributes:[{id:"minecraft:generic.gravity",base:0.07}]}
execute if score .rainbow_sheep_randomize dummy matches 4 run data merge entity @n[tag=rainbow_sheep_randomize] {Tags:["victory_dance","rainbow_sheep"],attributes:[{id:"minecraft:generic.gravity",base:0.08}]}
execute if score .rainbow_sheep_randomize dummy matches 5 run data merge entity @n[tag=rainbow_sheep_randomize] {Tags:["victory_dance","rainbow_sheep"],attributes:[{id:"minecraft:generic.gravity",base:0.09}]}
execute if score .rainbow_sheep_randomize dummy matches 6 run data merge entity @n[tag=rainbow_sheep_randomize] {Tags:["victory_dance","rainbow_sheep"],attributes:[{id:"minecraft:generic.gravity",base:0.10}]}

# repeat
function main:module/cosmetic/victory_dance/rainbow_sheep
