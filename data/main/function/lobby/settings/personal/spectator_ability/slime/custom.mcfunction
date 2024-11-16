scoreboard players enable @s ability.slime
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s ability.slime -2147483648

# filter
execute if score @s ability.slime matches -1 run scoreboard players set @s ability.slime 20
execute unless score @s ability.slime matches 1..300 run function main:message/settings/invalid
execute unless score @s ability.slime matches 1..300 run return run scoreboard players set @s ability.slime -2147483648

# merge score
scoreboard players operation .ability_slime settings = @s ability.slime
scoreboard players set @s ability.slime -2147483648

# update page
execute unless entity @n[tag=setting.spectator_ability.slime,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/personal/ability/2
playsound minecraft:ui.button.click block @s
title @s actionbar [{"color":"green","translate":"setting.purple.button.spectator_ability.cooldown","fallback":"%s cooldown: %s","with":[{"translate":"setting.purple.button.spectator_ability.slime.name","fallback":"Slime Swarm","color":"white"},[{"text":"","color":"yellow"},{"score":{"objective":"settings","name":".ability_slime"}},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
scoreboard players set @s actionbar 30
