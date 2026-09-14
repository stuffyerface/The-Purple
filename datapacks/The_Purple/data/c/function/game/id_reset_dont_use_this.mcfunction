tellraw @s ["[Console] ",{"text":"ID reset.","color":"red"}]


scoreboard players operation .reset_id dummy = @s id
execute as @e[tag=id.marker] if score @s id = .reset_id dummy run kill @s
scoreboard players reset @s id
