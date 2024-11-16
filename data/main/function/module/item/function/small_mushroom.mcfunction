advancement revoke @s only main:triggers/items/small_mushroom
clear @s *[minecraft:custom_data={id:"SMALL_MUSHROOM_ABILITY"}] 1

scoreboard players add @s stat.item.small_mushroom 1
effect give @s speed 10 0 true
attribute @s minecraft:scale modifier add item:small_mushroom -0.5 add_value
playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 1 1.5
execute unless score .item_SMALL_MUSHROOM.time settings matches 0.. run scoreboard players set .item_SMALL_MUSHROOM.time settings 200
scoreboard objectives add item.small_mushroom dummy
scoreboard players operation @s item.small_mushroom = .item_SMALL_MUSHROOM.time settings