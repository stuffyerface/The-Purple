execute at @s align xyz positioned ~ ~-0.1 ~ as @n[tag=corrupt_block,scores={id=1..},dx=0] run scoreboard players operation .check id = @s id
tag @s add next_source
execute as @a[tag=source] if score @s id = .check id run function main:message/game/corruption/disinfect
execute as @a[tag=source] if score @s id = .check id run function main:game/tag/function/player_disinfect
scoreboard players reset .check id
tag @s remove next_source

scoreboard players reset @s infected
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.25
function main:module/cosmetic/explosion
function main:message/game/corruption/infected
function main:message/tagged/infected_by_environment
function main:game/tag/function/player_infect
