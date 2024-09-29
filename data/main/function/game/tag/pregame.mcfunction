execute if score .game gameData matches 0.. run return fail
scoreboard players set .game gameData 0
scoreboard players set .pregame timer 30

execute as @a run function main:message/settings_breakdown
execute as @a run function main:message/game/pregame_announcement
execute as @a[gamemode=!spectator] run function c:item/votestart

execute as @a at @s run playsound minecraft:block.note_block.pling master @s



# 
#! pregame
## start countdown
#! start_game
## tag players
## teleport players
#! start_round
## start timer
## choose source
#! end_round
## kill source
## count remaining players
#! end_game
# 
