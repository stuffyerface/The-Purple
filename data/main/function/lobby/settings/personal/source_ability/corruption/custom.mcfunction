scoreboard players enable @s ability.corruption
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s ability.corruption -2147483648

# filter
execute if score @s ability.corruption matches -1 run scoreboard players set @s ability.corruption 20
execute unless score @s ability.corruption matches 1..300 run function main:message/settings/invalid
execute unless score @s ability.corruption matches 1..300 run return run scoreboard players set @s ability.corruption -2147483648

# merge score
scoreboard players operation .ability_corruption settings = @s ability.corruption
scoreboard players set @s ability.corruption -2147483648

# update page
execute unless entity @n[tag=setting.source_ability.corruption,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/personal/ability/1
playsound minecraft:ui.button.click block @s
title @s actionbar [{"color":"green","translate":"setting.purple.button.source_ability.cooldown","fallback":"%s cooldown: %s","with":[{"translate":"setting.purple.button.source_ability.corruption.name","fallback":"Corrupt Growth","color":"white"},[{"text":"","color":"yellow"},{"score":{"objective":"settings","name":".ability_corruption"}},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
scoreboard players set @s actionbar 30
