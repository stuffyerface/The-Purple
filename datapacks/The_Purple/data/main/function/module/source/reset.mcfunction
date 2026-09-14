## reset your ability
effect clear @s speed
effect clear @s invisibility
#dont reset looming darkness
scoreboard players reset @s source_ability.corruption
execute if score @s source_ability.reach matches 1.. run scoreboard players set @s source_ability.reach 0
