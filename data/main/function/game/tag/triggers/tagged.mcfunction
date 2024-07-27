advancement revoke @s only main:triggers/game/tagged

## returns
# if already tagged, return
execute if entity @s[tag=source] at @s on attacker run return run function main:message/tagged/already_infected

# [starting immunity setting] if immune, return
execute if score .starting_immunity timer matches 1.. run playsound minecraft:item.shield.block player @a[distance=..10]
execute if score .starting_immunity timer matches 1.. on attacker run return run function main:message/tagged/immune

# [tagback setting] if you just tagged this player, return
execute if score .tagback settings matches 0.. on attacker if score @s tagback_timer matches -1 run scoreboard players operation @s tagback_timer = .tagback settings
execute store result score .me tagback_uuid.0 run data get entity @s UUID[0]
execute store result score .me tagback_uuid.1 run data get entity @s UUID[1]
execute at @s on attacker if score @s tagback_uuid.0 = .me tagback_uuid.0 if score @s tagback_uuid.1 = .me tagback_uuid.1 run playsound minecraft:item.shield.block player @a[distance=..10]
execute at @s on attacker if score @s tagback_uuid.0 = .me tagback_uuid.0 if score @s tagback_uuid.1 = .me tagback_uuid.1 run return run function main:message/tagged/no_tagbacks

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
execute if score .time_remaining timer <= .increase_timer settings run tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Increased timer to "},{"score":{"objective":"settings","name":".increase_timer"},"color":"green"},{"text":"s!","color":"green"}]
execute if score .time_remaining timer <= .increase_timer settings run scoreboard players operation .time_remaining timer = .increase_timer settings

# as victim
particle minecraft:block{block_state:"minecraft:purple_wool"} ~ ~ ~ ~ ~ ~ 0.1 10000
function main:message/tagged/infected_by_source
function c:item/source
tag @s add source
function main:module/disconnect/sync/marker

# as attacker
execute on attacker run tag @s remove source
execute on attacker run clear @s minecraft:popped_chorus_fruit[minecraft:custom_data={source:1b}]
execute on attacker run function main:module/disconnect/sync/marker
