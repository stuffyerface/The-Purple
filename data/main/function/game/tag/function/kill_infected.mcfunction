execute unless entity @e[type=#main:player,tag=infected] run tellraw @a[tag=debug] ["[Console] ",{"text":"No infected found!","color":"red"}]

# check for totem
execute as @a[tag=infected] if predicate main:has_item/totem_of_undying run function main:message/tagged/totem
execute as @a[tag=infected] if function main:module/miscellaneous/if/has_totem run function main:game/tag/function/player_disinfect

# kill infected players without totem
execute as @a[tag=infected] run advancement grant @s only main:advancement/1_gameplay/mission_failed
execute as @a[tag=infected] run scoreboard players add @s stat.total_deaths_by_round 1
execute as @e[type=zombie,tag=infected] run tag @s add spectator
execute as @e[type=zombie,tag=infected] run function main:module/disconnect/sync/marker
execute as @e[type=#main:player,tag=infected] at @s run function main:module/cosmetic/death_effect/activate
execute as @e[tag=disconnect.zombie,tag=infected,tag=!dying] run tp @s ~ -100 ~
execute as @e[tag=disconnect.zombie,tag=infected,tag=!dying] run kill @s
