scoreboard players operation @s spectator_ability_timer = .ability_item settings
function main:message/spectator/item

execute positioned ~ ~0 ~ run summon minecraft:armor_stand ~ ~ ~ {Tags:["item.display.gravity"],Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,DisabledSlots:4144959}
execute positioned ~ ~1 ~ run function main:module/item/system/summon
execute positioned ~ ~1 ~ run ride @n[type=item_display,tag=item.display,tag=!dontkillme] mount @n[tag=item.display.gravity]
