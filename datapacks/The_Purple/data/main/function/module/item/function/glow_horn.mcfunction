advancement revoke @s only main:triggers/items/glow_horn
execute if entity @s[tag=item.glow_horn] run return fail
execute if entity @s run scoreboard players add @s stat.item.glow_horn 1

tag @s add item.glow_horn
execute if entity @s run return run schedule function main:module/item/function/glow_horn 30t

execute as @a[tag=item.glow_horn] at @s as @e[distance=..200,tag=!corrupted,type=#main:player] unless entity @s[gamemode=spectator] unless entity @s[type=minecraft:zombie] run effect give @s glowing 10 0 false
execute as @a[tag=item.glow_horn] at @s as @a[distance=..200,tag=!corrupted,gamemode=!spectator] at @s run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2
execute as @a[tag=item.glow_horn] at @s as @a[distance=..200,tag=!corrupted,gamemode=!spectator] at @s run attribute @s minecraft:waypoint_receive_range base set 500
execute as @a[tag=item.glow_horn] at @s as @a[distance=..200,tag=!corrupted,gamemode=!spectator] at @s run scoreboard players set @s cooldown.locator_bar 180
tag @a remove item.glow_horn
