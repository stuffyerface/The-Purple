# if the marker is alone, summon the logoff zombie
execute as @e[tag=id.marker,tag=!id.marker.offline,tag=alive] at @s unless entity @p[dx=0] unless entity @e[dx=0,tag=disconnect.zombie] run function main:module/disconnect/zombie/spawn

# relog detection stuff
execute as @a[scores={relog=1..}] at @s run function main:module/disconnect/relog
scoreboard players operation @a disconnect = .world gameData






# old
#execute as @a[scores={id=1..}] at @s as @e[limit=10,sort=nearest,type=armor_stand] if score @s id = @p[dx=0] id run tp @s ~ ~ ~
#execute as @e[scores={id=1..},type=armor_stand] at @s at @a[limit=10,sort=nearest] if score @s id = @p[dx=0] id run tp @s ~ ~ ~
