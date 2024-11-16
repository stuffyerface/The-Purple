advancement revoke @s only main:triggers/items/freeze_time

execute unless score .game data matches 1 run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1.5
execute unless score .game data matches 1 run function main:message/item/freeze_time
execute unless score .game data matches 1 run return 0
execute if score .freeze_time data matches 26.. run return 0
execute unless score .freeze_time data matches 26.. run scoreboard players add .freeze_time data 5
function main:message/item/freeze_time
particle item{item:"clock"} ^ ^1.4 ^0.5 0 0.1 0 0.05 5 force
playsound minecraft:entity.item.break player @s
execute as @a[tag=player] at @s run playsound minecraft:entity.skeleton.converted_to_stray player @s ~ ~ ~ 1 1.5
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"FREEZE_TIME"}}}}] run item replace entity @s weapon.offhand with air
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"FREEZE_TIME"}}}}] run item replace entity @s weapon.mainhand with air
scoreboard players add @s stat.item.freeze_time 1
