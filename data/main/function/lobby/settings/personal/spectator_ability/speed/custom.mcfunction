scoreboard players enable @s ability.speed
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s ability.speed -2147483648

# filter
execute if score @s ability.speed matches -1 run scoreboard players set @s ability.speed 15
execute unless score @s ability.speed matches 1..300 run function main:message/settings/invalid
execute unless score @s ability.speed matches 1..300 run return run scoreboard players set @s ability.speed -2147483648

# merge score
scoreboard players operation .ability_speed settings = @s ability.speed
scoreboard players set @s ability.speed -2147483648

# update page
execute unless entity @n[tag=setting.spectator_ability.speed,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/personal/ability/2
playsound minecraft:ui.button.click block @s
title @s actionbar [{"color":"green","translate":"setting.purple.button.spectator_ability.cooldown","fallback":"%s cooldown: %s","with":[{"translate":"setting.purple.button.spectator_ability.speed.name","fallback":"Speed Burst","color":"white"},[{"text":"","color":"yellow"},{"score":{"objective":"settings","name":".ability_speed"}},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
scoreboard players set @s actionbar 30
