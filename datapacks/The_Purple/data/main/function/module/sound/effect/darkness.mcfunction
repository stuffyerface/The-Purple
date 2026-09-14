scoreboard players remove @s sound.darkness 10
execute if entity @a[tag=source,distance=..30] run scoreboard players remove @s sound.darkness 5
execute if entity @a[tag=source,distance=..20] run scoreboard players remove @s sound.darkness 5
execute if entity @a[tag=source,distance=..10] run scoreboard players remove @s sound.darkness 5

execute store result score .extra sound.darkness run random value 1..100
execute if score .extra sound.darkness matches ..1 as @a[scores={source_ability=3,source_ability_timer=1..}] at @s run playsound minecraft:entity.warden.sniff player @a[scores={sound.darkness=0..}] ~ ~ ~ 1 1.5

execute if score @s sound.darkness matches ..0 run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1 0.9
execute if score @s sound.darkness matches ..0 if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run scoreboard players set @s sound.darkness 400
