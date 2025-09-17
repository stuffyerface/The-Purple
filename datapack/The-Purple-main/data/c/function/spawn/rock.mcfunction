# new rock :D
summon skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathTime:17,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["block.rock","block.rock.base","block.rock.new"],Passengers:[{id:"minecraft:interaction",width:0.5f,height:-0.48f,response:1b,Tags:["block.rock"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,Tags:["block.rock"],transformation:[1f,0f,0f,0f,0f,1f,0f,0.5f,0f,0f,1f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1781572372,-659862843,-1732121873,-756041012],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjQxZjhiYTViNDZiZDY4MjVkYWNlNzA0MjgzZjFhMTZjZGY5OTI0ZTlkZTVjYmNlNzM1NDQ1YWZjNzZhNTZlIn19fQ=="}]},"minecraft:custom_data":{id:ROCK},"minecraft:damage_resistant":{types:"#minecraft:on_fire"},"minecraft:item_name":{"fallback":"Rock","translate":"item.purple.rock"},"minecraft:max_stack_size":99,"minecraft:rarity":"uncommon","minecraft:consumable":{consume_seconds:0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"minecraft:entity.witch.throw"}]},"minecraft:use_cooldown":{seconds:0.125,cooldown_group:"purple:rock"},"!minecraft:equippable":{}}}}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:follow_range",base:0},{id:"minecraft:jump_strength",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:movement_speed",base:0.05},{id:"minecraft:scale",base:0.25},{id:"minecraft:step_height",base:1},{id:"minecraft:burning_time",base:0},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:movement_efficiency",base:1}]}

# randomize rock
execute store result score .random_rock dummy run random value 1..20
execute if score .random_rock dummy matches 1 as @n[tag=block.rock.new] on passengers on passengers run data modify entity @s item set from storage main:item id.EDIBLE_ROCK
tellraw @a[tag=debug] ["[Console] Rock spawned with a value of ",{"score":{"name":".random_rock","objective":"dummy"}},"."]

# teleport rock (unless run manually)
execute unless entity @s unless score .initialize_rocks dummy matches 1 as @e[tag=block.rock.new] run spreadplayers -10 10 40 40 true @s

# clean rock
tag @e[tag=block.rock.new] remove block.rock.new
return 1
