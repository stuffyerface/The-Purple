advancement revoke @s only main:triggers/game/tag_logout

tag @s add tagged_a_logout
execute as @e[tag=disconnect.zombie] at @s on attacker if entity @s[tag=tagged_a_logout] as @n[tag=disconnect.zombie,dx=0] run function main:game/tag/triggers/tagged
tag @s remove tagged_a_logout
