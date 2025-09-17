# setup/clock
tag @s add animation.grow
scoreboard players add @e[tag=animation.grow] animation.contributor_display 1

# animation
execute as @e[tag=animation.grow] if score @s animation.contributor_display matches 5 at @s run data merge entity @s {transformation: [-4f,0f,0f,0f,0f,4f,0f,1.5f,0f,0f,-4f,0f,0f,0f,0f,1f], start_interpolation:0, interpolation_duration:12}
execute as @e[tag=animation.grow] if score @s animation.contributor_display matches 5 at @s run playsound minecraft:entity.puffer_fish.blow_up block @a[distance=..20] ~ ~ ~ 1 0.5
execute as @e[tag=animation.grow] if score @s animation.contributor_display matches 90 at @s run playsound minecraft:entity.puffer_fish.blow_out block @a[distance=..20] ~ ~ ~ 1 0.5
execute as @e[tag=animation.grow] if score @s animation.contributor_display matches 90 at @s run data merge entity @s {transformation: [-1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,-1f,0f,0f,0f,0f,1f], start_interpolation:0, interpolation_duration:5}

# repeat/end
execute as @e[tag=animation.grow] unless score @s animation.contributor_display matches 100.. run schedule function main:module/cosmetic/animation/contributor_display/grow 1t
execute as @e[tag=animation.grow,tag=stuffy] if score @s animation.contributor_display matches 100.. run function c:build/contributor_display/stuffy
execute as @e[tag=animation.grow,tag=nightlibra] if score @s animation.contributor_display matches 100.. run function c:build/contributor_display/nightlibra
