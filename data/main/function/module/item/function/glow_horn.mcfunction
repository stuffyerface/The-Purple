advancement revoke @s only main:triggers/items/glow_horn
execute if entity @s[tag=item.glow_horn] run return fail

execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"GLOW_HORN"}}}}] run clear @s minecraft:goat_horn[minecraft:custom_data={id:"GLOW_HORN"}] 1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"GLOW_HORN"}}}}] store result score .item_count dummy run data get entity @s SelectedItem.count
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"GLOW_HORN"}}}}] run scoreboard players remove .item_count dummy 1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"GLOW_HORN"}}}}] run item replace entity @s weapon.mainhand from entity @s weapon.mainhand main:set_count
execute if entity @s run scoreboard players add @s stat.item.glow_horn 1

tag @s add item.glow_horn
execute if entity @s run return run schedule function main:module/item/function/glow_horn 30t

execute as @a[tag=item.glow_horn] at @s as @a[tag=!corrupted,gamemode=!spectator,distance=..100] at @s run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2
execute as @a[tag=item.glow_horn] at @s as @a[tag=!corrupted,gamemode=!spectator,distance=..100] at @s run effect give @s glowing 10 0 false
tag @a remove item.glow_horn
