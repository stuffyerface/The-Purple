scoreboard players enable @s setting.increase_timer

# filter
execute if score @s setting.increase_timer matches ..-2 run function main:message/settings/invalid
execute if score @s setting.increase_timer matches ..-2 run return run scoreboard players set @s setting.increase_timer -2147483648
execute if score @s setting.increase_timer matches 1000.. run function main:message/settings/invalid
execute if score @s setting.increase_timer matches 1000.. run return run scoreboard players set @s setting.increase_timer -2147483648

# merge score
scoreboard players operation .increase_timer settings = @s setting.increase_timer
scoreboard players set @s setting.increase_timer -2147483648

# update page
execute unless entity @n[tag=setting.game.increase_timer] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/2
function main:lobby/settings/game/increase_timer/root
