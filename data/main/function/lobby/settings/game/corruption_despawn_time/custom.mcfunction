scoreboard players enable @s setting.corruption_despawn_time
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.corruption_despawn_time -2147483648

# filter
execute if score @s setting.corruption_despawn_time matches -1 run scoreboard players set @s setting.corruption_despawn_time 600
execute unless score @s setting.corruption_despawn_time matches 0..10000 run function main:message/settings/invalid
execute unless score @s setting.corruption_despawn_time matches 0..10000 run return run scoreboard players set @s setting.corruption_despawn_time -2147483648

# merge score
scoreboard players operation .corruption_despawn_time settings = @s setting.corruption_despawn_time
scoreboard players set @s setting.corruption_despawn_time -2147483648

# update page
execute unless entity @n[tag=setting.game.corruption_despawn_time,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/5
function main:lobby/settings/game/corruption_despawn_time/root
