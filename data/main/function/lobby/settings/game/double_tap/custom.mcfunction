scoreboard players enable @s setting.double_tap

# filter
execute if score @s setting.double_tap matches ..-2 run function main:message/settings/invalid
execute if score @s setting.double_tap matches ..-2 run return run scoreboard players set @s setting.double_tap -2147483648
execute if score @s setting.double_tap matches 1000.. run function main:message/settings/invalid
execute if score @s setting.double_tap matches 1000.. run return run scoreboard players set @s setting.double_tap -2147483648

# merge score
scoreboard players operation .double_tap settings = @s setting.double_tap
scoreboard players set @s setting.double_tap -2147483648

# update page
execute unless entity @n[tag=setting.game.double_tap] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/2
function main:lobby/settings/game/double_tap/root
