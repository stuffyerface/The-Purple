scoreboard players operation @s spectator_ability_timer = .ability_speed settings
function main:message/spectator/speed

execute as @a[tag=player,tag=!corrupted,gamemode=!spectator,distance=..50] at @s run effect give @s speed 10 2
execute as @a[tag=player,tag=!corrupted,gamemode=!spectator,distance=..50] at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 1 0.88
