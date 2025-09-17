# ticking
#scoreboard players remove .sound_tick dummy 1
#execute if score .sound_tick dummy matches -20 run scoreboard players set .sound_tick dummy 0

execute as @a[scores={sound.darkness=1..}] at @s run function main:module/sound/effect/darkness
execute as @a[scores={sound.darkness=..0}] at @s run scoreboard players reset @s sound.darkness
