scoreboard players enable @s setting.double_tap
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.double_tap -2147483648

# filter
execute if score @s setting.double_tap matches -1 run scoreboard players set @s setting.double_tap 1
execute unless score @s setting.double_tap matches 1..100 run function main:message/settings/invalid
execute unless score @s setting.double_tap matches 1..100 run return run scoreboard players set @s setting.double_tap -2147483648

# merge score
scoreboard players operation .double_tap settings = @s setting.double_tap
scoreboard players set @s setting.double_tap -2147483648

# update page
execute unless entity @n[tag=setting.game.double_tap,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/2
function main:lobby/settings/game/double_tap/root
