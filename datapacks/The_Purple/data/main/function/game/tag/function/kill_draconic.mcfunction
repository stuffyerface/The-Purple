# check for totem
execute if function main:module/miscellaneous/if/has_totem run return fail

# kill draconic players without totem
advancement grant @s only main:advancement/1_gameplay/mission_failed
scoreboard players add @s stat.total_deaths_by_round 1
function main:module/cosmetic/death_effect/activate
