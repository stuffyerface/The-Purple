advancement revoke @s only main:triggers/game/tagged

## returns

# distance check (disabled since it blocks tridents)
#execute on attacker unless entity @s[distance=..6] run scoreboard players set @s actionbar 30
#execute on attacker unless entity @s[distance=..6] run title @s actionbar [{"translate":"message.purple.impossible_reach","fallback":"Your arms are too long!","color":"red"}]
#execute on attacker unless entity @s[distance=..6] run return run tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"},{"text":" triggered a distance check","color":"dark_red"}]

# if already tagged, return
execute unless entity @s[tag=player] unless entity @s[tag=disconnect.zombie] at @s on attacker run return run function main:message/tagged/invalid_target
execute if entity @s[tag=source] at @s on attacker run return run function main:message/tagged/already_infected
execute if entity @s[tag=corrupted] at @s on attacker run return run function main:message/tagged/already_dead
execute on attacker if entity @s[tag=dying] run return fail

# [safety vest item] if the hit gets cancelled, return
execute if predicate main:has_item/safety_vest at @s run scoreboard players add @s stat.item.safety_vest 1
execute if predicate main:has_item/safety_vest at @s run function main:message/tagged/safety_vest
execute if predicate main:has_item/safety_vest at @s run playsound minecraft:entity.item.break player @a[distance=..20] ~ ~ ~ 1 1 
execute if predicate main:has_item/safety_vest at @s run particle item{item:"leather_chestplate"} ^ ^1.4 ^0.5 0 0.1 0 0.05 5 force
execute if predicate main:has_item/safety_vest at @s run return run item replace entity @s armor.chest with air

# [starting immunity setting] if immune, return
execute if score .starting_immunity data matches 1.. run playsound minecraft:item.shield.block player @a[distance=..10]
execute if score .starting_immunity data matches 1.. on attacker run return run function main:message/tagged/immune

# [tagback setting] if you just tagged this player, return
execute unless score .alive data matches ..2 if score .tagback settings matches 0.. on attacker if score @s tagback_timer matches -1 run scoreboard players operation @s tagback_timer = .tagback settings
execute unless score .alive data matches ..2 store result score .me tagback_uuid.0 run data get entity @s UUID[0]
execute unless score .alive data matches ..2 store result score .me tagback_uuid.1 run data get entity @s UUID[1]
execute unless score .alive data matches ..2 at @s on attacker if score @s tagback_uuid.0 = .me tagback_uuid.0 if score @s tagback_uuid.1 = .me tagback_uuid.1 run playsound minecraft:item.shield.block player @a[distance=..10]
execute unless score .alive data matches ..2 at @s on attacker if score @s tagback_uuid.0 = .me tagback_uuid.0 if score @s tagback_uuid.1 = .me tagback_uuid.1 run return run function main:message/tagged/no_tagbacks

# [double tap setting] if you didnt tag this player enough, return
execute store result score .me double_tap_uuid.0 run data get entity @s UUID[0]
execute store result score .me double_tap_uuid.1 run data get entity @s UUID[1]
execute on attacker unless score @s double_tap matches 0.. run scoreboard players operation @s double_tap = .double_tap settings
execute on attacker if score @s double_tap = .double_tap settings run scoreboard players remove @s double_tap 1
execute on attacker if score @s double_tap_uuid.0 = .me double_tap_uuid.0 if score @s double_tap_uuid.1 = .me double_tap_uuid.1 run scoreboard players remove @s double_tap 1
execute on attacker store result score @s double_tap_uuid.0 run scoreboard players get .me double_tap_uuid.0
execute on attacker store result score @s double_tap_uuid.1 run scoreboard players get .me double_tap_uuid.1
execute at @s on attacker unless score @s double_tap matches ..0 run return run function main:message/tagged/double_tap

## success
# apply settings
scoreboard players operation @s tagback_timer = .tagback settings
execute store result score @s tagback_uuid.0 on attacker run data get entity @s UUID[0]
execute store result score @s tagback_uuid.1 on attacker run data get entity @s UUID[1]
execute on attacker if score @s double_tap matches ..0 run scoreboard players reset @s double_tap_uuid.0
execute on attacker if score @s double_tap matches ..0 run scoreboard players reset @s double_tap_uuid.1
execute on attacker if score @s double_tap matches ..0 run scoreboard players reset @s double_tap
execute if score .time data <= .increase_timer settings run tellraw @a[tag=debug] ["[Console] ",{"text":"Increased time to "},{"score":{"objective":"settings","name":".increase_timer"},"color":"green"},{"text":"s!","color":"green"}]
execute if score .time data <= .increase_timer settings run scoreboard players operation .time_added dummy = .increase_timer settings
execute if score .time data <= .increase_timer settings run scoreboard players operation .time_added dummy -= .time data
execute if score .time data <= .increase_timer settings run scoreboard players operation .time data = .increase_timer settings
execute unless score .alive data matches ..2 unless score .tagback settings matches 0 run function main:message/tagged/no_tagback_title

# as victim
function main:module/cosmetic/explosion
function main:message/tagged/infected_by_source
effect give @s speed infinite 1 true
tag @s add source
tag @s add infected
tag @s add has_been_infected
function c:item/source
function main:id/team/set_color
function main:module/disconnect/sync/marker
execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["elevator.chair"]}}}] run ride @s dismount
scoreboard players add @s stat.infection_received 1
advancement grant @s only main:advancement/1_gameplay/infectious_disease

# as attacker
execute on attacker run tag @s remove source
execute on attacker run tag @s remove infected
execute on attacker run effect clear @s speed
execute on attacker run clear @s *[minecraft:custom_data={id:"THE_PURPLE"}]
execute on attacker run function main:id/team/set_color
execute on attacker run function main:module/disconnect/sync/marker
execute on attacker run function main:module/source/reset
execute on attacker run scoreboard players add @s stat.infection_passed 1
execute at @s on attacker if entity @s[distance=30..] run advancement grant @s only main:advancement/2_challenge/long_distance

