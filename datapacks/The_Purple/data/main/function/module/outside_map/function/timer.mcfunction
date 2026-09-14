execute unless score .10 outside_map matches 10 run scoreboard players set .10 outside_map 10
execute unless score @s outside_map matches 0.. run scoreboard players set @s outside_map 60

scoreboard players remove @s outside_map 1
scoreboard players operation .calc outside_map = @s outside_map
scoreboard players operation .calc outside_map /= .10 outside_map
scoreboard players add .calc outside_map 1

return run scoreboard players get @s outside_map
