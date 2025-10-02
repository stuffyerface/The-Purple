tag @s add already_checked
execute if data entity @s Item.components.minecraft:custom_data{id:"REVIVAL_POTION"} on origin run scoreboard players add @s stat.item.revival_potion 1
execute if data entity @s Item.components.minecraft:custom_data{id:"SMOKE_BOMB"} on origin run scoreboard players add @s stat.item.smoke_bomb 1
