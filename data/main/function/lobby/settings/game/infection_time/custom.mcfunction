scoreboard players enable @s setting.infection_time

# filter
execute if score @s setting.infection_time matches -2 run scoreboard players set @s setting.infection_time 35
execute unless score @s setting.infection_time matches -1..125 run function main:message/settings/invalid
execute unless score @s setting.infection_time matches -1..125 run return run scoreboard players set @s setting.infection_time -2147483648

# merge score
scoreboard players operation .infection_time settings = @s setting.infection_time
scoreboard players set @s setting.infection_time -2147483648

# update page
execute unless entity @n[tag=setting.game.infection_time,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/infection_time/root
