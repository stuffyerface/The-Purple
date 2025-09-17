# reset item
item replace entity @s player.cursor from entity @s inventory.7
item replace entity @s inventory.7 with firework_rocket[max_stack_size=1,item_name={"color":"green","translate":"item.purple.spectator_ability","fallback":"Spectator Ability: %s","with":[{"color":"white","translate":"item.purple.spectator_ability.fireworks","fallback":"Fireworks"}]},lore=[{"translate":"setting.purple.button.spectator_ability.fireworks.desc.1","fallback":"Launch fireworks above","color":"gray","italic":false},{"translate":"setting.purple.button.spectator_ability.fireworks.desc.2","fallback":"the nearest player","color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],tooltip_display={hidden_components:["minecraft:fireworks"]},custom_data={id:QUICK_SELECT_2.1}]

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/spectator_ability/fireworks/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
