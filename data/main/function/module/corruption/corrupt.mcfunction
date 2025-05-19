scoreboard players reset .check id
execute align xyz positioned ~ ~-1.1 ~ as @n[tag=corrupt_block,dx=0,dy=1] if score @s id matches 1.. run scoreboard players operation .check id = @s id
execute if score .check id matches 1.. run tag @s add next_source
execute if score .check id matches 1.. as @a[tag=source] if score @s id = .check id run function main:message/game/corruption/disinfect
execute if score .check id matches 1.. as @a[tag=source] if score @s id = .check id run function main:game/tag/function/player_disinfect
execute if score .check id matches 1.. run tag @s remove next_source

scoreboard players reset @s infected
playsound minecraft:entity.generic.explode player @a[distance=..100] ~ ~ ~ 1 1.25
function main:module/cosmetic/explosion
function main:message/game/corruption/infected
function main:message/tagged/infected_by_environment
function main:game/tag/function/player_infect
