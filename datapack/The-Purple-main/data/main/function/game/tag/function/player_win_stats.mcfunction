# win stat
xp add @s 50 points
scoreboard players add @s stat.total_wins 1
advancement grant @s only main:advancement/1_gameplay/last_one_standing
advancement grant @s[tag=has_been_revived] only main:advancement/1_gameplay/unless
advancement grant @s[tag=!has_been_infected] only main:advancement/2_challenge/clean_bill_of_health
advancement grant @s[tag=!has_used_healing_items] only main:advancement/2_challenge/one_life_is_all_i_need

# win on every map
execute if score .map settings matches 0 run advancement grant @s only main:advancement/3_easteregg/basecamp_brawl
execute if score .map settings matches 1 run advancement grant @s only main:advancement/1_gameplay/absolute_victory map_1
execute if score .map settings matches 2 run advancement grant @s only main:advancement/1_gameplay/absolute_victory map_2
execute if score .map settings matches 3 run advancement grant @s only main:advancement/1_gameplay/absolute_victory map_3

# win with every victory dance
execute if score @s victory_dance matches 1 run advancement grant @s only main:advancement/1_gameplay/victory_parade victory_dance_1
execute if score @s victory_dance matches 2 run advancement grant @s only main:advancement/1_gameplay/victory_parade victory_dance_2
execute if score @s victory_dance matches 3 run advancement grant @s only main:advancement/1_gameplay/victory_parade victory_dance_3
