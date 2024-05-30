# error check
execute unless entity @a[tag=source] run tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Source not found!","color":"red"}]

# effects
execute as @a[tag=source] at @s run function animation:splat {"color":"purple"}
execute as @a[tag=source] at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.25
execute as @a[tag=source] run clear @s minecraft:popped_chorus_fruit[minecraft:custom_data={source:1b}]
execute as @a[tag=source] run damage @s 100000000000000000000000000000000000000 minecraft:explosion
execute as @a[tag=source] run tag @s remove source

# reset
scoreboard players reset .time_remaining timer
scoreboard players set .game gameData 0