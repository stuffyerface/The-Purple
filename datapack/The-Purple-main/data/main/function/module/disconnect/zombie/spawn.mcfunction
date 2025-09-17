tag @s add id.marker.offline
execute unless score .game data matches 0.. run return fail

# summon logout zombie
summon minecraft:mannequin ~ ~ ~ {Tags:["disconnect.zombie.new","disconnect.zombie"],CustomName:{translate:'entity.purple.unknown_player', fallback:'Unknown Player', color:gray},description:{translate:'entity.purple.logged_out', fallback:'Logged Out', color:gray, italic:true},immovable:true,NoGravity:1b,CustomNameVisible:1b,Health:1200.0f,DeathLootTable:'',HandDropChances:[0.0F,0.0F],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],attributes:[{id:"minecraft:jump_strength",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:1000},{id:"minecraft:movement_speed",base:0},{id:"minecraft:explosion_knockback_resistance",base:1}]}

# copy player's info from marker
scoreboard players operation @e[tag=disconnect.zombie.new] id = @s id
scoreboard players operation @e[tag=disconnect.zombie.new] death_effect = @s death_effect
scoreboard players operation @e[tag=disconnect.zombie.new] color = @s color
data modify entity @e[tag=disconnect.zombie.new,limit=1] CustomName set from entity @s CustomName
data modify entity @e[tag=disconnect.zombie.new,limit=1] CustomName.color set value "green"
data modify entity @e[tag=disconnect.zombie.new,limit=1] profile.id set from entity @s CustomName.hover_event.uuid
data modify entity @e[tag=disconnect.zombie.new,limit=1] Rotation set from entity @s Rotation
execute if entity @s[tag=source] as @e[tag=disconnect.zombie.new] run function c:item/source
execute if entity @s[tag=source] as @e[tag=disconnect.zombie.new] run tag @s add source
execute if entity @s[tag=source] as @e[tag=disconnect.zombie.new] run data modify entity @s CustomName.color set value "dark_purple"
execute if entity @s[tag=infected] as @e[tag=disconnect.zombie.new] run tag @s add infected
execute if entity @s[tag=alive] as @e[tag=disconnect.zombie.new] run tag @s add alive

# clean up
tag @e[tag=disconnect.zombie.new] remove disconnect.zombie.new
