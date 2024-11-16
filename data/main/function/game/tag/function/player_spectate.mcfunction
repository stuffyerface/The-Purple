tellraw @s ["\n",{"translate":"message.purple.spectate.chat","fallback":"Click here to return to the game!","color":"light_purple","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":[{"translate":"message.purple.spectate.chat_hover","fallback":"Click to /trigger return","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/trigger return"}},"\n"]
function main:game/tag/function/player_reset
gamemode spectator
tag @s add spectator
tag @s add player
bossbar set main:time players @a[tag=player]

scoreboard players set .spectating data 0
execute as @a[tag=spectator] run scoreboard players add .spectating data 1
