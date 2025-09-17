# setup/clock
tag @s add animation.firework
scoreboard players add @e[tag=animation.firework] animation.contributor_display 1

# animation
execute as @e[tag=animation.firework] at @s run tp @s ~ ~0.5 ~
execute at @e[tag=animation.firework] run particle minecraft:firework ~ ~-0.5 ~ 0 0 0 0 1
execute as @e[tag=animation.firework] if score @s animation.contributor_display matches 1 at @s run playsound minecraft:entity.firework_rocket.launch block @a[distance=..20]
execute as @e[tag=animation.firework] if score @s animation.contributor_display matches 20 at @s run function main:module/cosmetic/random_firework
execute as @e[tag=animation.firework] if score @s animation.contributor_display matches 20 at @s run data merge entity @n[tag=random_firework] {LifeTime:0,Silent:1b}

# repeat/end
execute as @e[tag=animation.firework] unless score @s animation.contributor_display matches 25.. run schedule function main:module/cosmetic/animation/contributor_display/firework 1t
execute as @e[tag=animation.firework,tag=stuffy] if score @s animation.contributor_display matches 25.. run function c:build/contributor_display/stuffy
execute as @e[tag=animation.firework,tag=nightlibra] if score @s animation.contributor_display matches 25.. run function c:build/contributor_display/nightlibra
