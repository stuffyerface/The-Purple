advancement revoke @s only main:triggers/items/compass

execute if entity @s[scores={item.compass=0..}] run return fail
scoreboard objectives add item.compass dummy
scoreboard players add @s item.compass 10
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":4}}}] run return run function main:message/item/compass

tag @s add item.compass_tracker
scoreboard players add @s stat.item.compass 1
scoreboard players set @s cooldown.locator_bar 100
attribute @s minecraft:waypoint_receive_range base set 500
execute if entity @s[tag=source] as @p[tag=player,tag=!corrupted,tag=!source,gamemode=!spectator] run tag @s add item.compass_tracked
execute if entity @s[tag=!source] as @p[tag=player,tag=!corrupted,tag=source,gamemode=!spectator] run tag @s add item.compass_tracked
function main:message/item/compass

execute unless entity @p[tag=item.compass_tracked] run data merge storage main:dummy {item:{compass:{dimension:"missing:no",pos:[I;0,0,0]}}}
execute as @p[tag=item.compass_tracked] run data modify storage main:dummy item.compass.dimension set from entity @s Dimension
execute as @p[tag=item.compass_tracked] run data modify storage main:dummy item.compass.pos set from entity @s Pos
execute as @p[tag=item.compass_tracked] at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 1 2
execute as @p[tag=item.compass_tracked] run effect give @s glowing 2 0 true
execute as @p[tag=item.compass_tracked] run tag @s remove item.compass_tracked
playsound minecraft:item.lodestone_compass.lock player @a[distance=..20] ~ ~ ~ 1 0.75
tag @s remove item.compass_tracker

function main:module/item/function/compass_macro with storage main:dummy item.compass
