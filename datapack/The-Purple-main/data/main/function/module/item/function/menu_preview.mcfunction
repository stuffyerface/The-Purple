advancement revoke @s only main:triggers/items/menu_preview
function main:module/miscellaneous/no_consume

# function
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2
scoreboard players set @s actionbar 50
title @s actionbar {"translate":"message.purple.ability.how_to_change","fallback":"Open your inventory to change!","color":"green"}
