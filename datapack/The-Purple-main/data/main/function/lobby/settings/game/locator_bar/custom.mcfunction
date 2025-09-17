scoreboard players enable @s setting.locator_bar
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.locator_bar -2147483648

# filter
execute if score @s setting.locator_bar matches -1 run scoreboard players set @s setting.locator_bar 0
execute unless score @s setting.locator_bar matches 0..1000 run function main:message/settings/invalid
execute unless score @s setting.locator_bar matches 0..1000 run return run scoreboard players set @s setting.locator_bar -2147483648

# merge score
scoreboard players operation .locator_bar settings = @s setting.locator_bar
scoreboard players set @s setting.locator_bar -2147483648

# update page
execute unless entity @n[tag=setting.game.locator_bar,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/locator_bar/root
