# reset item
item replace entity @s player.cursor from entity @s inventory.8
item replace entity @s inventory.8 with slime_ball[max_stack_size=1,item_name={"color":"green","translate":"item.purple.spectator_ability","fallback":"Spectator Ability: %s","with":[{"color":"white","translate":"item.purple.spectator_ability.slime","fallback":"Slime Swarm"}]},lore=[{"translate":"setting.purple.button.spectator_ability.slime.desc.1","fallback":"Spawn multiple slimes on top","color":"gray","italic":false},{"translate":"setting.purple.button.spectator_ability.slime.desc.2","fallback":"of the nearest player","color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],custom_data={id:QUICK_SELECT_2.4}]

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/spectator_ability/slime/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
