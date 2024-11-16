scoreboard players operation @s source_ability_timer = .ability_darkness settings
function main:message/source/darkness

tag @s add dont_blind_me
effect give @a[sort=nearest,limit=5,distance=..20,tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator,tag=!dont_blind_me] minecraft:darkness 10 0
scoreboard players set @a[sort=nearest,limit=5,distance=..20,tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator,tag=!dont_blind_me] sound.darkness 400
tag @s remove dont_blind_me
