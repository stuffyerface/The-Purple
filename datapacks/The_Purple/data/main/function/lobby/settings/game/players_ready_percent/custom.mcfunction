scoreboard players enable @s setting.players_ready_percent
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.players_ready_percent -2147483648

# filter
execute if score @s setting.players_ready_percent matches -1 run scoreboard players set @s setting.players_ready_percent 100
execute unless score @s setting.players_ready_percent matches 0..100 run function main:message/settings/invalid
execute unless score @s setting.players_ready_percent matches 0..100 run return run scoreboard players set @s setting.players_ready_percent -2147483648

# merge score
scoreboard players operation .players_ready_percent settings = @s setting.players_ready_percent
scoreboard players set @s setting.players_ready_percent -2147483648

# update page
execute unless entity @n[tag=setting.game.players_ready_percent,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/4
function main:lobby/settings/game/players_ready_percent/root
