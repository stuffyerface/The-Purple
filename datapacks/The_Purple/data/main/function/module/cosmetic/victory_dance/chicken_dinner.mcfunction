item replace entity @s saddle from entity @s weapon.mainhand main:tech/equip_to_saddle
loot replace entity @s weapon.mainhand loot main:item/chicken_dinner
function main:module/item/system/pickup/root

stopsound @a[tag=player] * purple:music.dead
playsound minecraft:music_disc.lava_chicken record @a[tag=player,distance=..100] ~ ~ ~ 100
