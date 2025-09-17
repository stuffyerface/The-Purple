execute if entity @s[scores={source_ability.reach=1..}] run scoreboard players remove @s source_ability.reach 1
execute if entity @s[scores={source_ability.reach=0}] run attribute @s minecraft:entity_interaction_range modifier remove purple:reach
execute if entity @s[scores={source_ability.reach=0}] at @s run playsound minecraft:block.piston.contract player @s ~ ~ ~ 1 1
execute if entity @s[scores={source_ability.reach=0}] run scoreboard players reset @s source_ability.reach
