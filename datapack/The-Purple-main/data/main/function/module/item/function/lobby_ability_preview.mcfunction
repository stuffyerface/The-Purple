advancement revoke @s only main:triggers/items/lobby_ability_preview

# usage cooldown
execute if entity @s[scores={item.lobby_ability_preview=0..}] run return fail
scoreboard objectives add item.lobby_ability_preview dummy
scoreboard players add @s item.lobby_ability_preview 20

# function
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2
scoreboard players set @s actionbar 50
title @s actionbar {"translate":"message.purple.ability.how_to_change_ability","fallback":"Open your inventory to change your ability!","color":"green"}
