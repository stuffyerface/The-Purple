advancement revoke @s only main:triggers/items/translate_book

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{id:"TRANSLATE_BOOK"}] store result score @s dummy run data get entity @s Inventory[{components:{"minecraft:custom_data":{id:"TRANSLATE_BOOK"}}}].Slot
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{id:"TRANSLATE_BOOK"}] run function main:module/item/function/translate_book_macro with entity @s Inventory[{components:{"minecraft:custom_data":{id:"TRANSLATE_BOOK"}}}].components."minecraft:writable_book_content".pages[0]
execute if items entity @s weapon.offhand *[minecraft:custom_data~{id:"TRANSLATE_BOOK"}] run scoreboard players set @s dummy -106
execute if items entity @s weapon.offhand *[minecraft:custom_data~{id:"TRANSLATE_BOOK"}] run function main:module/item/function/translate_book_macro with entity @s equipment.offhand.components."minecraft:writable_book_content".pages[0]

clear @s minecraft:writable_book[custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 0 run item replace entity @s hotbar.0 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 1 run item replace entity @s hotbar.1 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 2 run item replace entity @s hotbar.2 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 3 run item replace entity @s hotbar.3 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 4 run item replace entity @s hotbar.4 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 5 run item replace entity @s hotbar.5 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 6 run item replace entity @s hotbar.6 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 7 run item replace entity @s hotbar.7 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches 8 run item replace entity @s hotbar.8 with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
execute if score @s dummy matches -106 run item replace entity @s weapon.offhand with minecraft:writable_book[item_name={"translate":"item.purple.translate_book","fallback":"Translate Book"},max_stack_size=1,rarity="rare",custom_data={id:"TRANSLATE_BOOK"}]
scoreboard players reset @s dummy
