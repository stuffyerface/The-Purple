scoreboard players enable @s setting.reduce_timer
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.reduce_timer -2147483648

# filter
execute if score @s setting.reduce_timer matches -1 run scoreboard players set @s setting.reduce_timer 10
execute unless score @s setting.reduce_timer matches 0..100 run function main:message/settings/invalid
execute unless score @s setting.reduce_timer matches 0..100 run return run scoreboard players set @s setting.reduce_timer -2147483648

# merge score
scoreboard players operation .reduce_timer settings = @s setting.reduce_timer
scoreboard players set @s setting.reduce_timer -2147483648

# update page
execute unless entity @n[tag=setting.game.reduce_timer,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/reduce_timer/root
