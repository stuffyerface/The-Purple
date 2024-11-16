## reset your ability
effect clear @s speed
effect clear @s invisibility
#dont reset looming darkness
execute if score @s source_ability.corruption matches 1.. run scoreboard players set @s source_ability.corruption 0
execute if score @s source_ability.reach matches 1.. run scoreboard players set @s source_ability.reach 0
