# revive
clear @s
effect clear @s
tag @s remove infected
tag @s remove source
tag @s remove spectator
tag @s remove corrupted
tag @s add player
tag @s add alive
tag @s add has_been_revived
tag @s add has_used_healing_items
stopsound @s * purple:music.dead
execute if score .time data matches 11.. at @s run playsound purple:music.main master @s ~ ~ ~ 0.33
execute if score .time data matches 1..10 at @s run playsound purple:music.near_end master @s ~ ~ ~ 0.33
function main:id/team/set_color
function main:module/disconnect/sync/marker
function main:module/item/function/reset
function main:message/game/revive
function main:module/cosmetic/space_helmet
attribute @s minecraft:scale modifier remove purple:corrupted
attribute @s minecraft:waypoint_receive_range base set 0.01
gamemode adventure
scoreboard players add @s stat.total_revives 1

execute if block ~ ~-1 ~ #minecraft:air if block ~ ~-2 ~ #minecraft:air if block ~ ~-3 ~ #minecraft:air run function c:tp/current_location
execute unless block ~ ~ ~ #minecraft:air unless block ~ ~1 ~ #minecraft:air run function c:tp/current_location

scoreboard players set .spectating data 0
execute as @a[tag=spectator] run scoreboard players add .spectating data 1