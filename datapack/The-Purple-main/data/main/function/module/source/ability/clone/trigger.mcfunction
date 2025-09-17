scoreboard players operation @s source_ability_timer = .ability_clone settings
function main:message/source/clone

# summon clone
summon zombie ~ ~ ~ {Tags:["new_clone","clone","clone_entity"],Silent:1b,DeathTime:20,DeathLootTable:'',PersistenceRequired:1b,CanPickUpLoot:0b,Health:100f,CanBreakDoors:0b,HandDropChances:[0.0F,0.0F],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],active_effects:[{duration: -1, show_icon: 0b, amplifier: -1b, id: "minecraft:invisibility", show_particles: 0b}],attributes:[{id:"minecraft:attack_damage",base:1},{id:"minecraft:attack_speed",base:1024},{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:follow_range",base:50},{id:"minecraft:jump_strength",base:0.4},{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:1.0},{id:"minecraft:step_height",base:2},{id:"minecraft:movement_efficiency",base:1},{id:"minecraft:water_movement_efficiency",base:1},{id:"minecraft:spawn_reinforcements",base:0}]}
summon mannequin ~ ~ ~ {Tags:["new_clone","new_clone_mannequin","clone_mannequin","clone_entity"], CustomName:{translate:'entity.purple.unknown_player', fallback:"Unknown Player", color:dark_purple}, CustomNameVisible:true, description:{translate:'entity.purple.unnamed_clone', fallback:'Clone', color:gray, italic:true}, immovable:true}

# sync clone data
scoreboard players add .total clone_id 1
scoreboard players operation @e[tag=new_clone] id = @s id
scoreboard players operation @e[tag=new_clone] color = @s color
scoreboard players operation @e[tag=new_clone] clone_id = .total clone_id
execute store result storage main:dummy ability.clone.id int 1 run scoreboard players get @s id
function main:module/source/ability/clone/join_team_macro with storage main:dummy ability.clone
function main:module/source/ability/clone/set_name

# clean up
tag @e[tag=new_clone] remove new_clone
tag @e[tag=new_clone_mannequin] remove new_clone_mannequin
