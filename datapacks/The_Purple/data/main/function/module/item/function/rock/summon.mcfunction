execute unless entity @s[tag=rock.arrow] run return run kill @s
execute if score .rock_dupe settings matches 1 if function c:spawn/rock run return run kill @s

execute if entity @s[tag=rock.rock] run loot spawn ~ ~ ~ loot main:item/rock
execute if entity @s[tag=rock.game_rock] run loot spawn ~ ~ ~ loot main:item/game_rock
kill @s
