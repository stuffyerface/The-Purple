scoreboard players enable @s setting.max_rounds
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.max_rounds -2147483648

# filter
execute if score @s setting.max_rounds matches -1 run scoreboard players set @s setting.max_rounds 0
execute unless score @s setting.max_rounds matches 0..1000 run function main:message/settings/invalid
execute unless score @s setting.max_rounds matches 0..1000 run return run scoreboard players set @s setting.max_rounds -2147483648

# merge score
scoreboard players operation .max_rounds settings = @s setting.max_rounds
scoreboard players set @s setting.max_rounds -2147483648

# update page
execute unless entity @n[tag=setting.game.max_rounds,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/max_rounds/root
