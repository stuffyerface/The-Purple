advancement revoke @s only main:triggers/items/menu_preview

# usage cooldown
execute if entity @s[scores={item.menu_preview=0..}] run return fail
scoreboard objectives add item.menu_preview dummy
scoreboard players add @s item.menu_preview 20

# function
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2
scoreboard players set @s actionbar 50
title @s actionbar {"translate":"message.purple.ability.how_to_change","fallback":"Open your inventory to change!","color":"green"}
