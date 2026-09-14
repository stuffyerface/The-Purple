title @s actionbar {"color":"red","translate":"message.purple.border.outside","fallback":"Returning to base..."}
scoreboard players set @s actionbar 2
execute if score @s lobby.border matches -1 run return -1
function main:lobby/border/reset
scoreboard players set @s lobby.border -1
scoreboard players set @s teleport_lock 0
