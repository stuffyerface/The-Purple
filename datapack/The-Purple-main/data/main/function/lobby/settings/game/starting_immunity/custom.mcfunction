scoreboard players enable @s setting.starting_immunity
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.starting_immunity -2147483648

# filter
execute if score @s setting.starting_immunity matches -1 run scoreboard players set @s setting.starting_immunity 3
execute unless score @s setting.starting_immunity matches 0..300 run function main:message/settings/invalid
execute unless score @s setting.starting_immunity matches 0..300 run return run scoreboard players set @s setting.starting_immunity -2147483648

# merge score
scoreboard players operation .starting_immunity settings = @s setting.starting_immunity
scoreboard players set @s setting.starting_immunity -2147483648

# update page
execute unless entity @n[tag=setting.game.starting_immunity,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/2
function main:lobby/settings/game/starting_immunity/root
