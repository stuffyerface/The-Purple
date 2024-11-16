execute if entity @s[gamemode=spectator] run gamemode adventure @s

scoreboard players operation .remove spectator = @s spectator
execute as @e[tag=spectator.detection] if score @s spectator = .remove spectator run kill @s
scoreboard players reset @s spectator
scoreboard players reset .remove spectator
