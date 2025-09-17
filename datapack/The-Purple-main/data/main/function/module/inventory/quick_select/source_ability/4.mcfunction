# reset item
item replace entity @s player.cursor from entity @s inventory.1
item replace entity @s inventory.1 with chorus_plant[max_stack_size=1,item_name={"color":"green","translate":"item.purple.source_ability","fallback":"Infected Ability: %s","with":[{"color":"white","translate":"item.purple.source_ability.corruption","fallback":"Corrupt Growth"}]},lore=[{"translate":"setting.purple.button.source_ability.corruption.desc.1","fallback":"Spread corrupt blocks around","color":"gray","italic":false},{"translate":"setting.purple.button.source_ability.corruption.desc.2","fallback":"yourself and %s nearby","with":["2"],"color":"gray","italic":false},{"translate":"setting.purple.button.source_ability.corruption.desc.3","fallback":"players for %s seconds","with":["5"],"color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],custom_data={id:QUICK_SELECT_1.4}]

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/source_ability/corruption/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
