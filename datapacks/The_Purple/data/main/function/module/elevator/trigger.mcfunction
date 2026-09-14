advancement revoke @s only main:triggers/game/elevator
execute unless score .elevator data matches 0 run return fail
execute if score .game data matches 0 run return fail
execute if score .game data matches 2.. run return fail
execute if score .elevator_cooldown dummy matches 1.. run return fail
execute if entity @s[tag=corrupted] run scoreboard players set @s actionbar 40
execute if entity @s[tag=corrupted] run return run title @s actionbar {"translate":"message.purple.locked_to_dead_players","fallback":"You can't use this while dead!","color":"red"}

function main:module/elevator/loop
execute if score .elevator data matches 1 run scoreboard players set .elevator_cooldown dummy 150
execute if score .elevator data matches -1 run scoreboard players set .elevator_cooldown dummy 90

execute at @n[tag=elevator.base] positioned ~-2 ~-1 ~-2 as @a[dx=3.5,dz=3.5,dy=6,gamemode=!spectator] run title @s times 0 2s 10t
execute at @n[tag=elevator.base] positioned ~-2 ~-1 ~-2 as @a[dx=3.5,dz=3.5,dy=6,gamemode=!spectator] run title @s title ""
execute at @n[tag=elevator.base] positioned ~-2 ~-1 ~-2 as @a[dx=3.5,dz=3.5,dy=6,gamemode=!spectator] if score .elevator data matches 1 run title @s subtitle {"translate":"message.purple.map.elevator.up","fallback":"Going UP!"}
execute at @n[tag=elevator.base] positioned ~-2 ~-1 ~-2 as @a[dx=3.5,dz=3.5,dy=6,gamemode=!spectator] if score .elevator data matches -1 run title @s subtitle {"translate":"message.purple.map.elevator.down","fallback":"Going DOWN!"}
execute if score .elevator data matches 1 run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 0.7
execute if score .elevator data matches -1 run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 0.4
scoreboard players add @s stat.used_elevator 1
