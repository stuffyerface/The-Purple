scoreboard players enable @s setting.winners
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.winners -2147483648

# filter
execute if score @s setting.winners matches -1 run scoreboard players set @s setting.winners 1
execute unless score @s setting.winners matches 1..100 run function main:message/settings/invalid
execute unless score @s setting.winners matches 1..100 run return run scoreboard players set @s setting.winners -2147483648

# merge score
scoreboard players operation .winners settings = @s setting.winners
scoreboard players set @s setting.winners -2147483648

# update page
execute unless entity @n[tag=setting.game.winners,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/4
function main:lobby/settings/game/winners/root
