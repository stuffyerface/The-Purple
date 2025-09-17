# set death effect
scoreboard players set @s victory_dance 2
title @s actionbar [{"color":"green","translate":"setting.purple.button.victory_dance","fallback":"Victory Dance: %s","with":[{"translate":"setting.purple.button.victory_dance.rainbow_sheep.name","fallback":"Rainbow Sheep","color":"white"}]}]
scoreboard players set @s actionbar 30

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Victory Dance: ",{"text":"Rainbow Sheep","color":"gray"},"."]
