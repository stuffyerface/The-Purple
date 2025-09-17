execute on attacker run title @s actionbar [{"color":"red","translate":"message.purple.corrupted.safety_vest","fallback":"%1$s was protected by their %2$s","with":[{"selector":"@p[dx=0]"},{"translate":"item.purple.safety_vest","fallback":"Safety Vest","color":"white"}]}]
execute on attacker run scoreboard players set @s actionbar 30
title @s actionbar [{"color":"red","translate":"message.purple.corrupted.safety_vest.self","fallback":"You were protected by your %s","with":[{"translate":"item.purple.safety_vest","fallback":"Safety Vest","color":"white"}]}]
scoreboard players set @s actionbar 30
