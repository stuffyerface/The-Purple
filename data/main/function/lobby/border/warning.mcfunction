execute if entity @s[tag=dev] unless function main:lobby/border/disable_dev_bypass run return fail

execute unless block ~ -41 ~ tinted_glass run particle falling_dust{block_state:"minecraft:amethyst_block"} ~ ~ ~ 5 5 5 0 50 normal @s
execute if block ~ -40 ~ bedrock run return run function main:lobby/border/outside

title @s actionbar {"color":"red","translate":"message.purple.border.warning","fallback":"You left the safe zone! Turn back now!"}
scoreboard players set @s actionbar 2

scoreboard players add @s lobby.border 1
attribute @s minecraft:movement_speed modifier remove lobby:border
execute if score @s lobby.border matches 20..60 run attribute @s minecraft:movement_speed modifier add lobby:border -0.2 add_multiplied_total
execute if score @s lobby.border matches 60..100 run attribute @s minecraft:movement_speed modifier add lobby:border -0.4 add_multiplied_total
execute if score @s lobby.border matches 100..200 run attribute @s minecraft:movement_speed modifier add lobby:border -0.6 add_multiplied_total
execute if score @s lobby.border matches 200.. run attribute @s minecraft:movement_speed modifier add lobby:border -0.8 add_multiplied_total
attribute @s minecraft:gravity modifier add lobby:border -0.5 add_multiplied_total
