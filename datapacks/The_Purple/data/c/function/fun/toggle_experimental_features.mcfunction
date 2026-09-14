# toggle
execute store result score .experimental dummy run scoreboard players get .experimental settings
execute if score .experimental dummy matches 0 run scoreboard players set .experimental settings 1
execute if score .experimental dummy matches 1 run scoreboard players set .experimental settings 0
execute if score .experimental dummy matches 0 run tellraw @s ["[Console] ",{text:'Enabled experimental features.', color:'green'}]
execute if score .experimental dummy matches 1 run tellraw @s ["[Console] ",{text:'Disabled experimental features.', color:'red'}]

# disable features
execute if score .experimental settings matches 0 run scoreboard players set .item_DRACONIC_ESSENCE settings 0
