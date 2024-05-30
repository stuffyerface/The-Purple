## score .game gameData doc
# -1 = between last game end and pregame
#  0 = pregame
#  1 = active game
#  2 = active game, inbetween rounds
execute if score .game gameData matches 1.. run function main:game/timer
execute if score .game gameData matches 0.. as @a[gamemode=!spectator] at @s run function animation:footsteps
# 
execute as @e[type=text_display,tag=footstep] run function main:cosmetic/manage/footstep_entities


# settings raycast
execute as @a[tag=within_setting_board_boundries] if entity @s[nbt={Attributes:[{Modifiers:[{Name:"setting_board"}]}]}] run attribute @s minecraft:player.entity_interaction_range modifier remove aeb0f531-d340-4bc8-aca4-e82b3234bc9c
tag @a[tag=within_setting_board_boundries] remove within_setting_board_boundries
execute at @e[type=text_display,tag=setting.board] positioned ~-4.5 ~-0.1 ~-0.505 as @a[gamemode=!spectator,dx=8,dy=4,dz=4,limit=5,sort=nearest] run function main:lobby/settings/root
execute as @e[tag=setting_ephemeral] if score @s age matches 1.. run kill @s
scoreboard players add @e[type=text_display,tag=setting_ephemeral] age 1
