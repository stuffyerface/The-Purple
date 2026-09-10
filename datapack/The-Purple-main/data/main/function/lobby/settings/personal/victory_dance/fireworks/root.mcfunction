# contributor golden edition
execute if entity @s[tag=vip,predicate=main:flag/is_sneaking] run return run function main:lobby/settings/personal/victory_dance/golden_throne/root

# set victory dance
scoreboard players set @s victory_dance 1
title @s actionbar [{"color":"green","translate":"setting.purple.button.victory_dance","fallback":"Victory Dance: %s","with":[{"translate":"setting.purple.button.victory_dance.fireworks.name","fallback":"Fireworks","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Victory Dance: ",{"text":"Fireworks","color":"gray"},"."]
