# reset item
item replace entity @s player.cursor from entity @s inventory.1
item replace entity @s inventory.1 with chorus_plant[max_stack_size=1,item_name='{"color":"green","translate":"item.purple.source_ability","fallback":"Infected Ability: %s","with":[{"color":"white","translate":"item.purple.source_ability.corruption","fallback":"Corrupt Growth"}]}',lore=['{"translate":"setting.purple.button.source_ability.corruption.desc.1","fallback":"Spread corrupt blocks around","color":"gray","italic":false}','{"translate":"setting.purple.button.source_ability.corruption.desc.2","fallback":"you for %s seconds","with":["2.5"],"color":"gray","italic":false}','""','{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}'],hide_additional_tooltip={},custom_data={id:QUICK_SELECT_1.4}]

# run function
function main:lobby/settings/personal/source_ability/corruption/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
