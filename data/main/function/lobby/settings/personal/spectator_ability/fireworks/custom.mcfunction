scoreboard players enable @s ability.fireworks
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s ability.fireworks -2147483648

# filter
execute if score @s ability.fireworks matches -1 run scoreboard players set @s ability.fireworks 15
execute unless score @s ability.fireworks matches 1..300 run function main:message/settings/invalid
execute unless score @s ability.fireworks matches 1..300 run return run scoreboard players set @s ability.fireworks -2147483648

# merge score
scoreboard players operation .ability_fireworks settings = @s ability.fireworks
scoreboard players set @s ability.fireworks -2147483648

# update page
execute unless entity @n[tag=setting.spectator_ability.fireworks,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/personal/ability/2
playsound minecraft:ui.button.click block @s
title @s actionbar [{"color":"green","translate":"setting.purple.button.spectator_ability.cooldown","fallback":"%s cooldown: %s","with":[{"translate":"setting.purple.button.spectator_ability.fireworks.name","fallback":"Fireworks","color":"white"},[{"text":"","color":"yellow"},{"score":{"objective":"settings","name":".ability_fireworks"}},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
scoreboard players set @s actionbar 30
