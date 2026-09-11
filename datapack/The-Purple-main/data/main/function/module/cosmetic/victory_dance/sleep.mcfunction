# set sleeper
execute align xyz positioned ~0.5 ~0.7 ~1.025 run summon minecraft:mannequin ~ ~ ~ {Rotation:[-90,0],NoGravity:true,Silent:true,Invulnerable:true,CustomNameVisible:false,AbsorptionAmount:1024f,Health:1024f,pose:"sleeping",immovable:true,hide_description:true,Tags:["victory_dance","victory_dance.sleep.new"]}
data modify entity @n[tag=victory_dance.sleep.new] profile.id set from entity @s UUID
tag @n[tag=victory_dance.sleep.new] remove victory_dance.sleep.new

# set bed
execute align xyz positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["victory_dance.sleep","victory_dance"]}
execute align xyz positioned ~ ~ ~00 if block ~ ~ ~ #minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["victory_dance.sleep","victory_dance"]}
execute if score @s color matches 0 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:white_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 0 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:white_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 1 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:orange_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 1 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:orange_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 2 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:magenta_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 2 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:magenta_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 3 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:light_blue_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 3 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:light_blue_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 4 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:yellow_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 4 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:yellow_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 5 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:lime_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 5 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:lime_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 6 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:pink_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 6 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:pink_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 7 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:gray_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 7 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:gray_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 8 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 8 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 9 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 9 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:cyan_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 10 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:purple_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 10 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:purple_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 11 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:blue_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 11 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:blue_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 12 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:brown_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 12 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:brown_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 13 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:green_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 13 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:green_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 14 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:red_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 14 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:red_bed[part=foot] replace #minecraft:air strict
execute if score @s color matches 15 align xyz positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~ ~ minecraft:black_bed[part=head] replace #minecraft:air strict
execute if score @s color matches 15 align xyz positioned ~ ~ ~00 run fill ~ ~ ~ ~ ~ ~ minecraft:black_bed[part=foot] replace #minecraft:air strict

# set player
gamemode spectator @s
playsound minecraft:entity.fox.sleep player @a[tag=player,distance=..100] ~ ~ ~ 100 0
execute align xyz at @n[tag=victory_dance.sleep] positioned ^-4 ^4 ^-4 run tp @s ~ ~ ~ facing entity @n[tag=victory_dance.sleep]
