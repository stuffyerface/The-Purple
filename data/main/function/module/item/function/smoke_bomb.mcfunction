# ticks as long as the smoke bomb is alive
execute as @e[tag=clone,distance=..3] run effect give @s minecraft:slowness 2 2 true
execute if entity @s[tag=deployed] run return 0

# ticks once
playsound minecraft:entity.generic.explode player @a[distance=..100] ~ ~ ~ 1 1
particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 0.05 1000 force
data merge entity @s {Tags:["deployed"],Particle:{type:"campfire_cosy_smoke"},Age:0,Duration:100,DurationOnUse:0f,Radius:3f,RadiusPerTick:0f,RadiusOnUse:0f,ReapplicationDelay:0,NoGravity:1b,CustomName:"Deployed Smoke Bomb"}
