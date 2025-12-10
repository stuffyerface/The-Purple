# create marker
tag @s add register_this_player
summon marker ~ ~ ~ {Tags:["id.marker.new"],CustomName:{"color":"gray","text":"Loading..."}}
summon text_display ~ ~ ~ {Tags:["id.marker.new_name"],text:{"text":"Loading..."},alignment:"center"}
execute as @e[tag=id.marker.new_name] at @s run data merge entity @s {text:{"selector":"@p[tag=register_this_player]"}}
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
gamemode adventure @s
advancement grant @s only main:advancement/1_gameplay/root
attribute @s minecraft:waypoint_receive_range base set 0.01
scoreboard players enable @s secret
scoreboard players enable @s version
scoreboard players set @s version -2147483648
scoreboard players set @s color 10
execute store result score @s source_ability run random value 1..5
execute store result score @s spectator_ability run random value 1..6
execute store result score @s death_effect run random value 1..3
execute store result score @s victory_dance run random value 1..3
function main:lobby/player/inventory
function c:tp/lobby
function main:message/lobby/first_join

# allows access to cycling cosmetic beacon color
execute if predicate main:special/vip run tag @s add vip

# recalculate overall player things
function main:game/tag/function/check_required

# default stats
scoreboard players add @s stat.total_games 0
scoreboard players add @s stat.total_wins 0
scoreboard players add @s stat.total_rounds 0
scoreboard players add @s stat.total_deaths 0
scoreboard players add @s stat.total_deaths_by_round 0
scoreboard players add @s stat.total_deaths_by_quicksand 0
scoreboard players add @s stat.total_revives 0
scoreboard players add @s stat.infection_received 0
scoreboard players add @s stat.infection_passed 0
scoreboard players add @s stat.used_elevator 0
scoreboard players add @s stat.found_items 0
scoreboard players add @s stat.item.small_mushroom 0
scoreboard players add @s stat.item.glow_horn 0
scoreboard players add @s stat.item.safety_vest 0
scoreboard players add @s stat.item.freeze_time 0
scoreboard players add @s stat.item.prison_key 0
scoreboard players add @s stat.item.compass 0
scoreboard players add @s stat.item.antidote 0
scoreboard players add @s stat.item.instant_chorus_fruit 0
scoreboard players add @s stat.item.totem_of_undying 0
scoreboard players add @s stat.item.ender_pearl 0
scoreboard players add @s stat.item.trident 0
scoreboard players add @s stat.item.wind_charge 0
scoreboard players add @s stat.item.smoke_bomb 0
scoreboard players add @s stat.item.revival_potion 0
scoreboard players add @s stat.item.decoy 0
scoreboard players add @s stat.item.rock 0
scoreboard players add @s stat.item.edible_rock 0
scoreboard players add @s stat.fish.glowing_minnow 0
scoreboard players add @s stat.fish.squishscale 0
scoreboard players add @s stat.fish.crimson_drifter 0
scoreboard players add @s stat.fish.purple_shellfish 0
scoreboard players add @s stat.fish.broken_fishing_rod 0
scoreboard players add @s stat.fish.sunken_raft 0
scoreboard players add @s stat.fish.discarded_fuel_rod 0
scoreboard players add @s stat.fish.lost_soil_sample 0
scoreboard players add @s stat.fish.old_brush 0
scoreboard players add @s stat.fish.diving_mask 0
scoreboard players add @s stat.fish.oxygen_tank 0
scoreboard players add @s stat.fish.wetsuit_pants 0
scoreboard players add @s stat.fish.wetsuit_fins 0
