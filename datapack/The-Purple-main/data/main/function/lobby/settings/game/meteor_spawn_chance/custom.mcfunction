scoreboard players enable @s setting.meteor_spawn_chance
execute if score .game data matches 0.. if function main:message/settings/locked run return run scoreboard players set @s setting.meteor_spawn_chance -2147483648

# filter
execute if score @s setting.meteor_spawn_chance matches -1 run scoreboard players set @s setting.meteor_spawn_chance 50
execute unless score @s setting.meteor_spawn_chance matches 0..100 run function main:message/settings/invalid
execute unless score @s setting.meteor_spawn_chance matches 0..100 run return run scoreboard players set @s setting.meteor_spawn_chance -2147483648

# merge score
scoreboard players operation .meteor_spawn_chance settings = @s setting.meteor_spawn_chance
scoreboard players set @s setting.meteor_spawn_chance -2147483648

# update page
execute unless entity @n[tag=setting.game.meteor_spawn_chance,distance=..10] at @n[tag=setting.board] run function main:lobby/settings/board/page/game/6
function main:lobby/settings/game/meteor_spawn_chance/root
