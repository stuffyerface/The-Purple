# reset item
item replace entity @s player.cursor from entity @s inventory.9
item replace entity @s inventory.9 with glass[max_stack_size=1,item_name={"color":"green","translate":"item.purple.source_ability","fallback":"Infected Ability: %s","with":[{"color":"white","translate":"item.purple.source_ability.invisible","fallback":"Invisibility"}]},lore=[{"translate":"setting.purple.button.source_ability.invisible.desc.1","fallback":"Become Invisible","color":"gray","italic":false},{"translate":"setting.purple.button.source_ability.invisible.desc.2","fallback":"for %s seconds","with":["20"],"color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],custom_data={id:QUICK_SELECT_1.2}]

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/source_ability/invisible/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
