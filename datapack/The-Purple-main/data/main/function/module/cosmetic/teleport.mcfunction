execute if score @s teleport_lock matches 0 run title @s reset
execute if score @s teleport_lock matches 0 run title @s times 10 50 10
execute if score @s teleport_lock matches 0 run title @s title {"text":"0","font":"purple:logo"}
execute if score @s teleport_lock matches 0 run particle portal ~ ~1 ~ 0 0 0 1 100 normal
execute if score @s teleport_lock matches 0 run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 1.8
execute if score @s teleport_lock matches 0 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:2f,Duration:10,WaitTime:0,potion_contents:{custom_color:11141290,custom_effects:[{id:"minecraft:darkness",amplifier:0,duration:70,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:resistance",amplifier:255,duration:40,show_particles:0b,show_icon:0b,ambient:1b}]}}
execute if score @s teleport_lock matches 0 run summon armor_stand ~ ~ ~ {Tags:["teleport_lock"],Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s teleport_lock matches 0..50 if score .game data matches 0.. run kill @n[type=ender_pearl,distance=..2.5]
execute if score @s teleport_lock matches 0..10 as @a[distance=..5,nbt={active_effects:[{id:"minecraft:darkness"}]}] unless score @s teleport_lock matches 0.. run effect clear @s darkness
execute if score @s teleport_lock matches 0..48 at @s at @n[tag=teleport_lock] run tp @s ~ ~ ~
execute if score @s teleport_lock matches 48 run kill @n[tag=teleport_lock]
execute if score @s teleport_lock matches 48 run effect give @s blindness 10 0 true
execute if score @s teleport_lock matches 50 run function c:tp/current_location
execute if score @s teleport_lock matches 50 if score .game data matches 0.. run clear @s[tag=ready]
execute if score @s teleport_lock matches 51 run particle reverse_portal ~ ~1 ~ 0 0 0 2 100 normal
execute if score @s teleport_lock matches 51 run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.2 2
execute if score @s teleport_lock matches 51 run effect clear @s blindness
execute if score @s teleport_lock matches ..50 run return run scoreboard players add @s teleport_lock 1
scoreboard players reset @s teleport_lock
