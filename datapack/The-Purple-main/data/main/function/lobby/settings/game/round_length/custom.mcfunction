scoreboard players enable @s setting.round_length
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.round_length -2147483648

# filter
execute if score @s setting.round_length matches -1 run scoreboard players set @s setting.round_length 60
execute unless score @s setting.round_length matches 0..1800 run function main:message/settings/invalid
execute unless score @s setting.round_length matches 0..1800 run return run scoreboard players set @s setting.round_length -2147483648

# merge score
scoreboard players operation .round_length settings = @s setting.round_length
scoreboard players set @s setting.round_length -2147483648

# update page
execute unless entity @n[tag=setting.game.round_length,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/round_length/root
