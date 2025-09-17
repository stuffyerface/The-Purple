scoreboard players enable @s setting.tagback
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.tagback -2147483648

# filter
execute if score @s setting.tagback matches -2 run scoreboard players set @s setting.tagback 0
execute unless score @s setting.tagback matches -1..300 run function main:message/settings/invalid
execute unless score @s setting.tagback matches -1..300 run return run scoreboard players set @s setting.tagback -2147483648

# merge score
scoreboard players operation .tagback settings = @s setting.tagback
scoreboard players set @s setting.tagback -2147483648

# update page
execute unless entity @n[tag=setting.game.tagback,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/2
function main:lobby/settings/game/tagback/root
