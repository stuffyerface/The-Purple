scoreboard players enable @s ability.speed2
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s ability.speed2 -2147483648

# filter
execute if score @s ability.speed2 matches -1 run scoreboard players set @s ability.speed2 20
execute unless score @s ability.speed2 matches 1..300 run function main:message/settings/invalid
execute unless score @s ability.speed2 matches 1..300 run return run scoreboard players set @s ability.speed2 -2147483648

# merge score
scoreboard players operation .ability_speed2 settings = @s ability.speed2
scoreboard players set @s ability.speed2 -2147483648

# update page
execute unless entity @n[tag=setting.source_ability.speed2,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/personal/ability/1
playsound minecraft:ui.button.click block @s
title @s actionbar [{"color":"green","translate":"setting.purple.button.source_ability.cooldown","fallback":"%s cooldown: %s","with":[{"translate":"setting.purple.button.source_ability.speed2.name","fallback":"Speed Burst","color":"white"},[{"text":"","color":"yellow"},{"score":{"objective":"settings","name":".ability_speed2"}},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
scoreboard players set @s actionbar 30
