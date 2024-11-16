scoreboard players set .alive data 0
execute as @a[tag=alive] run scoreboard players add .alive data 1

execute if score .alive data matches ..1 run tellraw @a[tag=debug] ["[Console] ",{"text":"There is only one player alive!","color":"red"}]
execute if score .alive data matches ..1 run tag @r[tag=alive,tag=!source] add source
execute if score .alive data matches 2.. run tag @r[tag=alive,tag=!source] add source
execute if score .alive data matches 5.. run tag @r[tag=alive,tag=!source] add source
execute if score .alive data matches 7.. run tag @r[tag=alive,tag=!source] add source
execute if score .alive data matches 9.. run tag @r[tag=alive,tag=!source] add source
execute if score .alive data matches 12.. run tag @r[tag=alive,tag=!source] add source
execute if score .alive data matches 16.. run tag @r[tag=alive,tag=!source] add source
execute if score .alive data matches 20.. run tag @r[tag=alive,tag=!source] add source
execute if score .alive data matches 24.. run tag @r[tag=alive,tag=!source] add source

execute as @a[tag=source] run tag @s add infected
execute as @a[tag=source] run effect give @s speed infinite 1 true
execute as @a[tag=source] at @s run function c:item/source
execute as @a[tag=source] run function main:message/tagged/infected_by_round
execute as @a[tag=source] at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute as @a[tag=source] run advancement grant @s only main:advancement/1_gameplay/infectious_disease
execute as @a[tag=alive] run function main:id/team/set_color
execute as @a[tag=alive] run function main:module/disconnect/sync/marker

scoreboard players set .corrupted data 0
execute as @a[tag=source] run scoreboard players add .corrupted data 1
scoreboard players set .spectating data 0
execute as @a[tag=spectator] run scoreboard players add .spectating data 1
