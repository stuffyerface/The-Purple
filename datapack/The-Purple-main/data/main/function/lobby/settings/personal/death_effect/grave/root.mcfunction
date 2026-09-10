# contributor golden edition
execute if entity @s[tag=vip,predicate=main:flag/is_sneaking] run return run function main:lobby/settings/personal/death_effect/golden_grave/root

# set death effect
scoreboard players set @s death_effect 3
title @s actionbar [{"color":"green","translate":"setting.purple.button.death_effect","fallback":"Death Effect: %s","with":[{"translate":"setting.purple.button.death_effect.grave.name","fallback":"Gravestone","color":"white"}]}]
scoreboard players set @s actionbar 40

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," chose a Death Effect: ",{"text":"Gravestone","color":"gray"},"."]
