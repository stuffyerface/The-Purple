execute as @a[tag=return_to_lobby_confirm] run clear @s
execute as @a[tag=return_to_lobby_confirm] run function main:lobby/player/inventory
tag @a[tag=return_to_lobby_confirm] remove return_to_lobby_confirm
