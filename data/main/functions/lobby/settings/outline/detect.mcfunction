# hold current outlines
execute at @s positioned ~ ~0.3 ~1.75 as @e[type=text_display,tag=setting_ephemeral,limit=11,sort=nearest] run scoreboard players set @s age 0

# draw outlines
execute at @s if entity @s[tag=rectangle_button] positioned ~ ~0.3 ~1.75 unless entity @e[tag=setting_outline,distance=..0.5,limit=1] positioned ~ ~-0.375 ~ run function main:lobby/settings/outline/draw_rectangle
execute at @s if entity @s[tag=square_button] positioned ~ ~0.45 ~0.3 unless entity @e[tag=setting_outline,distance=..0.25,limit=1] positioned ~ ~-0.52 ~ run function main:lobby/settings/outline/draw_square

# add descriptions
execute if entity @s[tag=setting.game.round_length] unless entity @e[type=text_display,tag=setting.game.round_length.desc] at @e[type=text_display,tag=setting.game.round_length,limit=1,sort=nearest] run return run function main:lobby/settings/game/round_length/description
execute if entity @s[tag=setting.game.starting_immunity] unless entity @e[type=text_display,tag=setting.game.starting_immunity.desc] at @e[type=text_display,tag=setting.game.starting_immunity,limit=1,sort=nearest] run return run function main:lobby/settings/game/starting_immunity/description
execute if entity @s[tag=setting.game.round_timer] unless entity @e[type=text_display,tag=setting.game.round_timer.desc] at @e[type=text_display,tag=setting.game.round_timer,limit=1,sort=nearest] run return run function main:lobby/settings/game/round_timer/description
execute if entity @s[tag=setting.game.tagback] unless entity @e[type=text_display,tag=setting.game.tagback.desc] at @e[type=text_display,tag=setting.game.tagback,limit=1,sort=nearest] run return run function main:lobby/settings/game/tagback/description

