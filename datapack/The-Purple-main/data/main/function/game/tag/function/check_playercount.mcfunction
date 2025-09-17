scoreboard players set .corrupted data 0
execute as @a[tag=source] run scoreboard players add .corrupted data 1
scoreboard players set .spectating data 0
execute as @a[tag=spectator] run scoreboard players add .spectating data 1
scoreboard players set .alive data 0
execute as @a[tag=alive] run scoreboard players add .alive data 1
