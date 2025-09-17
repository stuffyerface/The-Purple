scoreboard players enable @s setting.rope_clicks
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.rope_clicks -2147483648

# filter
execute if score @s setting.rope_clicks matches -1 run scoreboard players set @s setting.rope_clicks 5
execute unless score @s setting.rope_clicks matches 1..100 run function main:message/settings/invalid
execute unless score @s setting.rope_clicks matches 1..100 run return run scoreboard players set @s setting.rope_clicks -2147483648

# merge score
scoreboard players operation .rope_clicks settings = @s setting.rope_clicks
scoreboard players set @s setting.rope_clicks -2147483648

# update page
execute unless entity @n[tag=setting.game.rope_clicks,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/5
function main:lobby/settings/game/rope_clicks/root
