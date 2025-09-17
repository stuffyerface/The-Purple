advancement revoke @s only main:triggers/items/antidote
execute if entity @s[tag=corrupted] run return fail
execute if entity @s[tag=dying] at @s run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0
execute if entity @s[tag=dying] run scoreboard players set @s actionbar 30
execute if entity @s[tag=dying] run return run title @s actionbar {"translate":"message.purple.item.antidote.dead","fallback":"You already died!","color":"red"}

execute if entity @s run function main:message/item/antidote
execute if entity @s run tag @s remove source
execute if entity @s run tag @s remove infected
execute if entity @s run clear @s minecraft:popped_chorus_fruit[minecraft:custom_data={id:"THE_PURPLE"}]
execute if entity @s run effect clear @s speed
execute if entity @s run function main:id/team/set_color
execute if entity @s run function main:module/disconnect/sync/marker
execute if entity @s run function main:module/item/function/reset
execute if entity @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 0
execute if entity @s run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 1 1.5
execute if entity @s run tag @s add has_used_healing_items
execute if entity @s run tag @s add remove_my_glass_bottle
execute if entity @s run scoreboard players set .corrupted data 0
execute if entity @s as @a[tag=source] run scoreboard players add .corrupted data 1
execute if entity @s run scoreboard players add @s stat.item.antidote 1

execute if entity @s run return run schedule function main:module/item/function/antidote 10t
clear @a[tag=remove_my_glass_bottle] glass_bottle
tag @a[tag=remove_my_glass_bottle] remove remove_my_glass_bottle
