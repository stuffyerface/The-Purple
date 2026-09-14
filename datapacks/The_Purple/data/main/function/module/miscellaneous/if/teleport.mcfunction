execute unless entity @s[tag=ready] run return 0
execute unless score .pregame data matches 1 run return 0
return 1

# if you are ready and .pregame data matches 1, return 1
