advancement revoke @s only main:triggers/items/console
execute unless entity @s[tag=admin] run clear @s minecraft:writable_book[custom_data={id:"CONSOLE_BOOK"}]
execute unless entity @s[tag=admin] run return run tellraw @s ["[Console] ",{"text":"No permissions.","color":"red"}]

function main:module/op/macro with entity @s Inventory[{components:{"minecraft:custom_data":{id:"CONSOLE_BOOK"}}}].components."minecraft:writable_book_content".pages[0]
execute unless score .success dummy matches 1 run data modify storage main:dummy console set from entity @s Inventory[{components:{"minecraft:custom_data":{id:"CONSOLE_BOOK"}}}].components."minecraft:writable_book_content".pages[0].raw
execute unless score .success dummy matches 1 run tellraw @s ["[Console] ",{"text":"Unknown command","color":"red"},": \"",{"nbt":"console","storage":"main:dummy"},"\""]
execute unless score .success dummy matches 1 run tellraw @a[tag=admin] ["[Console] ",{"translate":"chat.type.admin","fallback":"[%s: %s]","with":[{"selector":"@s"},[{"text":"/","color":"red"},{"nbt":"console","storage":"main:dummy"}]],"color":"gray","italic":true}]
execute unless score .success dummy matches 1 run data remove storage main:dummy console
scoreboard players reset .success dummy

execute store result score @s dummy run data get entity @s Inventory[{components:{"minecraft:custom_data":{id:"CONSOLE_BOOK"}}}].Slot
clear @s minecraft:writable_book[custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 0 run item replace entity @s hotbar.0 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 1 run item replace entity @s hotbar.1 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 2 run item replace entity @s hotbar.2 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 3 run item replace entity @s hotbar.3 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 4 run item replace entity @s hotbar.4 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 5 run item replace entity @s hotbar.5 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 6 run item replace entity @s hotbar.6 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 7 run item replace entity @s hotbar.7 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches 8 run item replace entity @s hotbar.8 with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
execute if score @s dummy matches -106 run item replace entity @s weapon.offhand with minecraft:writable_book[item_name='{"translate":"item.purple.console_book","fallback":"Console Book"}',max_stack_size=1,rarity="epic",custom_data={id:"CONSOLE_BOOK"}]
scoreboard players reset @s dummy
