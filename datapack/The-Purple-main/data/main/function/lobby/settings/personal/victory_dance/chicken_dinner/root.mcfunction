# set victory dance
scoreboard players set @s victory_dance 5
title @s actionbar [{"color":"green","translate":"setting.purple.button.victory_dance","fallback":"Victory Dance: %s","with":[{"translate":"setting.purple.button.victory_dance.chicken_dinner.name","fallback":"Chicken Dinner","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Victory Dance: ",{"text":"Chicken Dinner","color":"gray"},"."]
