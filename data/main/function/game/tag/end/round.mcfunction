execute if score .game gameData matches 2.. run return fail
scoreboard players set .game gameData 2
scoreboard players reset .time_remaining timer

execute unless entity @e[type=#main:player,tag=source] run tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Source not found!","color":"red"}]

execute as @e[type=#main:player,tag=source] at @s run particle minecraft:block{block_state:"minecraft:purple_wool"} ~ ~ ~ ~ ~ ~ 0.1 10000
execute as @e[type=#main:player,tag=source] at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.25
execute as @e[tag=disconnect.zombie,tag=source] run tp @s ~ -100 ~
execute as @e[tag=disconnect.zombie,tag=source] run kill @s
execute as @a[tag=source] run clear @s minecraft:popped_chorus_fruit[minecraft:custom_data={source:1b}]
execute as @a[tag=source] run damage @s 100000000000000000000000000000000000000 minecraft:explosion
execute as @e[tag=source] run tag @s remove alive
execute as @e[tag=source] run tag @s remove source

scoreboard players set .alive gameData 0
execute as @a[tag=alive] run scoreboard players add .alive gameData 1
execute if score .alive gameData matches 2.. run scoreboard players set .between timer 5
execute if score .alive gameData matches ..1 run tellraw @a [{"text":"[Console] "},{"text":"game over!"}]
execute if score .alive gameData matches ..1 run scoreboard players set .end timer 10
execute if score .alive gameData matches ..1 run scoreboard players reset .alive gameData
