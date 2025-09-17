advancement revoke @s only main:triggers/lobby/contributor_display_more
execute unless score .contributor_display data matches 0.. run scoreboard players set .contributor_display data 0
execute if score .contributor_display_cooldown dummy matches 1.. run return fail
scoreboard players set .contributor_display_cooldown dummy 15

# if closed
execute if score .contributor_display data matches 0 run function c:build/contributor_display/credit/base
execute if score .contributor_display data matches 0 run playsound minecraft:block.vault.open_shutter block @s ~ ~ ~ 1 1.8
execute if score .contributor_display data matches 0 run return run scoreboard players set .contributor_display data 3
playsound minecraft:item.axe.scrape block @s ~ ~ ~ 1 2

# retag
execute as @e[tag=lobby.contributor_display,tag=contributor,tag=top] run tag @s add kill_this_display
execute as @e[tag=lobby.contributor_display,tag=contributor,tag=top] run tag @s remove top
execute as @e[tag=lobby.contributor_display,tag=contributor,tag=middle] run tag @s add top
execute as @e[tag=lobby.contributor_display,tag=contributor,tag=middle] run tag @s remove middle
execute as @e[tag=lobby.contributor_display,tag=contributor,tag=bottom] run tag @s add middle
execute as @e[tag=lobby.contributor_display,tag=contributor,tag=bottom] run tag @s remove bottom
execute positioned -40 22.15 -45 run function c:build/contributor_display/credit/select_line

# cycle
execute as @e[type=!interaction,tag=!donttpme,tag=lobby.contributor_display,tag=contributor] at @s run tp @s ~ ~0.4 ~
schedule function main:lobby/furniture/contributor_display/credit_display/schedule_transform 5t replace
schedule function main:lobby/furniture/contributor_display/credit_display/schedule_kill 15t replace
