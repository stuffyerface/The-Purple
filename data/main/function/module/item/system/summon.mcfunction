summon item_display ~ ~ ~ {Glowing:1b,item_display:"ground",Tags:["item.display","item.display.modify_item"],teleport_duration:1,transformation:[0.5f,0f,0f,0f,0f,0.5f,0f,0.06f,0f,0f,0.5f,0f,0f,0f,0f,0.5f],item:{id:"minecraft:gray_dye",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Placeholder"',"minecraft:lore":['{"color":"red","italic":false,"text":"You shouldn\'t have this!"}'],"minecraft:custom_data":{id:PLACEHOLDER}}},Passengers:[{id:"minecraft:interaction",Tags:["item.display"],width:0.5f,height:0.5f,response:1b}]}
tag @n[tag=item_spawner,distance=..3] add item

execute store result storage main:item macro.total int 1 run data get storage main:item random.common
function main:module/item/system/macro/random with storage main:item macro
function main:module/item/system/macro/data with storage main:item macro
tag @e[tag=item.display.modify_item] remove item.display.modify_item
