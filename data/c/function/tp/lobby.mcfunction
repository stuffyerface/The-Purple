execute in minecraft:overworld run tp @s -23 16 -5 180 0
execute in minecraft:overworld run spawnpoint @s -23 16 -5 180
execute in minecraft:overworld run spreadplayers -23 -5 0 7 false @s

# redirect to setting board if you were previewing a map
execute if score @s preview matches 1.. run function c:tp/setting_board
