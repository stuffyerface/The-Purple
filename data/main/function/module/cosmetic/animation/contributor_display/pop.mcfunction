# setup/clock
tag @s add animation.pop
scoreboard players add @e[tag=animation.pop] animation.contributor_display 1

# animation
execute as @e[tag=animation.pop] if score @s animation.contributor_display matches 5 at @s run data merge entity @s {transformation: [-2f,0f,0f,0f,0f,2f,0f,0.25f,0f,0f,-2f,0f,0f,0f,0f,1f], start_interpolation:0, interpolation_duration:2}
execute as @e[tag=animation.pop] if score @s animation.contributor_display matches 7 at @s run data merge entity @s {transformation: [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f], start_interpolation:0, interpolation_duration:0}
execute as @e[tag=animation.pop] if score @s animation.contributor_display matches 7 at @s run playsound minecraft:block.sniffer_egg.plop block @a[distance=..20] ~ ~ ~ 1 2
execute as @e[tag=animation.pop] if score @s animation.contributor_display matches 7 at @s run particle block{block_state:"minecraft:player_head"} ~ ~ ~ 0 0 0 1 5 normal

# repeat/end
execute as @e[tag=animation.pop] unless score @s animation.contributor_display matches 25.. run schedule function main:module/cosmetic/animation/contributor_display/pop 1t
execute as @e[tag=animation.pop,tag=stuffy] if score @s animation.contributor_display matches 25.. run function c:build/contributor_display/stuffy
execute as @e[tag=animation.pop,tag=nightlibra] if score @s animation.contributor_display matches 25.. run function c:build/contributor_display/nightlibra
