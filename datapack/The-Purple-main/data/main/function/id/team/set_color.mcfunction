execute store result storage main:id recent.id int 1 run scoreboard players get @s id
execute unless score @s color matches 0..15 run data modify storage main:id recent.color set value "AA00AA"
execute if score @s color matches 0 run data modify storage main:id recent.color set value "FFFFFF"
execute if score @s color matches 1 run data modify storage main:id recent.color set value "FFAA00"
execute if score @s color matches 2 run data modify storage main:id recent.color set value "FF55FF"
execute if score @s color matches 3 run data modify storage main:id recent.color set value "55FFFF"
execute if score @s color matches 4 run data modify storage main:id recent.color set value "FFFF55"
execute if score @s color matches 5 run data modify storage main:id recent.color set value "55FF55"
execute if score @s color matches 6 run data modify storage main:id recent.color set value "FFCCCC"
execute if score @s color matches 7 run data modify storage main:id recent.color set value "555555"
execute if score @s color matches 8 run data modify storage main:id recent.color set value "AAAAAA"
execute if score @s color matches 9 run data modify storage main:id recent.color set value "00AAAA"
execute if score @s color matches 10 run data modify storage main:id recent.color set value "AA00AA"
execute if score @s color matches 11 run data modify storage main:id recent.color set value "5555FF"
execute if score @s color matches 12 run data modify storage main:id recent.color set value "B4684D"
execute if score @s color matches 13 run data modify storage main:id recent.color set value "00AA00"
execute if score @s color matches 14 run data modify storage main:id recent.color set value "FF5555"
execute if score @s color matches 15 run data modify storage main:id recent.color set value "000000"
function main:id/team/set_color_macro with storage main:id recent

#  0 FFFFFF white
#  1 FFAA00 orange
#  2 FF55FF magenta
#  3 55FFFF light_blue
#  4 FFFF55 yellow
#  5 55FF55 lime
#  6 FFCCCC pink
#  7 555555 gray
#  8 AAAAAA light_gray
#  9 00AAAA cyan
# 10 AA00AA purple
# 11 5555FF blue
# 12 B4684D brown
# 13 00AA00 green
# 14 FF5555 red
# 15 000000 black