# reset item
item replace entity @s player.cursor from entity @s inventory.1
loot replace entity @s inventory.1 loot main:item/quick_select/source_corruption

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/source_ability/corruption/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
