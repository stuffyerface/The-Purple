execute if block ~ ~ ~ green_terracotta if score @s outside_map matches 0.. run scoreboard players set @s outside_map -1
execute if score .map settings matches 3 if score @s outside_map matches 0.. unless entity @s[y=160,dy=100] run scoreboard players set @s outside_map -1

execute if score @s outside_map matches -1 run scoreboard players set @s actionbar 30
execute if score @s outside_map matches -1 run title @s actionbar {"translate":"message.purple.outside_map.safe","fallback":"You're safe!","color":"green"}
execute if score @s outside_map matches -1 run scoreboard players reset @s outside_map

return 1
