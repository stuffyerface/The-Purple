# contributor golden edition
execute if entity @s[tag=vip,predicate=main:flag/is_sneaking] run scoreboard players set @s victory_dance 99
execute if entity @s[tag=vip,predicate=main:flag/is_sneaking] run title @s actionbar [{"color":"green","translate":"setting.purple.button.victory_dance","fallback":"Victory Dance: %s","with":[{"translate":"setting.purple.button.victory_dance.golden_throne.name","fallback":"Golden Throne","color":"white"}]}]
execute if entity @s[tag=vip,predicate=main:flag/is_sneaking] run scoreboard players set @s actionbar 30
execute if entity @s[tag=vip,predicate=main:flag/is_sneaking] run return run tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Victory Dance: ",{"text":"Golden Throne","color":"gray"},"."]

# set death effect
scoreboard players set @s victory_dance 1
title @s actionbar [{"color":"green","translate":"setting.purple.button.victory_dance","fallback":"Victory Dance: %s","with":[{"translate":"setting.purple.button.victory_dance.fireworks.name","fallback":"Fireworks","color":"white"}]}]
scoreboard players set @s actionbar 30

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Victory Dance: ",{"text":"Fireworks","color":"gray"},"."]
