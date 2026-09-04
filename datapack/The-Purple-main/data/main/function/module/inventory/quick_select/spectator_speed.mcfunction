# reset item
item replace entity @s player.cursor from entity @s inventory.16
loot replace entity @s inventory.16 loot main:item/quick_select/spectator_speed

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/spectator_ability/speed/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
