stopsound @a[tag=player] * purple:music.dead
execute as @a[tag=player,tag=!alive] at @s run playsound purple:music.dead master @s ~ ~ ~ 0.33
schedule function main:module/music/loop/dead_theme 130s replace
