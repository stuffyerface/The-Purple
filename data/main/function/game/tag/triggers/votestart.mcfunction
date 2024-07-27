execute unless score .pregame timer matches 1.. run return run advancement revoke @s only main:triggers/game/votestart
execute if score @s votestart matches 1.. run return run advancement revoke @s only main:triggers/game/votestart
execute if entity @s[advancements={main:triggers/game/votestart={start_now=true}}] run function main:game/tag/vote/start
execute if entity @s[advancements={main:triggers/game/votestart={cancel_start=true}}] run function main:game/tag/vote/cancel
advancement revoke @s only main:triggers/game/votestart
scoreboard players set @s votestart 20

# logic
scoreboard players reset .players votestart
scoreboard players reset .start_now votestart
scoreboard players reset .cancel_start votestart
execute as @a run scoreboard players add .players votestart 1
execute as @a[tag=start_now] run scoreboard players add .start_now votestart 1
execute as @a[tag=cancel_start] run scoreboard players add .cancel_start votestart 1

# start now
scoreboard players operation .calc votestart = .players votestart
scoreboard players operation .calc votestart -= .start_now votestart
execute if score .calc votestart <= .start_now votestart run tellraw @a [{"text":"Starting now!","color":"green","bold":true}]
execute if score .calc votestart <= .start_now votestart run clear @a minecraft:lime_dye[minecraft:custom_data={start_now:1b}]
execute if score .calc votestart <= .start_now votestart run clear @a minecraft:gray_dye[minecraft:custom_data={cancel_start:1b}]
execute if score .calc votestart <= .start_now votestart run tag @a remove start_now
execute if score .calc votestart <= .start_now votestart run tag @a remove cancel_start
execute if score .calc votestart <= .start_now votestart run scoreboard players set .pregame timer 1
scoreboard players reset .calc votestart

# cancel start
scoreboard players operation .calc votestart = .players votestart
scoreboard players operation .calc votestart -= .cancel_start votestart
execute if score .calc votestart <= .cancel_start votestart run tellraw @a [{"text":"Game cancelled!","color":"red","bold":true}]
execute if score .calc votestart <= .cancel_start votestart run function main:game/tag/reset
scoreboard players reset .calc votestart
