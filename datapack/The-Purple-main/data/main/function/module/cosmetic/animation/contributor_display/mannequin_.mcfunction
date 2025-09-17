# setup/clock
scoreboard players add @s animation.contributor_display 1

# animation
execute if score @s animation.contributor_display matches 1..40 store result entity @s attributes[{id:'minecraft:scale'}].base double 0.025 run scoreboard players get @s animation.contributor_display
execute if score @s animation.contributor_display matches 1..40 rotated as @p run tp @s ~ ~-0.01 ~ ~180 ~

# run away
execute if score @s animation.contributor_display matches 40 run tag @s add new_decoy
execute if score @s animation.contributor_display matches 40 run tag @s add decoy
execute if score @s animation.contributor_display matches 40 run data merge entity @s {CustomNameVisible:true, NoGravity:false, immovable:false}
execute if score @s animation.contributor_display matches 40 run summon villager ~ ~ ~ {Tags:["new_decoy", "decoy"], AbsorptionAmount:1024.0f, active_effects:[{duration:-1, show_icon:0b, amplifier:-1b, id:"minecraft:invisibility", show_particles:0b}], DeathTime:20, Health:1024.0f, Silent:1b, CanPickUpLoot:0b, VillagerData:{profession:"minecraft:nitwit", level:1, type:"minecraft:plains"}, attributes:[{id:"minecraft:scale", base:0.75d}, {id:"minecraft:movement_speed", base:0.7d}, {id:"minecraft:max_absorption", base:1024.0d}, {id:"minecraft:max_health", base:1024.0d}]}
execute if score @s animation.contributor_display matches 40 run rotate @n[type=villager,tag=new_decoy] ~ ~
execute if score @s animation.contributor_display matches 40 run scoreboard players add .decoy_total clone_id 1
execute if score @s animation.contributor_display matches 40 run scoreboard players operation @e[tag=new_decoy] clone_id = .decoy_total clone_id
execute if score @s animation.contributor_display matches 40 run tag @e[tag=new_decoy] remove new_decoy

# clean up
execute if score @s animation.contributor_display matches 195 run tp @s ~ -64 ~
execute if score @s animation.contributor_display matches 195 run kill @s
