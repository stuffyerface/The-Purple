advancement revoke @s only main:triggers/game/tagged_by_draconic_beast
execute if entity @s[tag=corrupted] run return fail
execute if entity @s[tag=dying] run return fail
execute if entity @s[tag=!player] run return fail

# as victim
#effect give @s minecraft:speed 5 1
particle minecraft:item{item:"minecraft:cooked_beef"} ~ ~1 ~ 0.3 0.3 0.3 0 10 force
function main:module/cosmetic/death_effect/activate
scoreboard players add @s stat.total_deaths_by_consumption 1

# as attacker
execute on attacker at @s run playsound minecraft:entity.generic.eat player @a[distance=..100] ~ ~ ~ 1 0.5
execute on attacker at @s run playsound minecraft:entity.player.burp player @a[distance=..100] ~ ~ ~ 1 0.8
execute on attacker run scoreboard players add @s stat.item.draconic_essence.players_consumed 1
