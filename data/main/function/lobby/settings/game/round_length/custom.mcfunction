scoreboard players enable @s setting.round_length

# filter
execute if score @s setting.round_length matches ..-2 run function main:message/settings/invalid
execute if score @s setting.round_length matches ..-2 run return run scoreboard players set @s setting.round_length -2147483648
execute if score @s setting.round_length matches 1000.. run function main:message/settings/invalid
execute if score @s setting.round_length matches 1000.. run return run scoreboard players set @s setting.round_length -2147483648

# merge score
scoreboard players operation .round_length settings = @s setting.round_length
scoreboard players set @s setting.round_length -2147483648

# update page
execute unless entity @n[tag=setting.game.round_length] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/round_length/root
