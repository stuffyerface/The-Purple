#particle bubble ~ ~ ~ 0 0 0 0 1
execute as @e[type=interaction,tag=settings,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run return run function main:lobby/settings/outline/detect

execute positioned ^ ^ ^0.1 unless entity @s[distance=..6] run return fail
execute positioned ^ ^ ^0.1 if block ~ ~ ~ air run function main:lobby/settings/outline/raycast
