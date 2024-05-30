execute if score .game gameData matches 1.. run return 0
tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"starting round!"}]
execute as @a at @s run playsound minecraft:block.note_block.pling master @s

execute unless entity @a[tag=source] run tag @a[sort=random,limit=1] add source
execute as @a[tag=source] unless entity @s[nbt={Inventory:[{components: {"minecraft:custom_data": {source: 1b} } }]}] run function item:source

scoreboard players operation .time_remaining timer = .round_length settings
scoreboard players set .game gameData 1