execute as @e[tag=infected,type=!player] store result score @s infected_particle run random value 1..20
execute as @a[tag=infected] store result score @s infected_particle run random value 1..5

execute as @e[tag=infected,scores={color=0},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=1},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[1.000,0.667,0.000,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=2},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[1.000,0.333,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=3},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.333,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=4},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[1.000,1.000,0.333,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=5},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.333,1.000,0.333,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=6},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[1.000,0.800,0.800,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=7},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.333,0.333,0.333,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=8},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.667,0.667,0.667,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=9},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.000,0.667,0.667,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=10},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.667,0.000,0.667,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=11},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.333,0.333,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=12},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.706,0.408,0.302,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=13},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.000,0.667,0.000,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=14},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[1.000,0.333,0.333,1.00]} ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=infected,scores={color=15},type=!marker] at @s if score @s infected_particle matches 1 run particle entity_effect{color:[0.000,0.000,0.000,1.00]} ~ ~ ~ 0 0 0 0 0 force

#  0 FFFFFF white
#  1 FFAA00 orange
#  2 FF55FF magenta
#  3 55FFFF light_blue
#  4 FFFF55 yellow
#  5 55FF55 lime
#  6 FFCCCC pink
#  7 555555 gray
#  8 AAAAAA light_gray
#  9 00AAAA cyan
# 10 AA00AA purple
# 11 5555FF blue
# 12 B4684D brown
# 13 00AA00 green
# 14 FF5555 red
# 15 000000 black
