## score .game gameData doc
# -1 = between last game end and pregame
#  0 = pregame
#  1 = active game
#  2 = active game, inbetween rounds
execute if score .game gameData matches 1.. run function main:game/timer
execute if score .game gameData matches 0.. as @a[gamemode=!spectator] at @s run function animation:footsteps


# 
execute as @e[type=text_display,tag=footstep] run function main:cosmetic/manage/footstep_entities