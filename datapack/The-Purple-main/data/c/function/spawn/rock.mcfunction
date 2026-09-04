# new rock :D
summon skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathTime:17,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["block.rock","block.rock.base","block.rock.new"],Passengers:[{id:"minecraft:interaction",width:0.5f,height:-0.48f,response:1b,Tags:["block.rock"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,Tags:["block.rock"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.5f,0f,0f,1f,0f,0f,0f,0f,1f]}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:follow_range",base:0},{id:"minecraft:jump_strength",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:movement_speed",base:0.05},{id:"minecraft:scale",base:0.25},{id:"minecraft:step_height",base:1},{id:"minecraft:burning_time",base:0},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:movement_efficiency",base:1}]}

# randomize rock
execute as @n[tag=block.rock.new] on passengers on passengers run loot replace entity @s contents loot main:game/rock

# teleport rock (unless run manually)
execute unless entity @s unless score .initialize_rocks dummy matches 1 as @e[tag=block.rock.new] run spreadplayers -10 10 40 40 true @s

# clean rock
tag @e[tag=block.rock.new] remove block.rock.new
return 1
