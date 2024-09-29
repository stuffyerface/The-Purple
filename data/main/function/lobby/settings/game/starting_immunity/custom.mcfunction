scoreboard players enable @s setting.starting_immunity

# filter
execute if score @s setting.starting_immunity matches ..-2 run function main:message/settings/invalid
execute if score @s setting.starting_immunity matches ..-2 run return run scoreboard players set @s setting.starting_immunity -2147483648
execute if score @s setting.starting_immunity matches 1000.. run function main:message/settings/invalid
execute if score @s setting.starting_immunity matches 1000.. run return run scoreboard players set @s setting.starting_immunity -2147483648

# merge score
scoreboard players operation .starting_immunity settings = @s setting.starting_immunity
scoreboard players set @s setting.starting_immunity -2147483648

# update page
execute unless entity @n[tag=setting.game.starting_immunity] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/starting_immunity/root
