scoreboard players enable @s setting.rope_clicks

# filter
execute if score @s setting.rope_clicks matches ..0 run function main:message/settings/invalid
execute if score @s setting.rope_clicks matches ..0 run return run scoreboard players set @s setting.rope_clicks -2147483648
execute if score @s setting.rope_clicks matches 1000.. run function main:message/settings/invalid
execute if score @s setting.rope_clicks matches 1000.. run return run scoreboard players set @s setting.rope_clicks -2147483648

# merge score
scoreboard players operation .rope_clicks settings = @s setting.rope_clicks
scoreboard players set @s setting.rope_clicks -2147483648

# update page
#execute unless entity @n[tag=setting.game.rope_clicks] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/1
function main:lobby/settings/game/rope_clicks/root
