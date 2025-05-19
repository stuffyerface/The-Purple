stopsound @a[tag=player] * purple:music.main
execute as @a[tag=player,tag=alive] at @s run playsound purple:music.main master @s ~ ~ ~ 0.33
schedule function main:module/music/loop/main_theme 130s replace
