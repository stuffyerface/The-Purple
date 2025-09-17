# set death effect
scoreboard players set @s death_effect 2
title @s actionbar [{"color":"green","translate":"setting.purple.button.death_effect","fallback":"Death Effect: %s","with":[{"translate":"setting.purple.button.death_effect.shrink.name","fallback":"Shrink","color":"white"}]}]
scoreboard players set @s actionbar 30

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Death Effect: ",{"text":"Shrink","color":"gray"},"."]
