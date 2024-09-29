tag @s add id.marker.offline
execute unless score .game gameData matches 0.. run return fail

# summon logout zombie
summon zombie ~ ~ ~ {Tags:["disconnect.zombie.new","disconnect.zombie"],CustomName:'{"color":"gray","text":"Unknown Player"}',NoGravity:1b,Silent:1b,CustomNameVisible:1b,Health:1000.0f,DeathLootTable:"minecraft:entities/giant",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:0b,CanBreakDoors:0b,Attributes:[{Name:generic.jump_strength,Base:0},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.max_health,Base:1000},{Name:generic.movement_speed,Base:0}]}

# copy player's info from marker
scoreboard players operation @e[tag=disconnect.zombie.new] id = @s id
data modify entity @e[tag=disconnect.zombie.new,limit=1] CustomName set from entity @s CustomName
data modify entity @e[tag=disconnect.zombie.new,limit=1] Rotation set from entity @s Rotation
execute if entity @s[tag=source] as @e[tag=disconnect.zombie.new] run function c:item/source
execute if entity @s[tag=source] as @e[tag=disconnect.zombie.new] run tag @s add source
execute if entity @s[tag=alive] as @e[tag=disconnect.zombie.new] run tag @s add alive

# clean up
tag @e[tag=disconnect.zombie.new] remove disconnect.zombie.new
