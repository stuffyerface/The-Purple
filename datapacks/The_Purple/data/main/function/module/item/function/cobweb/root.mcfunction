advancement revoke @s only main:triggers/items/cobweb

# attempt to place cobweb
execute at @n[tag=new_cobweb] if block ~ ~ ~ #minecraft:air run setblock ~ ~ ~ minecraft:cobweb strict
execute at @n[tag=new_cobweb] unless block ~ ~ ~ minecraft:cobweb run kill @n[tag=new_cobweb]
execute at @n[tag=new_cobweb] positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[tag=!new_cobweb,tag=cobweb,dx=0] run kill @n[tag=new_cobweb]
execute unless entity @n[tag=new_cobweb] run return run loot give @s[gamemode=!creative] loot main:item/cobweb

# clean up
tag @n[tag=new_cobweb] remove new_cobweb
playsound minecraft:block.cobweb.place player @s ~ ~ ~ 1 0.8
scoreboard players add @s stat.item.cobweb 1
