scoreboard players operation @s spectator_ability_timer = .ability_teleport settings
function main:message/spectator/teleport

execute as @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] at @s run tag @r[tag=player,tag=!corrupted,gamemode=!spectator,distance=1..] add randomly_teleported
execute as @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] at @s run tp @p[tag=randomly_teleported] ~ ~ ~ ~ ~
execute as @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..15] at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 1 0.88
execute as @a[tag=randomly_teleported] at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 1 0.88
execute as @a[tag=randomly_teleported] at @s run tag @s remove randomly_teleported
