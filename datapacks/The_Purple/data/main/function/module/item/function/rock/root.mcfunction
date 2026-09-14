advancement revoke @s only main:triggers/items/rock
scoreboard players add @s stat.item.rocks 1
scoreboard players add @s stat.item.rock 1
swing

# throw!
function main:module/item/function/rock/throw
execute positioned ~ ~1.6 ~ run function main:module/item/function/rock/macro with storage main:dummy rock
