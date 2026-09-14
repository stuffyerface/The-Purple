scoreboard players set .ready data 0
scoreboard players set .required data 0
execute as @a run scoreboard players add .required data 1
execute as @a[tag=ready] run scoreboard players add .ready data 1

scoreboard players set .100 data 100
scoreboard players operation .required data *= .players_ready_percent settings
scoreboard players operation .required data /= .100 data
scoreboard players reset .100 data
