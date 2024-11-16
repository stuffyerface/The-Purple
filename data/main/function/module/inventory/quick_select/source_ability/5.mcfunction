# reset item
item replace entity @s player.cursor from entity @s inventory.10
item replace entity @s inventory.10 with echo_shard[max_stack_size=1,item_name='{"color":"green","translate":"item.purple.source_ability","fallback":"Infected Ability: %s","with":[{"color":"white","translate":"item.purple.source_ability.reach","fallback":"Long Arms"}]}',lore=['{"translate":"setting.purple.button.source_ability.reach.desc.1","fallback":"Doubles your reach","color":"gray","italic":false}','{"translate":"setting.purple.button.source_ability.reach.desc.2","fallback":"for %s seconds","with":["10"],"color":"gray","italic":false}','""','{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}'],hide_additional_tooltip={},custom_data={id:QUICK_SELECT_1.5}]

# run function
function main:lobby/settings/personal/source_ability/reach/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
