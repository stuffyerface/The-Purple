# set region data
execute in minecraft:overworld positioned -23 16 -5 run setworldspawn ~ ~ ~
execute in minecraft:overworld positioned 1000000 0 1000000 run forceload add ~ ~
execute in minecraft:overworld positioned 1000000 0 1000000 run setblock ~ ~ ~ minecraft:barrel
