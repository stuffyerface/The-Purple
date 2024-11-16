tag @s add test_this_player
execute if entity @s[advancements={main:triggers/game/transfer_interaction={lc=true}}] as @e[type=interaction,tag=spectator.detection] on attacker if entity @s[tag=test_this_player] run tag @n[type=interaction,tag=spectator.detection] add modify_this_entity
execute if entity @s[advancements={main:triggers/game/transfer_interaction={rc=true}}] as @e[type=interaction,tag=spectator.detection] on target if entity @s[tag=test_this_player] run tag @n[type=interaction,tag=spectator.detection] add modify_this_entity
advancement revoke @s only main:triggers/game/transfer_interaction

execute as @e[tag=modify_this_entity] at @s if entity @n[type=interaction,tag=item.display,dx=0] run tag @a[tag=test_this_player] add pickup_item
execute as @e[tag=modify_this_entity] at @s if entity @n[type=interaction,tag=item.display,dx=0] run data modify entity @n[type=interaction,tag=item.display,dx=0] attack set from entity @s attack
execute as @e[tag=modify_this_entity] at @s if entity @n[type=interaction,tag=item.display,dx=0] run data modify entity @n[type=interaction,tag=item.display,dx=0] interaction set from entity @s interaction
execute as @e[tag=modify_this_entity] run data remove entity @s attack
execute as @e[tag=modify_this_entity] run data remove entity @s interaction
execute as @e[tag=modify_this_entity] run tag @s remove modify_this_entity

execute as @a[tag=pickup_item] run advancement grant @s only main:triggers/items/pickup_item
tag @s remove test_this_player
tag @s remove pickup_item
