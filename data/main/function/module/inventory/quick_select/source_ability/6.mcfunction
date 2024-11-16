# reset item
item replace entity @s player.cursor from entity @s inventory.19
item replace entity @s inventory.19 with stick[max_stack_size=1,item_name='{"color":"green","translate":"item.purple.source_ability","fallback":"Infected Ability: %s","with":[{"color":"white","translate":"item.purple.source_ability.?","fallback":"???"}]}',lore=['{"translate":"","fallback":"Coming Soon?","color":"gray","italic":false}','""','{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}'],item_model="minecraft:barrier",hide_additional_tooltip={},custom_data={id:QUICK_SELECT_1.6}]

# run function
playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
