# reset item
item replace entity @s player.cursor from entity @s inventory.0
item replace entity @s inventory.0 with potion[max_stack_size=1,item_name={"color":"green","translate":"item.purple.source_ability","fallback":"Infected Ability: %s","with":[{"color":"white","translate":"item.purple.source_ability.speed","fallback":"Speed Burst"}]},custom_name={"color":"green","italic":false,"translate":"item.purple.source_ability","fallback":"Infected Ability: %s","with":[{"color":"white","translate":"item.purple.source_ability.speed","fallback":"Speed Burst"}]},lore=[{"translate":"setting.purple.button.source_ability.speed.desc.1","fallback":"Gain a burst of Speed IV","color":"gray","italic":false},{"translate":"setting.purple.button.source_ability.speed.desc.2","fallback":"for %s seconds","with":["5"],"color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],tooltip_display={hidden_components:["minecraft:potion_contents"]},potion_contents={custom_color:61183},!consumable,custom_data={id:QUICK_SELECT_1.1}]

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/source_ability/speed/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
