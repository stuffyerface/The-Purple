scoreboard players operation @s spectator_ability_timer = .ability_item settings
function main:message/spectator/item

function main:module/item/system/summon
execute as @n[type=interaction,tag=item.display] at @s if block ~ ~-1 ~ #minecraft:air run tag @s add floor_me
execute as @n[type=item_display,tag=item.display] at @s if block ~ ~-1 ~ #minecraft:air run tag @s add floor_me
execute as @e[tag=floor_me] at @s run function main:module/spectator/ability/item_floor
