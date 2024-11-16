scoreboard players operation .tp spectator = @s spectator
execute positioned ~ ~1 ~ as @e[tag=spectator.detection] if score @s spectator = .tp spectator run return run tp @s ^ ^ ^3 ~ ~
