scoreboard players enable @s ability.reach
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s ability.reach -2147483648

# filter
execute if score @s ability.reach matches -1 run scoreboard players set @s ability.reach 20
execute unless score @s ability.reach matches 1..300 run function main:message/settings/invalid
execute unless score @s ability.reach matches 1..300 run return run scoreboard players set @s ability.reach -2147483648

# merge score
scoreboard players operation .ability_reach settings = @s ability.reach
scoreboard players set @s ability.reach -2147483648

# update page
execute unless entity @n[tag=setting.source_ability.reach,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/personal/ability/1
playsound minecraft:ui.button.click block @s
title @s actionbar [{"color":"green","translate":"setting.purple.button.source_ability.cooldown","fallback":"%s cooldown: %s","with":[{"translate":"setting.purple.button.source_ability.reach.name","fallback":"Long Arms","color":"white"},[{"text":"","color":"yellow"},{"score":{"objective":"settings","name":".ability_reach"}},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
scoreboard players set @s actionbar 30
