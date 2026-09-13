advancement revoke @s only main:triggers/items/antidote

# return if invalid
execute if entity @s[tag=corrupted] run return fail
execute if entity @s[tag=dying] at @s run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0
execute if entity @s[tag=dying] run scoreboard players set @s actionbar 40
execute if entity @s[tag=dying] run return run title @s actionbar {"translate":"message.purple.item.antidote.dead","fallback":"You already died!","color":"red"}

# disinfect
execute if entity @s run tag @s add has_used_healing_items
execute if entity @s run scoreboard players add @s stat.item.antidote 1
execute if entity @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 0
execute if entity @s run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 1 1.5
execute if entity @s run function main:message/item/antidote
execute if entity @s run function main:module/item/function/reset
execute if entity @s run function main:game/tag/function/player_disinfect
