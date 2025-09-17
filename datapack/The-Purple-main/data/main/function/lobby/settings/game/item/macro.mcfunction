$execute unless data storage main:item random.$(rarity)[{components:{"minecraft:custom_data":{id:"$(test)"}}}] run return run tellraw @a[tag=debug] ["[Console] ",{"text":"Error! The item ID \"$(test)\" wasn't in storage!","color":"red"}]

$data modify storage main:item random.$(rarity) prepend from storage main:item random.$(rarity)[-1]
$data remove storage main:item random.$(rarity)[-1]

$data modify storage main:item test set from storage main:item random.$(rarity)[0]
$execute unless data storage main:item test{components:{"minecraft:custom_data":{id:"$(test)"}}} run return run function main:lobby/settings/game/item/macro {test:$(test),rarity:$(rarity)}
$data remove storage main:item random.$(rarity)[0]
data remove storage main:item test
$execute unless data storage main:item random.$(rarity)[{components:{"minecraft:custom_data":{id:"$(test)"}}}] run tellraw @a[tag=debug] ["[Console] ",{"text":"Successfully removed item ID \"$(test)\" from storage.","color":"green"}]
$execute if data storage main:item random.$(rarity)[{components:{"minecraft:custom_data":{id:"$(test)"}}}] run tellraw @a[tag=debug] ["[Console] ",{"text":"Could not fully remove item ID \"$(test)\" from storage.","color":"red"}]
