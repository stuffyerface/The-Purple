# reset item
item replace entity @s player.cursor from entity @s inventory.19
item replace entity @s inventory.19 with player_head[max_stack_size=1,custom_name={"italic":false, "color":"green","translate":"item.purple.source_ability","fallback":"Infected Ability: %s","with":[{"color":"white","translate":"item.purple.source_ability.clone","fallback":"Clone Ally"}]},lore=[{"translate":"setting.purple.button.source_ability.clone.desc.1","fallback":"Create a clone","color":"gray","italic":false},{"translate":"setting.purple.button.source_ability.clone.desc.2","fallback":"of yourself","color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],custom_data={id:QUICK_SELECT_1.6},!equippable]
item replace entity @s inventory.19 from entity @s inventory.19 main:fill_player_head

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/source_ability/clone/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
