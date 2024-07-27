execute at @n[tag=setting.board] positioned ~-4.5 ~-0.1 ~-0.505 unless entity @s[dx=8,dy=4,dz=4] run function main:lobby/settings/reset

execute if entity @s[scores={setting.double_tap=-2147483647..}] run function main:lobby/settings/game/double_tap/custom
execute if entity @s[scores={setting.increase_timer=-2147483647..}] run function main:lobby/settings/game/increase_timer/custom
execute if entity @s[scores={setting.offline_time=-2147483647..}] run function main:lobby/settings/game/offline_time/custom
execute if entity @s[scores={setting.rope_clicks=-2147483647..}] run function main:lobby/settings/game/rope_clicks/custom
execute if entity @s[scores={setting.round_length=-2147483647..}] run function main:lobby/settings/game/round_length/custom
execute if entity @s[scores={setting.starting_immunity=-2147483647..}] run function main:lobby/settings/game/starting_immunity/custom
execute if entity @s[scores={setting.tagback=-2147483647..}] run function main:lobby/settings/game/tagback/custom

execute anchored eyes run function main:lobby/settings/outline/raycast