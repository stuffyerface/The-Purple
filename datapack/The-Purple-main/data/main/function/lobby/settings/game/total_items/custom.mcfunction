scoreboard players enable @s setting.total_items
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.total_items -2147483648

# filter
execute if score @s setting.total_items matches -1 run scoreboard players set @s setting.total_items 10
execute unless score @s setting.total_items matches 0..100 run function main:message/settings/invalid
execute unless score @s setting.total_items matches 0..100 run return run scoreboard players set @s setting.total_items -2147483648

# merge score
scoreboard players operation .total_items settings = @s setting.total_items
scoreboard players set @s setting.total_items -2147483648

# update page
execute unless entity @n[tag=setting.game.total_items,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/3
function main:lobby/settings/game/total_items/root
