scoreboard players operation @s spectator_ability_timer = .ability_time settings
execute if score .game data matches ..0 run return run function main:message/spectator/time
execute if score .time data matches ..3 run return run function main:message/spectator/time_too_short

scoreboard players set .2 dummy 2
scoreboard players operation .calc_time dummy = .time data
scoreboard players operation .calc_time dummy /= .2 dummy
execute if score .calc_time dummy matches ..3 run scoreboard players set .calc_time dummy 3
scoreboard players operation .time data = .calc_time dummy
scoreboard players reset .2 dummy
scoreboard players reset .calc_time dummy
function main:message/spectator/time
execute as @a[tag=player,tag=!corrupted,gamemode=!spectator] at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 1 0.88
