# mainhand empty
execute unless items entity @s weapon.mainhand * run return run function main:module/item/system/pickup/mainhand

# mainhand full
execute store result score .item dummy run loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"saddle"},modifier:"main:tech/remove_equippable"}]}]}
#execute if score .item dummy matches 0 run loot spawn ~ ~ ~ loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"saddle"},modifier:"main:tech/remove_equippable"}]}]}
execute unless items entity @s saddle * run scoreboard players set .item dummy 1
execute if score .item dummy matches 0 run function main:message/item/full_stack
item replace entity @s saddle with minecraft:air

return run scoreboard players get .item dummy
