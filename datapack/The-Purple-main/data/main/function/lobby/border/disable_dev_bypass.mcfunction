execute unless entity @s[tag=player] run return 0
execute unless score .map settings matches 0 run return 0
execute unless score .game data matches 0.. run return 0
return 1
