# reset lobby boat
execute if entity @s[tag=lobby.boat] store result score .random dummy run random value 1..2
execute if entity @s[tag=lobby.boat] if score .random dummy matches 1 run return run tp @s -4.71 11.52 -14.02 -43.59 0.00
execute if entity @s[tag=lobby.boat] if score .random dummy matches 2 run return run tp @s -6.04 11.52 -12.09 -31.75 0.00

# sink boat
execute positioned ~ ~0.5 ~ if predicate {type:"minecraft:all_of",terms:["main:flag/is_in_water",{type:"minecraft:location_check",predicate:{block:{blocks:"#minecraft:air"}}}]} run return run tp @s ~ ~-1 ~

# kill boat
particle minecraft:block_crumble{block_state:"minecraft:bamboo_planks"} ~ ~0.5 ~ 0.5 0.2 0.5 0 10 force
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..10] ~ ~ ~ 0.5 1 0.1
kill
