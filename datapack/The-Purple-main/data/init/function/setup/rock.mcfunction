scoreboard players set .initialize_rocks dummy 1

# summon rocks to default locations
execute positioned -28 20 -52 run function c:spawn/rock
execute positioned -48 32 -35 run function c:spawn/rock
execute positioned -45 37 12 run function c:spawn/rock
execute positioned -16 16 56 run function c:spawn/rock
execute positioned -9 13 -10 run function c:spawn/rock
execute positioned -54 22 11 run function c:spawn/rock
execute positioned -70 20 36 run function c:spawn/rock
execute positioned 0 12 38 run function c:spawn/rock
execute positioned -9 14 5 run function c:spawn/rock
execute positioned -52 20 11 run function c:spawn/rock
execute positioned -36 24 27 run function c:spawn/rock
execute positioned -2 18 -45 run function c:spawn/rock
execute positioned 30 22 -36 run function c:spawn/rock
execute positioned 42 23 13 run function c:spawn/rock
execute positioned 3 14 58 run function c:spawn/rock
execute positioned -48 17 44 run function c:spawn/rock
execute positioned -54 23 3 run function c:spawn/rock
execute positioned -47 21 -47 run function c:spawn/rock
execute positioned -9 12 -11 run function c:spawn/rock
execute positioned -20 15 49 run function c:spawn/rock

# clean
scoreboard players reset .initialize_rocks dummy
schedule function main:module/miscellaneous/schedule/clear_new_rock_tag 1s replace
