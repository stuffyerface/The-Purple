scoreboard players set @s actionbar 30
title @s actionbar {"translate":"block.purple.shield_generator","fallback":"Shield Generator"}

execute unless entity @s[tag=vip] run playsound minecraft:block.vault.close_shutter block @s ~ ~ ~ 1 1.8
execute unless entity @s[tag=vip] run return run advancement revoke @s only main:triggers/lobby/beacon_color

playsound minecraft:block.beacon.power_select block @s ~ ~ ~ 0.8 1.5
execute if entity @s[advancements={main:triggers/lobby/beacon_color={rc=true}}] run return run function main:module/miscellaneous/beacon/reverse
advancement revoke @s only main:triggers/lobby/beacon_color

execute positioned -15 13 18 if block ~ ~ ~ minecraft:black_stained_glass_pane run return run setblock ~ ~ ~ minecraft:white_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:white_stained_glass_pane run return run setblock ~ ~ ~ minecraft:orange_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:orange_stained_glass_pane run return run setblock ~ ~ ~ minecraft:magenta_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:magenta_stained_glass_pane run return run setblock ~ ~ ~ minecraft:light_blue_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run return run setblock ~ ~ ~ minecraft:yellow_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:yellow_stained_glass_pane run return run setblock ~ ~ ~ minecraft:lime_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:lime_stained_glass_pane run return run setblock ~ ~ ~ minecraft:pink_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:pink_stained_glass_pane run return run setblock ~ ~ ~ minecraft:gray_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:gray_stained_glass_pane run return run setblock ~ ~ ~ minecraft:light_gray_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:light_gray_stained_glass_pane run return run setblock ~ ~ ~ minecraft:cyan_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:cyan_stained_glass_pane run return run setblock ~ ~ ~ minecraft:purple_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:purple_stained_glass_pane run return run setblock ~ ~ ~ minecraft:blue_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:blue_stained_glass_pane run return run setblock ~ ~ ~ minecraft:brown_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:brown_stained_glass_pane run return run setblock ~ ~ ~ minecraft:green_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:green_stained_glass_pane run return run setblock ~ ~ ~ minecraft:red_stained_glass_pane
execute positioned -15 13 18 if block ~ ~ ~ minecraft:red_stained_glass_pane run return run setblock ~ ~ ~ minecraft:black_stained_glass_pane
