scoreboard players enable @s setting.round_timer
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.round_timer -2147483648

# filter
execute if score @s setting.round_timer matches -1 run scoreboard players set @s setting.round_timer 1
execute unless score @s setting.round_timer matches 0..1 run function main:message/settings/invalid
execute unless score @s setting.round_timer matches 0..1 run return run scoreboard players set @s setting.round_timer -2147483648

# merge score
scoreboard players operation .round_timer settings = @s setting.round_timer
scoreboard players set @s setting.round_timer -2147483648

# update page
scoreboard players set .modify_round_timer settings -1
execute unless entity @n[tag=setting.game.round_timer,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/5
function main:lobby/settings/game/round_timer/root
