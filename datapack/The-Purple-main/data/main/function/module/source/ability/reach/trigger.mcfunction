scoreboard players operation @s source_ability_timer = .ability_reach settings
function main:message/source/reach

# double reach
attribute @s minecraft:entity_interaction_range modifier add purple:reach 1 add_multiplied_total
playsound minecraft:block.piston.extend player @s ~ ~ ~ 1 1

# reset reach in 10s
scoreboard players set @s source_ability.reach 200
