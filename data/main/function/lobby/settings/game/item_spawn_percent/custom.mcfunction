scoreboard players enable @s setting.item_spawn_percent
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.item_spawn_percent -2147483648

# filter
execute if score @s setting.item_spawn_percent matches -1 run scoreboard players set @s setting.item_spawn_percent 40
execute unless score @s setting.item_spawn_percent matches 0..100 run function main:message/settings/invalid
execute unless score @s setting.item_spawn_percent matches 0..100 run return run scoreboard players set @s setting.item_spawn_percent -2147483648

# merge score
scoreboard players operation .item_spawn_percent settings = @s setting.item_spawn_percent
scoreboard players set @s setting.item_spawn_percent -2147483648

# update page
execute unless entity @n[tag=setting.game.item_spawn_percent,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/3
function main:lobby/settings/game/item_spawn_percent/root
