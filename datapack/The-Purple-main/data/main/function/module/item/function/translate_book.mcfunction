advancement revoke @s only main:triggers/items/translate_book

scoreboard players reset .translate_book_slot dummy
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{id:"TRANSLATE_BOOK"}] store result score .translate_book_slot dummy run data get entity @s Inventory[{components:{"minecraft:custom_data":{id:"TRANSLATE_BOOK"}}}].Slot
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{id:"TRANSLATE_BOOK"}] run function main:module/item/function/translate_book_macro with entity @s Inventory[{components:{"minecraft:custom_data":{id:"TRANSLATE_BOOK"}}}].components."minecraft:writable_book_content".pages[0]
execute if items entity @s weapon.offhand *[minecraft:custom_data~{id:"TRANSLATE_BOOK"}] run scoreboard players set .translate_book_slot dummy -106
execute if items entity @s weapon.offhand *[minecraft:custom_data~{id:"TRANSLATE_BOOK"}] run function main:module/item/function/translate_book_macro with entity @s equipment.offhand.components."minecraft:writable_book_content".pages[0]

item modify entity @s {type:"minecraft:filtered",slot_source:"main:inventory",item_filter:{predicates:{"minecraft:custom_data":{id:"TRANSLATE_BOOK"}}}} {type:"minecraft:set_components",components:{"minecraft:writable_book_content":{pages:[]}}}
