scoreboard players enable @s setting.round_teleport
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.round_teleport -2147483648

# filter
execute if score @s setting.round_teleport matches -1 run scoreboard players set @s setting.round_teleport 5
execute unless score @s setting.round_teleport matches 0..100 run function main:message/settings/invalid
execute unless score @s setting.round_teleport matches 0..100 run return run scoreboard players set @s setting.round_teleport -2147483648

# merge score
scoreboard players operation .round_teleport settings = @s setting.round_teleport
scoreboard players set @s setting.round_teleport -2147483648

# update page
execute unless entity @n[tag=setting.game.round_teleport,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/round_teleport/root
