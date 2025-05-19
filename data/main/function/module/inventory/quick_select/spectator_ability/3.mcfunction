# reset item
item replace entity @s player.cursor from entity @s inventory.25
item replace entity @s inventory.25 with ender_eye[max_stack_size=1,item_name={"color":"green","translate":"item.purple.spectator_ability","fallback":"Spectator Ability: %s","with":[{"color":"white","translate":"item.purple.spectator_ability.teleport","fallback":"Random Teleport"}]},lore=[{"translate":"setting.purple.button.spectator_ability.teleport.desc.1","fallback":"Teleport a random player to","color":"gray","italic":false},{"translate":"setting.purple.button.spectator_ability.teleport.desc.2","fallback":"the player closest to you","color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],custom_data={id:QUICK_SELECT_2.3}]

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/spectator_ability/teleport/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
