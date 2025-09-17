# reset item
item replace entity @s player.cursor from entity @s inventory.26
item replace entity @s inventory.26 with player_head[max_stack_size=1,item_name={"color":"green","translate":"item.purple.spectator_ability","fallback":"Spectator Ability: %s","with":[{"color":"white","translate":"item.purple.spectator_ability.item","fallback":"Item Box"}]},lore=[{"translate":"setting.purple.button.spectator_ability.item.desc.1","fallback":"Spawn a random item on the","color":"gray","italic":false},{"translate":"setting.purple.button.spectator_ability.item.desc.2","fallback":"ground in front of you","color":"gray","italic":false},"",{"translate":"item.purple.quick_select","fallback":"Click to select!","color":"yellow","italic":false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZkY2ZiNDAwOTc2YmY3M2VjMzJjMWI5OTYyYzgzMGZjM2Q3MDA2ZDc0OWY4ZjNkYTNiNmUwZmI4MjkwOWIyOCJ9fX0="}]},custom_data={id:QUICK_SELECT_2.6},!equippable]

# run function
execute if entity @s[tag=was_in_game] if score .game data matches 0.. run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
function main:lobby/settings/personal/spectator_ability/item/root
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1.5
