execute if entity @s[tag=admin] run return 0

scoreboard players set @s actionbar 30
title @s actionbar {"translate":"message.purple.locked","fallback":"This is locked during the game!","color":"red"}
playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.8
return 1
