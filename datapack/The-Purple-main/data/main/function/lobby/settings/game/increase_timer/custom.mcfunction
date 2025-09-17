scoreboard players enable @s setting.increase_timer
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.increase_timer -2147483648

# filter
execute if score @s setting.increase_timer matches -1 run scoreboard players set @s setting.increase_timer 0
execute unless score @s setting.increase_timer matches 0..300 run function main:message/settings/invalid
execute unless score @s setting.increase_timer matches 0..300 run return run scoreboard players set @s setting.increase_timer -2147483648

# merge score
scoreboard players operation .increase_timer settings = @s setting.increase_timer
scoreboard players set @s setting.increase_timer -2147483648

# update page
execute unless entity @n[tag=setting.game.increase_timer,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/increase_timer/root
