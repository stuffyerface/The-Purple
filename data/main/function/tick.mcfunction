## score .game gameData doc
# -1 = game not running
#  0 = during pregame
#  1 = active game
#  2 = active game, inbetween rounds
scoreboard players add .world gameData 1

# ticking functions
function main:id/root

# ticking modules
execute unless score .disconnect disable matches 1 run function main:module/disconnect/root
execute unless score .footsteps disable matches 1 run function main:module/footsteps/root
execute unless score .quicksand disable matches 1 run function main:module/quicksand/root
execute unless score .item disable matches 1 run function main:module/item/system/root

# setting board
execute at @e[tag=setting.board] positioned ~-4.5 ~-0.1 ~-0.505 as @a[dx=8,dy=4,dz=4,gamemode=!spectator,tag=!within_setting_board_boundries] run function main:lobby/settings/trigger
execute as @a[tag=within_setting_board_boundries] at @s run function main:lobby/settings/root
execute as @e[tag=setting_ephemeral,scores={age=1..}] run kill @s
scoreboard players add @e[type=text_display,tag=setting_ephemeral] age 1

# always active
execute as @a[scores={actionbar=0..}] run scoreboard players remove @s actionbar 1


## needs cleaning
#------------------------------------------------------------------------------------------------------------------------------------------------
execute if score .game gameData matches 0.. run function main:game/tag/root
execute as @a[scores={votestart=1..}] run scoreboard players remove @s votestart 1
execute as @a[scores={votestart=0}] run scoreboard players reset @s votestart

# preview
execute if entity @a[scores={preview=0..},gamemode=spectator] run function main:lobby/settings/preview/root

# test world
effect give @a[nbt=!{active_effects:[{id:"minecraft:saturation"}]}] minecraft:saturation infinite 255 true

# testing

