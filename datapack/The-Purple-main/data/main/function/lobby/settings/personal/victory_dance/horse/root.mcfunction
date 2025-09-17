# set death effect
scoreboard players set @s victory_dance 3
title @s actionbar [{"color":"green","translate":"setting.purple.button.victory_dance","fallback":"Victory Dance: %s","with":[{"translate":"setting.purple.button.victory_dance.horse.name","fallback":"Horserider","color":"white"}]}]
scoreboard players set @s actionbar 30

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Victory Dance: ",{"text":"Horserider","color":"gray"},"."]
