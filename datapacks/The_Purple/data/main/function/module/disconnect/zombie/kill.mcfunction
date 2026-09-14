execute unless entity @s[tag=id.marker] run return fail
tag @s remove id.marker.offline

# find matching logout zombie
scoreboard players operation .zombie id = @s id
execute as @e[tag=disconnect.zombie] if score @s id = .zombie id run tag @s add this_zombie

# player copies logout zombie
execute if entity @n[tag=this_zombie,tag=source] as @p[scores={relog=1..},dx=0,tag=!source] run playsound purple:infected player @s ~ ~ ~ 0.9 2
execute if entity @n[tag=this_zombie,tag=source] as @p[scores={relog=1..},dx=0,tag=!source] run tellraw @s {translate:'message.purple.corrupted.offline', fallback:'\nWhile offline, someone infected you with %s!\n', color:red, with:[[{color:"#AA00AA",text:"T"},{color:"#B317AE",text:"h"},{color:"#BD2DB2",text:"e"}," ",{color:"#C644B5",text:"P"},{color:"#D05BB9",text:"u"},{color:"#D971BD",text:"r"},{color:"#E388C1",text:"p"},{color:"#EC9FC4",text:"l"},{color:"#FFCCCC",text:"e"}]]}
execute if entity @n[tag=this_zombie,tag=source] as @p[scores={relog=1..},dx=0,tag=!source] run function c:item/source
execute if entity @n[tag=this_zombie,tag=source] as @p[scores={relog=1..},dx=0] run tag @s add source
execute if entity @n[tag=this_zombie,tag=infected] as @p[scores={relog=1..},dx=0] run tag @s add infected
execute if entity @n[tag=this_zombie,tag=infected] as @p[scores={relog=1..},dx=0] run function main:id/team/set_color

# kill this zombie
scoreboard players reset @n[tag=this_zombie] id
scoreboard players reset @n[tag=this_zombie] color
scoreboard players reset @n[tag=this_zombie] death_effect
tp @n[tag=this_zombie] ~ -100 ~
kill @n[tag=this_zombie]
return 1