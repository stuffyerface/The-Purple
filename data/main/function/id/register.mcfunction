# create marker
summon marker ~ ~ ~ {Tags:["id.marker.new"],CustomName:'{"color":"gray","text":"Loading..."}'}
summon text_display ~ ~ ~ {Tags:["id.marker.new_name"],text:'{"text":"Loading..."}'}
execute as @e[tag=id.marker.new_name] at @s run data merge entity @s {text:'{"selector":"@p[dx=0]"}'}
execute as @e[tag=id.marker.new] run data modify entity @s CustomName set from entity @n[type=text_display,tag=id.marker.new_name] text
kill @e[tag=id.marker.new_name]

# register your id
scoreboard players add .recent id 1
scoreboard players operation @e[tag=id.marker.new] id = .recent id
scoreboard players operation @s id = .recent id
execute as @e[tag=id.marker.new] run data merge entity @s {Tags:["id.marker"]}

# register your team and default color
data modify storage main:id recent.color set value "AA00AA"
execute store result storage main:id recent.id int 1 run scoreboard players get @s id
function main:id/team/create_new with storage main:id recent

execute unless data storage main:id color[0] run data modify storage main:id color append value "000000"
data modify storage main:id color append from storage main:id recent.color
