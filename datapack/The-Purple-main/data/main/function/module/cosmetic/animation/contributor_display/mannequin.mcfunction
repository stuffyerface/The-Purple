# setup/clock
tag @s add animation.mannequin
scoreboard players add @e[tag=animation.mannequin] animation.contributor_display 1

# animation
execute as @e[tag=animation.mannequin] if score @s animation.contributor_display matches 5 at @s run summon minecraft:mannequin ~ ~-0.7 ~ {Tags:['new','animation.mannequin_'], CustomName:{text:''}, CustomNameVisible:false, hide_description:true, NoGravity:true, immovable:true, Invulnerable:true, attributes:[{id:'minecraft:scale', base:0.15}]}
execute as @e[tag=animation.mannequin] if score @s animation.contributor_display matches 5 at @s run data modify entity @n[type=minecraft:mannequin,tag=new] CustomName set from entity @s Passengers[0].text
execute as @e[tag=animation.mannequin] if score @s animation.contributor_display matches 5 at @s run data modify entity @n[type=minecraft:mannequin,tag=new] profile.id set from entity @s item.components.'minecraft:profile'.id
execute as @e[tag=animation.mannequin] if score @s animation.contributor_display matches 5 at @s run tag @n[type=minecraft:mannequin,tag=new] remove new
execute as @e[tag=animation.mannequin] if score @s animation.contributor_display matches 45 on passengers run data merge entity @s {view_range:0.0f}
execute as @e[tag=animation.mannequin] if score @s animation.contributor_display matches 45 run data merge entity @s {view_range:0.0f}
execute as @e[type=minecraft:mannequin,tag=animation.mannequin_] at @s run function main:module/cosmetic/animation/contributor_display/mannequin_

# repeat/end
execute as @e[tag=animation.mannequin] unless score @s animation.contributor_display matches 200.. run schedule function main:module/cosmetic/animation/contributor_display/mannequin 1t replace
execute as @e[tag=animation.mannequin,tag=stuffy] if score @s animation.contributor_display matches 200.. run function c:build/contributor_display/stuffy
execute as @e[tag=animation.mannequin,tag=nightlibra] if score @s animation.contributor_display matches 200.. run function c:build/contributor_display/nightlibra
