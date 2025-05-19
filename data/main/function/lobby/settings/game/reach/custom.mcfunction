scoreboard players enable @s setting.reach
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.reach -2147483648

# filter
execute if score @s setting.reach matches -1 run scoreboard players set @s setting.reach 3
execute unless score @s setting.reach matches 1..100 run function main:message/settings/invalid
execute unless score @s setting.reach matches 1..100 run return run scoreboard players set @s setting.reach -2147483648

# merge score
scoreboard players operation .reach settings = @s setting.reach
scoreboard players set @s setting.reach -2147483648

# update page
execute unless entity @n[tag=setting.game.reach,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/6
function main:lobby/settings/game/reach/root
