scoreboard players enable @s setting.offline_time

# filter
execute if score @s setting.offline_time matches ..0 run function main:message/settings/invalid
execute if score @s setting.offline_time matches ..0 run return run scoreboard players set @s setting.offline_time -2147483648
execute if score @s setting.offline_time matches 1201.. run function main:message/settings/invalid
execute if score @s setting.offline_time matches 1201.. run return run scoreboard players set @s setting.offline_time -2147483648

# merge score
scoreboard players operation .offline_time settings = @s setting.offline_time
scoreboard players set @s setting.offline_time -2147483648

# update page
#execute unless entity @n[tag=setting.game.offline_time] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/offline_time/root
