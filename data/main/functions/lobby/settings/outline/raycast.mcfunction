<<<<<<< HEAD
#particle bubble ~ ~ ~ 0 0 0 0 1
execute as @e[type=interaction,tag=settings,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run return run function main:lobby/settings/outline/detect

execute positioned ^ ^ ^0.1 unless entity @s[distance=..6] run return fail
execute positioned ^ ^ ^0.1 if block ~ ~ ~ air run function main:lobby/settings/outline/raycast
=======
#particle bubble ~ ~ ~ 0 0 0 0 1
execute as @e[type=interaction,tag=settings,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run return run function main:lobby/settings/outline/detect

execute positioned ^ ^ ^0.1 unless entity @s[distance=..6] run return fail
execute positioned ^ ^ ^0.1 if block ~ ~ ~ air run function main:lobby/settings/outline/raycast
>>>>>>> 8e1a5a003a5a873d2b78300003709fbbb3c13948
