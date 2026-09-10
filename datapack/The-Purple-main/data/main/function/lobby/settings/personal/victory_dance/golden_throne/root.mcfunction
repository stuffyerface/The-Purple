# set victory dance
scoreboard players set @s victory_dance 99
title @s actionbar [{"color":"green","translate":"setting.purple.button.victory_dance","fallback":"Victory Dance: %s","with":[{"translate":"setting.purple.button.victory_dance.golden_throne.name","fallback":"Golden Throne","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Victory Dance: ",{"text":"Golden Throne","color":"gray"},"."]
