playsound minecraft:entity.generic.explode master @a[distance=..100] ~ ~ ~ 1 1
particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 0.05 1000 force
execute if entity @e[type=area_effect_cloud] run kill @s
