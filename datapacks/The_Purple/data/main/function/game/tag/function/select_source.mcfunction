scoreboard players set .alive data 0
execute as @a[tag=alive] run scoreboard players add .alive data 1

execute if score .alive data matches ..1 run tellraw @a[tag=debug] ["[Console] ",{"text":"There is only one player alive!","color":"red"}]
execute if score .alive data matches ..1 run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source
execute if score .alive data matches 2.. run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source
execute if score .alive data matches 5.. run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source
execute if score .alive data matches 7.. run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source
execute if score .alive data matches 9.. run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source
execute if score .alive data matches 12.. run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source
execute if score .alive data matches 16.. run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source
execute if score .alive data matches 20.. run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source
execute if score .alive data matches 24.. run tag @r[tag=alive,tag=!new_source,tag=!was_source] add new_source

execute if score .alive data matches 1.. unless entity @a[tag=new_source] run tellraw @a[tag=debug] ["[Console] ",{text:"Couldn't find an eligible new source! Trying again...",color:'red'}]
execute if score .alive data matches 1.. unless entity @a[tag=new_source] run tag @r[tag=was_source] remove was_source
execute if score .alive data matches 1.. unless entity @a[tag=new_source] run return run function main:game/tag/function/select_source

execute as @a[tag=draconic_stage_2] run function main:module/item/function/draconic_essence
execute as @a[tag=draconic_stage_1] run function main:module/item/function/draconic_essence
execute as @a[tag=new_source] run function main:game/tag/function/player_infect
execute as @a[tag=new_source] run function main:message/tagged/infected_by_round
execute as @a[tag=new_source] run advancement grant @s only main:advancement/1_gameplay/infectious_disease
execute as @a[tag=new_source] run tag @s remove new_source
execute as @a[tag=was_source] run tag @s remove was_source
execute as @a[tag=source] run tag @s add was_source
execute as @a[tag=alive,tag=!source] run function main:id/team/set_color
execute as @a[tag=alive,tag=!source] run function main:module/disconnect/sync/marker

function main:module/music/loop/main_theme

execute store result score .corrupted data if entity @a[tag=source]
execute store result score .spectating data if entity @a[tag=spectator]
