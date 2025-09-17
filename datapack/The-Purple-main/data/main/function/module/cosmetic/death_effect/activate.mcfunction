tag @s remove alive
tag @s add dying
execute unless score @s death_effect matches 1.. run function main:module/cosmetic/death_effect/explode
execute if score @s death_effect matches 1 run function main:module/cosmetic/death_effect/explode
execute if score @s death_effect matches 2 run function main:module/cosmetic/death_effect/shrink
execute if score @s death_effect matches 3 run function main:module/cosmetic/death_effect/grave
execute if score @s death_effect matches 99 run function main:module/cosmetic/death_effect/golden_grave
