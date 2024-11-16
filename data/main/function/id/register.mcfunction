# create marker
tag @s add register_this_player
summon marker ~ ~ ~ {Tags:["id.marker.new"],CustomName:'{"color":"gray","text":"Loading..."}'}
summon text_display ~ ~ ~ {Tags:["id.marker.new_name"],text:'{"text":"Loading..."}',alignment:"center"}
execute as @e[tag=id.marker.new_name] at @s run data merge entity @s {text:'{"selector":"@p[tag=register_this_player]"}'}
execute as @e[tag=id.marker.new] run data modify entity @s CustomName set from entity @n[type=text_display,tag=id.marker.new_name] text
kill @e[tag=id.marker.new_name]
tag @s remove register_this_player

# register your id
scoreboard players add .recent id 1
scoreboard players operation @e[tag=id.marker.new] id = .recent id
scoreboard players operation @s id = .recent id
execute as @e[tag=id.marker.new] run data merge entity @s {Tags:["id.marker"]}

# register your team
execute store result storage main:id recent.id int 1 run scoreboard players get @s id
function main:id/team/create_new with storage main:id recent

# set defaults
advancement grant @s only main:advancement/1_gameplay/root
scoreboard players enable @s secret
scoreboard players set @s color 10
execute store result score @s source_ability run random value 1..5
execute store result score @s spectator_ability run random value 1..6
execute store result score @s death_effect run random value 1..3
execute store result score @s victory_dance run random value 1..3
execute if predicate main:vip_list/admin run tag @s add admin
execute if predicate main:vip_list/vip run tag @s add vip
function main:lobby/player/inventory
function c:tp/lobby

# recalculate overall player things
function main:game/tag/function/check_required
