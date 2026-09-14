scoreboard players enable @s ability.darkness
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s ability.darkness -2147483648

# filter
execute if score @s ability.darkness matches -1 run scoreboard players set @s ability.darkness 20
execute unless score @s ability.darkness matches 1..300 run function main:message/settings/invalid
execute unless score @s ability.darkness matches 1..300 run return run scoreboard players set @s ability.darkness -2147483648

# merge score
scoreboard players operation .ability_darkness settings = @s ability.darkness
scoreboard players set @s ability.darkness -2147483648

# update page
execute unless entity @n[tag=setting.source_ability.darkness,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/personal/ability/1
playsound minecraft:ui.button.click block @s
title @s actionbar [{"color":"green","translate":"setting.purple.button.source_ability.cooldown","fallback":"%s cooldown: %s","with":[{"translate":"setting.purple.button.source_ability.darkness.name","fallback":"Looming Darkness","color":"white"},[{"text":"","color":"yellow"},{"score":{"objective":"settings","name":".ability_darkness"}},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
scoreboard players set @s actionbar 30
