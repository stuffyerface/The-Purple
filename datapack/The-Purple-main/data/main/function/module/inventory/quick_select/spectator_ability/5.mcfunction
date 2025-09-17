# reset item
item replace entity @s player.cursor from entity @s inventory.17
item replace entity @s inventory.17 with clock[max_stack_size=1,item_name={"color":"green","translate":"item.purple.spectator_ability","fallback":"Spectator Ability: %s","with":[{"color":"white","translate":"item.purple.spectator_ability.time","fallback":"Reduce Timer"}]},lore=[{"translate":"setting.purple.button.spectator_ability.time.desc","fallback":"Cut the remaining time in half","color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],custom_data={id:QUICK_SELECT_2.5}]

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/spectator_ability/time/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
