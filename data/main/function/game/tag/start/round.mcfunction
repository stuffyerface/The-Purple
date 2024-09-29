scoreboard players set .game gameData 1
scoreboard players add .round gameData 1
scoreboard players reset .between timer
scoreboard players operation .time_remaining timer = .round_length settings
execute unless score .starting_immunity settings matches 0 run scoreboard players operation .starting_immunity timer = .starting_immunity settings

execute as @a run function main:message/game/round_start
execute as @a at @s run playsound minecraft:block.note_block.pling master @s

execute if score .alive gameData matches 4.. as @a[tag=alive] run function c:tp/map_1
execute if score .alive gameData matches 1.. run tag @a[limit=1,sort=random,tag=alive,tag=!source] add source
execute if score .alive gameData matches 4.. run tag @a[limit=1,sort=random,tag=alive,tag=!source] add source
execute if score .alive gameData matches 6.. run tag @a[limit=1,sort=random,tag=alive,tag=!source] add source
execute if score .alive gameData matches 8.. run tag @a[limit=1,sort=random,tag=alive,tag=!source] add source
execute as @a[tag=source] unless entity @s[nbt={Inventory:[{components: {"minecraft:custom_data": {source: 1b} } }]}] run function c:item/source
execute as @a run function main:module/disconnect/sync/marker
