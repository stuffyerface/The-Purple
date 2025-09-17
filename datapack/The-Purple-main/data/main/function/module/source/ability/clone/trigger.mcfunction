scoreboard players operation @s source_ability_timer = .ability_clone settings
function main:message/source/clone

# summon clone
summon zombie ~ ~ ~ {CustomName:{"translate":"entity.purple.unnamed_clone","fallback":"Clone"},Silent:1b,CustomNameVisible:1b,DeathTime:19,DeathLootTable:"",PersistenceRequired:1b,CanPickUpLoot:0b,Health:100f,CanBreakDoors:0b,Tags:["new_clone","clone"],equipment:{head:{id:"minecraft:player_head",count:1},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":11141290}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":11141290}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":11141290}},mainhand:{id:"minecraft:popped_chorus_fruit",count:1}},attributes:[{id:"minecraft:attack_damage",base:1},{id:"minecraft:attack_speed",base:1024},{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:follow_range",base:50},{id:"minecraft:jump_strength",base:0.4},{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:0.9},{id:"minecraft:step_height",base:2},{id:"minecraft:movement_efficiency",base:1},{id:"minecraft:water_movement_efficiency",base:1},{id:"minecraft:spawn_reinforcements",base:0}]}

# sync clone data
item replace entity @e[tag=new_clone] armor.head from entity @n[tag=new_clone] armor.head main:fill_player_head
execute as @n[tag=new_clone] at @s run function main:module/source/ability/clone/set_name
execute store result storage main:dummy ability.clone.id int 1 run scoreboard players get @s id
function main:module/source/ability/clone/join_team_macro with storage main:dummy ability.clone
scoreboard players operation @e[tag=new_clone] id = @s id
tag @e[tag=new_clone] remove new_clone
