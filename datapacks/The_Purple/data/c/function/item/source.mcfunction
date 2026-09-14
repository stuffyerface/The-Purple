execute if items entity @s main:player *[minecraft:custom_data~{id:"THE_PURPLE"}] run return fail

item replace entity @s saddle from entity @s weapon.mainhand main:tech/equip_to_saddle
execute if entity @s[tag=infected] run loot replace entity @s weapon.mainhand loot main:item/the_purple_source
execute if entity @s[tag=corrupted] run loot replace entity @s weapon.mainhand loot main:item/the_purple_spectator
execute if entity @s[tag=!infected,tag=!corrupted] run loot replace entity @s weapon.mainhand loot main:item/the_purple_source
function main:module/item/system/pickup/root
