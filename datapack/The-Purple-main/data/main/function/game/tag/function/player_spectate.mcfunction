tellraw @s ["\n",{"translate":"message.purple.spectate.chat","fallback":"Click here to return to the game!","color":"light_purple","bold":true,"underlined":true,"hover_event":{"action":"show_text","value":[{"translate":"message.purple.spectate.chat_hover","fallback":"Click to /trigger return","color":"yellow"}]},"click_event":{"action":"run_command","command":"/trigger return"}},"\n"]
execute unless entity @s[tag=was_in_game] run scoreboard players add .players data 1
execute unless entity @s[tag=player] at @s run function main:game/tag/function/player_reset
execute unless entity @s[tag=player] at @s run stopsound @s * purple:music.dead
execute unless entity @s[tag=player] at @s run playsound purple:music.dead master @s ~ ~ ~ 0.33
gamemode spectator
tag @s add spectator
tag @s add player
tag @s add was_in_game
bossbar set main:time players @a[tag=player]

scoreboard players set .spectating data 0
execute as @a[tag=spectator] run scoreboard players add .spectating data 1
