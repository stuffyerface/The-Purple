scoreboard players enable @s setting.offline_time
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.offline_time -2147483648

# filter
execute if score @s setting.offline_time matches -1 run scoreboard players set @s setting.offline_time 200
execute unless score @s setting.offline_time matches 0..36000 run function main:message/settings/invalid
execute unless score @s setting.offline_time matches 0..36000 run return run scoreboard players set @s setting.offline_time -2147483648

# merge score
scoreboard players operation .offline_time settings = @s setting.offline_time
scoreboard players set @s setting.offline_time -2147483648

# update page
execute unless entity @n[tag=setting.game.offline_time,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/4
function main:lobby/settings/game/offline_time/root
