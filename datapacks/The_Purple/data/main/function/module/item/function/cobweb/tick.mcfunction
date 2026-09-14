# age
execute unless score @s age >= .cobweb_despawn_time settings run return run scoreboard players add @s age 1

# destroy
particle minecraft:item_cobweb ~ ~0.5 ~ 0.2 0.2 0.2 1 10
playsound minecraft:block.cobweb.break block @a[distance=..24] ~ ~ ~ 1 1
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:cobweb strict
kill @s
