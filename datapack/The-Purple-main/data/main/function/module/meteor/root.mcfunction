# return if not in use
execute unless score .game data matches 1..2 run return 0
execute unless score .map settings matches 2 run return 0

# ticking effects
execute as @e[tag=meteor] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.05 3 force
execute as @e[tag=meteor] at @s run playsound minecraft:entity.breeze.idle_air block @a[distance=..100] ~ ~ ~ 1.25 1.5
execute as @e[tag=meteor.impact_detection] at @s unless predicate main:flag/is_riding run function main:module/meteor/corrupt

# run once per second
scoreboard players add .meteor_tick dummy 1
execute unless score .meteor_tick dummy matches 20.. run return 0
scoreboard players set .meteor_tick dummy 0

# there is an x% chance for a meteor to spawn at a random preset location
execute store result score .meteor_spawn_chance dummy run random value 1..100
execute if score .meteor_spawn_chance dummy <= .meteor_spawn_chance settings if entity @e[tag=item_spawner.map_2] at @e[limit=1,sort=random,tag=meteor_spawner] run function main:module/meteor/summon
