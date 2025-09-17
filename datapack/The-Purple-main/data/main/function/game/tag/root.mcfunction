# ticking
scoreboard players remove .tick data 1
execute if score .tick data matches -20 run scoreboard players set .tick data 0

# tag stuff
execute if score .tick data matches 0 if score .starting_immunity data matches 0.. run scoreboard players remove .starting_immunity data 1
execute if score .starting_immunity data matches 0 run tellraw @a[tag=player] [{"translate":"message.purple.corrupted.starting_immunity.ended","fallback":"Starting Immunity has worn off!","color":"dark_purple"}]
execute if score .starting_immunity data matches 0 run scoreboard players reset .starting_immunity data
execute if score .tick data matches 0 as @a[scores={tagback_timer=1..}] run scoreboard players remove @s tagback_timer 1
execute as @a[scores={tagback_timer=0}] run scoreboard players reset @s tagback_uuid.0
execute as @a[scores={tagback_timer=0}] run scoreboard players reset @s tagback_uuid.1
execute as @a[scores={tagback_timer=0}] run scoreboard players reset @s tagback_timer

# ready stuff
execute if score .game data matches -1 as @a unless score @s actionbar matches 0.. run title @s actionbar {"translate":"message.purple.ready","fallback":"%s§7/§r%s Players are ready","color":"green","with":[{"score":{"objective":"data","name":".ready"},"color":"yellow"},{"score":{"objective":"data","name":".required"},"color":"yellow"}]}
execute if score .start_countdown data matches 1.. run scoreboard players remove .start_countdown data 1
execute if score .start_countdown data matches 0 if score .tick data matches 0 if score .game data matches -1 run function main:game/tag/start
execute if score .tick data matches 0 run function main:game/tag/function/check_required

# gameplay stuff
execute if score .game data matches -1 run return 0
execute if score .freeze_time data matches 0 run scoreboard players reset .freeze_time data
execute if score .tick data matches 0 if score .freeze_time data matches 1.. run scoreboard players remove .freeze_time data 1
execute if score .tick data matches 0 if score .time data matches 1.. unless score .freeze_time data matches 1.. run scoreboard players remove .time data 1
execute if score .tick data matches 0 if score .time data matches 1.. run tag @a[tag=last_second] remove last_second
execute if score .tick data matches 0 if score .time data matches 1 unless score .freeze_time data matches 2.. run tag @a[tag=infected] add last_second
execute if score .tick data matches 0 if score .time data matches 0.. unless score .game data matches 2.. store result bossbar main:time value run scoreboard players get .time data
execute unless score .game data matches 2.. if score .time data matches 0.. run function main:message/game/timer_bossbar

execute if score .tick data matches 0 if score .time data matches 10 unless score .freeze_time data matches 1.. as @a[tag=player,tag=alive] at @s run stopsound @s * purple:music.main
execute if score .tick data matches 0 if score .time data matches 10 unless score .freeze_time data matches 1.. as @a[tag=player,tag=alive] at @s run playsound purple:music.near_end master @s ~ ~ ~ 0.33
execute if score .tick data matches 0 if score .time data matches 3 unless score .freeze_time data matches 1.. as @a[tag=player] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute if score .tick data matches 0 if score .time data matches 2 unless score .freeze_time data matches 1.. as @a[tag=player] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.75
execute if score .tick data matches 0 if score .time data matches 1 unless score .freeze_time data matches 1.. as @a[tag=player] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5

execute if score .game data matches 1 unless entity @e[tag=source] run function main:game/tag/end_round
execute if score .game data matches 1 if score .time data matches ..0 run function main:game/tag/end_round
execute if score .game data matches 1 run function main:message/game/timer

execute if score .tick data matches 0 run function main:game/tag/function/check_playercount









## when x players are ready, and no game is currently running, run main:game/tag/start
#  - 5s until game starts
#  - teleport all ready players into the selected map
#  - 5s to spread out, during which new players can still ready up to get teleported in
#  - source player(s) are randomly selected
#  - round time starts ticking

## when round time hits 0, run main:game/tag/end_round
#  - kill all infected players
#  - if only 1 player remains, run main:game/tag/end_game, otherwise continue
#  - wait 5s
#  - new source player(s) are randomly selected
#  - round time starts ticking

## if only 1 player is alive, run main:game/tag/end_game
#  - cosmetic victory stuff
#  - wait 5s
#  - run main:game/tag/reset_player as everyone
