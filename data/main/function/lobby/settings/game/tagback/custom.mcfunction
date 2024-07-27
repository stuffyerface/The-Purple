scoreboard players enable @s setting.tagback

# filter
execute if score @s setting.tagback matches ..-2 run function main:message/settings/invalid
execute if score @s setting.tagback matches ..-2 run return run scoreboard players set @s setting.tagback -2147483648
execute if score @s setting.tagback matches 1000.. run function main:message/settings/invalid
execute if score @s setting.tagback matches 1000.. run return run scoreboard players set @s setting.tagback -2147483648

# merge score
scoreboard players operation .tagback settings = @s setting.tagback
scoreboard players set @s setting.tagback -2147483648

# update page
execute unless entity @n[tag=setting.game.tagback] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/2
function main:lobby/settings/game/tagback/root
